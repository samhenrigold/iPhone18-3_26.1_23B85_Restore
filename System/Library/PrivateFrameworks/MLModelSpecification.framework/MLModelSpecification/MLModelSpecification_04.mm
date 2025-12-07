uint64_t MLProgram.NamedValueType.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  OUTLINED_FUNCTION_5_4();
  sub_25749FE04(v1, v2, &unk_25774F210);

  return sub_2577435F4();
}

uint64_t MLProgram.NamedValueType.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  OUTLINED_FUNCTION_5_4();
  sub_25749FE04(v0, v1, &unk_25774F210);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25749F538(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  sub_25749FE04(&qword_27F87A1C0, type metadata accessor for Proto_MILSpec_NamedValueType, &unk_25774F210);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t MLProgram.NamedValueType.customMirror.getter()
{
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for MLProgram.NamedValueType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  sub_25749FC64(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257743FF0;
  *(v10 + 32) = 1701667182;
  *(v10 + 40) = 0xE400000000000000;
  v11 = v0[1];
  v12 = MEMORY[0x277D837D0];
  *(v10 + 48) = *v0;
  *(v10 + 56) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = 1701869940;
  *(v10 + 88) = 0xE400000000000000;
  *(v10 + 120) = &type metadata for MLProgram.ValueType;

  MLProgram.NamedValueType.type.getter();
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v13);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t MLProgram.NamedValueType.debugDescription.getter()
{
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000015, 0x800000025777A0B0);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](0x203A65707974202CLL, 0xE800000000000000);
  MLProgram.NamedValueType.type.getter();
  sub_257743884();

  MEMORY[0x259C64E90](41, 0xE100000000000000);
  return 0;
}

uint64_t FeatureDescription.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1C8, &qword_2577457C0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FeatureType(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v18 = type metadata accessor for Proto_FeatureDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(v18 + 28);
  __swift_storeEnumTagSinglePayload(a2 + v19, 1, 1, v5);
  v20 = a1[1];
  *a2 = *a1;
  a2[1] = v20;

  MLProgram.NamedValueType.type.getter();
  FeatureType.init(_:)();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    OUTLINED_FUNCTION_6_4();
    return sub_2574695E4(v10, &qword_27F87A1C8, &qword_2577457C0);
  }

  else
  {
    sub_25749FD18(v10, v17);
    sub_25749FC64(v17, v15);
    sub_25768E090();
    OUTLINED_FUNCTION_6_4();
    sub_25749FCC0(v15, type metadata accessor for FeatureType);
    sub_25749FCC0(v17, type metadata accessor for FeatureType);
    sub_2574695E4(a2 + v19, &qword_27F879C38, &qword_257744550);
    sub_25749FD18(v2, a2 + v19);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
  }
}

uint64_t sub_25749FB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25749FBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MLProgram.NamedValueType(uint64_t a1)
{
  result = qword_27F87A1E0;
  if (!qword_27F87A1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25749FC64(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25749FCC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25749FD18(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25749FE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25749FE74(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_NamedValueType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_25749FCC0(v0, type metadata accessor for MLProgram.NamedValueType);
}

void NeuralNetwork.Layer.CropParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_21_3();
  type metadata accessor for NeuralNetwork.Border(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  NeuralNetwork.Layer.CropParameters.amounts.getter();
  if (OUTLINED_FUNCTION_23_2(v0) == 1)
  {
    sub_2574695E4(v0, &qword_27F87A1F0, &qword_2577458B0);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_2574A17E4(v0, v7, v9);
    v45 = NeuralNetwork.Border.leadingWidth.getter();
    v10 = sub_257743974();
    v12 = v11;
    sub_257469388();
    v8 = v13;
    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_5();
      v8 = v40;
    }

    OUTLINED_FUNCTION_10_6();
    v16[4] = 0xD000000000000013;
    v16[5] = v15;
    v16[6] = v10;
    v16[7] = v12;
    v45 = NeuralNetwork.Border.trailingHeight.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v17)
    {
      OUTLINED_FUNCTION_5_5();
      v8 = v41;
    }

    OUTLINED_FUNCTION_10_6();
    v19[4] = 0xD000000000000014;
    v19[5] = v18;
    v19[6] = &v45;
    v19[7] = v12;
    v45 = NeuralNetwork.Border.leadingWidth.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v17)
    {
      OUTLINED_FUNCTION_5_5();
      v8 = v42;
    }

    OUTLINED_FUNCTION_10_6();
    v21[4] = 0xD000000000000012;
    v21[5] = v20;
    v21[6] = &v45;
    v21[7] = v12;
    v45 = NeuralNetwork.Border.trailingWidth.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v17)
    {
      OUTLINED_FUNCTION_5_5();
      v8 = v43;
    }

    sub_2574A178C(v7, type metadata accessor for NeuralNetwork.Border);
    *(v8 + 16) = v14 + 1;
    v22 = (v8 + 32 * v14);
    v22[4] = 0xD000000000000013;
    v22[5] = 0x800000025777A130;
    v22[6] = &v45;
    v22[7] = v12;
  }

  v23 = *(NeuralNetwork.Layer.CropParameters.offset.getter() + 16);
  if (v23)
  {
    v44 = v8;
    v45 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_22_1();
    v24 = 32;
    v25 = v45;
    do
    {
      v26 = sub_257743974();
      v28 = v27;
      v45 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_257483754((v29 > 1), v30 + 1, 1);
        v25 = v45;
      }

      *(v25 + 16) = v30 + 1;
      v31 = v25 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v24 += 8;
      --v23;
    }

    while (v23);

    v8 = v44;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v45 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v32 = sub_257743604();
  v34 = v33;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_257469388();
    v8 = v38;
  }

  v36 = *(v8 + 16);
  v35 = *(v8 + 24);
  if (v36 >= v35 >> 1)
  {
    OUTLINED_FUNCTION_174(v35);
    sub_257469388();
    v8 = v39;
  }

  *(v8 + 16) = v36 + 1;
  v37 = (v8 + 32 * v36);
  v37[4] = 0x74657366664FLL;
  v37[5] = 0xE600000000000000;
  v37[6] = v32;
  v37[7] = v34;
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.CropParameters.amounts.getter()
{
  OUTLINED_FUNCTION_31();
  v22 = v1;
  v2 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  v8 = OUTLINED_FUNCTION_13(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
  sub_2574A172C(v0 + v14, v13, &qword_27F879AC8, &unk_257744010);
  v15 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v2);
  v17 = v22;
  sub_2574695E4(v13, &qword_27F879AC8, &unk_257744010);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v0 + v14, v11, &qword_27F879AC8, &unk_257744010);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      *v6 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
      {
        sub_2574695E4(v11, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_7();
      sub_2574A17E4(v11, v6, v18);
    }

    OUTLINED_FUNCTION_0_7();
    sub_2574A17E4(v6, v17, v19);
    v15 = 0;
  }

  v20 = type metadata accessor for NeuralNetwork.Border(0);
  __swift_storeEnumTagSinglePayload(v17, v15, 1, v20);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.CropParameters.offset.getter()
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
        v9 = OUTLINED_FUNCTION_174(v7);
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

uint64_t sub_2574A0630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2574A172C(a1, &v6 - v3, &qword_27F87A1F0, &qword_2577458B0);
  return NeuralNetwork.Layer.CropParameters.amounts.setter(v4);
}

uint64_t NeuralNetwork.Layer.CropParameters.amounts.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Border(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_2574695E4(a1, &qword_27F87A1F0, &qword_2577458B0);
    v12 = type metadata accessor for Proto_CropLayerParams(0);
    sub_2574695E4(v1 + *(v12 + 24), &qword_27F879AC8, &unk_257744010);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_2574A17E4(a1, v10, v17);
    sub_2574A17E4(v10, v2, type metadata accessor for Proto_BorderAmounts);
    v18 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
    sub_2574695E4(v1 + v18, &qword_27F879AC8, &unk_257744010);
    sub_2574A17E4(v2, v1 + v18, type metadata accessor for Proto_BorderAmounts);
    return __swift_storeEnumTagSinglePayload(v1 + v18, 0, 1, v4);
  }
}

void (*NeuralNetwork.Layer.CropParameters.amounts.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for NeuralNetwork.Border(0);
  v3[1] = v4;
  v21 = v4;
  OUTLINED_FUNCTION_4();
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[3] = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v3[4] = __swift_coroFrameAllocStub(v7);
  v20 = __swift_coroFrameAllocStub(v7);
  v3[5] = v20;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  OUTLINED_FUNCTION_13(v8);
  v9 = OUTLINED_FUNCTION_24_4();
  v3[6] = v9;
  v10 = OUTLINED_FUNCTION_24_4();
  v3[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  OUTLINED_FUNCTION_13(v11);
  v3[8] = OUTLINED_FUNCTION_24_4();
  v12 = OUTLINED_FUNCTION_24_4();
  v3[9] = v12;
  v13 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
  *(v3 + 20) = v13;
  sub_2574A172C(v1 + v13, v10, &qword_27F879AC8, &unk_257744010);
  v14 = 1;
  v15 = OUTLINED_FUNCTION_23_2(v10);
  sub_2574695E4(v10, &qword_27F879AC8, &unk_257744010);
  if (v15 != 1)
  {
    sub_2574A172C(v1 + v13, v9, &qword_27F879AC8, &unk_257744010);
    if (OUTLINED_FUNCTION_23_2(v9) == 1)
    {
      v16 = v20;
      *v20 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (OUTLINED_FUNCTION_23_2(v9) != 1)
      {
        sub_2574695E4(v9, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_7();
      v16 = v20;
      sub_2574A17E4(v9, v20, v17);
    }

    OUTLINED_FUNCTION_0_7();
    sub_2574A17E4(v16, v12, v18);
    v14 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v21);
  return sub_2574A0AE8;
}

void sub_2574A0AE8()
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
    sub_2574A172C((*v0)[9], v4, &qword_27F87A1F0, &qword_2577458B0);
    NeuralNetwork.Layer.CropParameters.amounts.setter(v4);
    sub_2574695E4(v2, &qword_27F87A1F0, &qword_2577458B0);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*v0)[9], 1, v1[1]);
    v11 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v12 = *v1;
      sub_2574695E4(v2, &qword_27F87A1F0, &qword_2577458B0);
      sub_2574695E4(v12 + v11, &qword_27F879AC8, &unk_257744010);
      v13 = 1;
    }

    else
    {
      v14 = v1[4];
      v15 = v1[2];
      v16 = *v1;
      OUTLINED_FUNCTION_2_6();
      sub_2574A17E4(v2, v15, v17);
      sub_2574A17E4(v15, v14, type metadata accessor for Proto_BorderAmounts);
      sub_2574695E4(v16 + v11, &qword_27F879AC8, &unk_257744010);
      sub_2574A17E4(v14, v16 + v11, type metadata accessor for Proto_BorderAmounts);
      v13 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v13, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v18);
}

void NeuralNetwork.Layer.CropParameters.offset.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_257484698(0, v4, 0);
    v5 = 32;
    v6 = v11;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_174(v8);
        sub_257484698(v10, v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
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

void (*NeuralNetwork.Layer.CropParameters.offset.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.CropParameters.offset.getter();
  return sub_2574A0E10;
}

void sub_2574A0E10(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.CropParameters.offset.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.CropParameters.offset.setter(*a1);
  }
}

void NeuralNetwork.Layer.ResizeBilinearParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_21_3();
  type metadata accessor for Proto_SamplingMode(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_ResizeBilinearLayerParams(v7);
  sub_2574A172C(v1 + *(v8 + 24), v0, &qword_27F87A208, &unk_2577458B8);
  OUTLINED_FUNCTION_35_0(v0);
  if (v9)
  {
    *v2 = 0;
    *(v2 + 8) = 1;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v9)
    {
      sub_2574695E4(v0, &qword_27F87A208, &unk_2577458B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_2574A17E4(v0, v2, v10);
  }

  v11 = *v2;
  v12 = *(v2 + 8);
  OUTLINED_FUNCTION_8_3();
  if (v12 == 1)
  {
    v13 = 0xEF73746E696F7064;
    v14 = 0x6E45206E67696C41;
    switch(v11)
    {
      case 1:
        break;
      case 2:
        v13 = 0xE800000000000000;
        v14 = 0x656C706D61737055;
        break;
      case 3:
        v13 = 0x800000025777A150;
        v14 = 0xD000000000000018;
        break;
      default:
        v14 = 0xD000000000000016;
        v13 = 0x800000025777A170;
        break;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_4(v15, xmmword_257743FF0);
  v16 = *v1;
  v17 = *(*v1 + 16);
  if (v17)
  {
    v29 = v15;
    v30 = MEMORY[0x277D84F90];
    sub_257483754(0, v17, 0);
    v18 = v16 + 32;
    do
    {
      v18 += 8;
      v19 = sub_257743974();
      v21 = v20;
      v23 = *(v30 + 16);
      v22 = *(v30 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_174(v22);
        sub_257483754(v25, v23 + 1, 1);
      }

      *(v30 + 16) = v23 + 1;
      v24 = v30 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      --v17;
    }

    while (v17);
    v15 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v26 = sub_257743604();
  v28 = v27;

  v15[3].n128_u64[0] = v26;
  v15[3].n128_u64[1] = v28;
  v15[4].n128_u64[0] = 1701080909;
  v15[4].n128_u64[1] = 0xE400000000000000;
  v15[5].n128_u64[0] = v14;
  v15[5].n128_u64[1] = v13;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A11F4@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  a1(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  a2(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void NeuralNetwork.Layer.CropResizeParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  type metadata accessor for Proto_SamplingMode(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = type metadata accessor for Proto_CropResizeLayerParams(v8);
  sub_2574A172C(&v2[*(v9 + 32)], v6, &qword_27F87A208, &unk_2577458B8);
  OUTLINED_FUNCTION_35_0(v6);
  if (v10)
  {
    *v1 = 0;
    *(v1 + 8) = 1;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v6);
    if (!v10)
    {
      sub_2574695E4(v6, &qword_27F87A208, &unk_2577458B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_2574A17E4(v6, v1, v11);
  }

  v12 = *v1;
  v13 = *(v1 + 8);
  OUTLINED_FUNCTION_8_3();
  if (v13 == 1)
  {
    v14 = 0xEF73746E696F7064;
    v15 = 0x6E45206E67696C41;
    switch(v12)
    {
      case 1:
        break;
      case 2:
        v14 = 0xE800000000000000;
        v15 = 0x656C706D61737055;
        break;
      case 3:
        v14 = 0x800000025777A150;
        v15 = 0xD000000000000018;
        break;
      default:
        v14 = 0x800000025777A170;
        v15 = 0xD000000000000016;
        break;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_9_4(v16, xmmword_257744E70);
  v17 = *v2;
  v18 = *(*v2 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v34 = v16;
    v35 = v15;
    v36 = v14;
    v37 = v2;
    v39 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_22_1();
    v19 = v39;
    v20 = (v17 + 32);
    do
    {
      v21 = *v20++;
      v38 = v21;
      v22 = sub_257743974();
      v24 = v23;
      v39 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_257483754((v25 > 1), v26 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      --v18;
    }

    while (v18);
    v14 = v36;
    v2 = v37;
    v16 = v34;
    v15 = v35;
  }

  v39 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v28 = sub_257743604();
  v30 = v29;

  v16[3].n128_u64[0] = v28;
  v16[3].n128_u64[1] = v30;
  v16[4].n128_u64[0] = 0xD000000000000016;
  v16[4].n128_u64[1] = 0x800000025777A190;
  v31 = 1702195828;
  if (!v2[8])
  {
    v31 = 0x65736C6166;
  }

  v32 = 0xE500000000000000;
  if (v2[8])
  {
    v32 = 0xE400000000000000;
  }

  v16[5].n128_u64[0] = v31;
  v16[5].n128_u64[1] = v32;
  v16[6].n128_u64[0] = 1701080909;
  v16[6].n128_u64[1] = 0xE400000000000000;
  v16[7].n128_u64[0] = v15;
  v16[7].n128_u64[1] = v14;
  strcpy(&v16[8], "Spatial Scale");
  v16[8].n128_u16[7] = -4864;
  v16[9].n128_u64[0] = sub_257743794();
  v16[9].n128_u64[1] = v33;
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.CropResizeParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  type metadata accessor for Proto_CropResizeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_SamplingMode(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Proto_BoxCoordinatesMode(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

unint64_t sub_2574A16C8()
{
  result = qword_27F87A200;
  if (!qword_27F87A200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87A1F8, &qword_257770B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A200);
  }

  return result;
}

uint64_t sub_2574A172C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2574A178C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574A17E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2574A191C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574A1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_5_5()
{

  sub_257469388();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2574A178C(v0, type metadata accessor for Proto_SamplingMode);
}

__n128 *OUTLINED_FUNCTION_9_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x5320746567726154;
  result[2].n128_u64[1] = 0xEB00000000657A69;
  return result;
}

char *OUTLINED_FUNCTION_22_1()
{

  return sub_257483754(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void *OUTLINED_FUNCTION_24_4()
{

  return __swift_coroFrameAllocStub(v0);
}

__n128 *NeuralNetwork.Layer.SequenceRepeatParameters.propertyDescriptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_8_4(v0);
  OUTLINED_FUNCTION_5_6(v1, xmmword_2577442B0);
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v2;
  return v1;
}

BOOL static NeuralNetwork.Layer.SequenceRepeatParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    type metadata accessor for Proto_SequenceRepeatLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    v4 = sub_2574A2CE0(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ReorganizeDataParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = *v0;
    v2 = 0xEE00656361705320;
    v3 = 0x6F74206874706544;
    if (*v0 != 1)
    {
      v3 = 0x6853206C65786950;
      v2 = 0xED0000656C666675;
    }

    if (v1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x6F74206563617053;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xEE00687470654420;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257743FF0;
  *(v6 + 32) = 1701080909;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  *(v6 + 64) = 0x6953206B636F6C42;
  *(v6 + 72) = 0xEA0000000000657ALL;
  *(v6 + 80) = sub_257743974();
  *(v6 + 88) = v7;
  return v6;
}

uint64_t NeuralNetwork.Layer.ReorganizeDataParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  type metadata accessor for Proto_ReorganizeDataLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t static NeuralNetwork.Layer.ReorganizeDataParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16))
  {
    type metadata accessor for Proto_ReorganizeDataLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    v8 = sub_2574A2CE0(v6, v7, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v8))
    {
      return 1;
    }
  }

  return 0;
}

__n128 *NeuralNetwork.Layer.TileParameters.propertyDescriptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_8_4(v0);
  OUTLINED_FUNCTION_5_6(v1, xmmword_2577442B0);
  NeuralNetwork.Layer.TileParameters.repetitions.getter();
  v2 = MEMORY[0x259C64F20]();
  v4 = v3;

  v1[3].n128_u64[0] = v2;
  v1[3].n128_u64[1] = v4;
  return v1;
}

uint64_t NeuralNetwork.Layer.TileParameters.repetitions.getter()
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

void NeuralNetwork.Layer.TileParameters.repetitions.setter(uint64_t a1)
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

void (*NeuralNetwork.Layer.TileParameters.repetitions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.TileParameters.repetitions.getter();
  return sub_2574A2294;
}

void sub_2574A2294(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.TileParameters.repetitions.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.TileParameters.repetitions.setter(*a1);
  }
}

uint64_t NeuralNetwork.Layer.ReverseParameters.propertyDescriptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = OUTLINED_FUNCTION_8_4(v1);
  *(v2 + 16) = xmmword_2577442B0;
  *(v2 + 32) = 0x65737265766552;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D839B0]);
  *(v2 + 56) = v3;
  return v2;
}

uint64_t sub_2574A23D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A2438(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (v7(*v5, *v6))
  {
    a4(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    v10 = sub_2574A2CE0(v8, v9, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v10))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ReverseSequenceParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257743FF0;
  *(v0 + 32) = 0x7841206863746142;
  *(v0 + 40) = 0xEA00000000007369;
  *(v0 + 48) = sub_257743974();
  *(v0 + 56) = v1;
  strcpy((v0 + 64), "Sequence Axis");
  *(v0 + 78) = -4864;
  *(v0 + 80) = sub_257743974();
  *(v0 + 88) = v2;
  return v0;
}

uint64_t NeuralNetwork.Layer.ReverseSequenceParameters.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_ReverseSeqLayerParams(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.ReverseSequenceParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v2 + 8) == *(v3 + 8))
    {
      type metadata accessor for Proto_ReverseSeqLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_8();
      v6 = sub_2574A2CE0(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *NeuralNetwork.Layer.FillStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v1[3].n128_u64[0] = OUTLINED_FUNCTION_6_6(v1, xmmword_257743FF0);
  v1[3].n128_u64[1] = v2;
  strcpy(&v1[4], "Target Shape");
  v1[4].n128_u8[13] = 0;
  v1[4].n128_u16[7] = -5120;
  v3 = *(v0 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = v3 + 32;
    do
    {
      v5 += 8;
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  v1[5].n128_u64[0] = v12;
  v1[5].n128_u64[1] = v14;
  return v1;
}

uint64_t NeuralNetwork.Layer.FillStaticParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_FillStaticLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.FillStaticParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (sub_257487374())
    {
      type metadata accessor for Proto_FillStaticLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_8();
      v4 = sub_2574A2CE0(v2, v3, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v4))
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *_s20MLModelSpecification13NeuralNetworkV5LayerV18FillLikeParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_8_4(v0);
  v1[3].n128_u64[0] = OUTLINED_FUNCTION_6_6(v1, xmmword_2577442B0);
  v1[3].n128_u64[1] = v2;
  return v1;
}

uint64_t sub_2574A29B4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A2A0C(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    v2(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    v5 = sub_2574A2CE0(v3, v4, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2574A2CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574A3028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{

  return sub_257743644();
}

__n128 *OUTLINED_FUNCTION_5_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6974697465706552;
  result[2].n128_u64[1] = 0xEB00000000736E6FLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x65756C6156;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{

  return swift_allocObject();
}

void static NeuralNetwork.Layer.branch(name:inputName:ifBranch:elseBranch:)()
{
  OUTLINED_FUNCTION_31();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for NeuralNetwork(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = v6;
  *(v24 + 40) = v4;
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(v31, v22);
  sub_2574A172C(v32, v17, &qword_27F87A320, &qword_257745D18);

  NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v9 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(MEMORY[0x277D84F90]);
  sub_2574897E0(v13);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_25752846C();
  sub_2574A4644(v0, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.branch(ifBranch:elseBranch:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_31_0();
  v9 = type metadata accessor for NeuralNetwork(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(a1, v13);
  sub_2574A172C(a2, v3, &qword_27F87A320, &qword_257745D18);
  NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for Proto_NeuralNetwork(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for NeuralNetwork(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(v4, v19);
  sub_2574A469C(v19, v14);
  sub_2574695E4(v6 + v20, &qword_27F87A328, &unk_257752BB0);
  sub_2574A469C(v14, v6 + v20);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  sub_2574A172C(v2, v0, &qword_27F87A320, &qword_257745D18);
  NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v0);
  sub_2574695E4(v2, &qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_5_7();
  sub_2574A4644(v4, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BranchParameters.ifBranch.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_6();
  v6 = type metadata accessor for Proto_NeuralNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Proto_BranchLayerParams(0);
  sub_2574A172C(v1 + *(v11 + 20), v2, &qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_155(v2, 1, v6);
  if (v12)
  {
    OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_NetworkUpdateParameters(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_155(v2, 1, v6);
    if (!v12)
    {
      sub_2574695E4(v2, &qword_27F87A328, &unk_257752BB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v2, v10);
  }

  OUTLINED_FUNCTION_0_9();
  return sub_2574A469C(v10, a1);
}

uint64_t sub_2574A3840(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A4744(a1, v4);
  return NeuralNetwork.Layer.BranchParameters.ifBranch.setter(v4);
}

uint64_t NeuralNetwork.Layer.BranchParameters.ifBranch.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_NeuralNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_2574A469C(a1, v6 - v5);
  v8 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  sub_2574695E4(v1 + v8, &qword_27F87A328, &unk_257752BB0);
  sub_2574A469C(v7, v1 + v8);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
}

void NeuralNetwork.Layer.BranchParameters.ifBranch.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_NeuralNetwork(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NeuralNetwork(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  *(v3 + 14) = v15;
  sub_2574A172C(v0 + v15, v6, &qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_NetworkUpdateParameters(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v16)
    {
      sub_2574695E4(v6, &qword_27F87A328, &unk_257752BB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v6, v10);
  }

  OUTLINED_FUNCTION_0_9();
  sub_2574A469C(v10, v14);
  OUTLINED_FUNCTION_35();
}

void sub_2574A3B94()
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
    sub_2574A4744((*v0)[6], v2);
    OUTLINED_FUNCTION_6_7();
    sub_2574A469C(v2, v4);
    sub_2574695E4(v8 + v1, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_5_7();
    sub_2574A4644(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
    sub_2574A469C(v3, v4);
    sub_2574695E4(v8 + v1, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v4, v8 + v1);
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

void NeuralNetwork.Layer.BranchParameters.elseBranch.getter()
{
  OUTLINED_FUNCTION_31();
  v24 = v2;
  v3 = type metadata accessor for Proto_NeuralNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
  sub_2574A172C(v0 + v12, v11, &qword_27F87A328, &unk_257752BB0);
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v3);
  v15 = v24;
  sub_2574695E4(v11, &qword_27F87A328, &unk_257752BB0);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v0 + v12, v9, &qword_27F87A328, &unk_257752BB0);
    OUTLINED_FUNCTION_155(v9, 1, v3);
    if (v16)
    {
      v17 = MEMORY[0x277D84F90];
      *v1 = MEMORY[0x277D84F90];
      *(v1 + 8) = v17;
      *(v1 + 16) = 0;
      *(v1 + 24) = 1;
      *(v1 + 32) = 0;
      *(v1 + 40) = 1;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_NetworkUpdateParameters(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      OUTLINED_FUNCTION_155(v9, 1, v3);
      if (!v16)
      {
        sub_2574695E4(v9, &qword_27F87A328, &unk_257752BB0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      sub_2574A469C(v9, v1);
    }

    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v1, v15);
    v13 = 0;
  }

  v22 = type metadata accessor for NeuralNetwork(0);
  __swift_storeEnumTagSinglePayload(v15, v13, 1, v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A3F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2574A172C(a1, &v6 - v3, &qword_27F87A320, &qword_257745D18);
  return NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v4);
}

uint64_t NeuralNetwork.Layer.BranchParameters.elseBranch.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_NeuralNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for NeuralNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_155(a1, 1, v10);
  if (v11)
  {
    sub_2574695E4(a1, &qword_27F87A320, &qword_257745D18);
    v12 = type metadata accessor for Proto_BranchLayerParams(0);
    sub_2574695E4(v1 + *(v12 + 24), &qword_27F87A328, &unk_257752BB0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    sub_2574A469C(a1, v2);
    sub_2574A469C(v2, v8);
    v16 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
    sub_2574695E4(v1 + v16, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v8, v1 + v16);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
  }
}

void (*NeuralNetwork.Layer.BranchParameters.elseBranch.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for Proto_NeuralNetwork(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for NeuralNetwork(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_13(v6);
  v3[4] = __swift_coroFrameAllocStub(*(v7 + 64));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[5] = __swift_coroFrameAllocStub(v10);
  v3[6] = __swift_coroFrameAllocStub(v10);
  NeuralNetwork.Layer.BranchParameters.elseBranch.getter();
  return sub_2574A4244;
}

void sub_2574A4244(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  if (a2)
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[2];
    sub_2574A172C((*a1)[6], v4, &qword_27F87A320, &qword_257745D18);
    NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v4);
    sub_2574695E4(v3, &qword_27F87A320, &qword_257745D18);
  }

  else
  {
    OUTLINED_FUNCTION_155((*a1)[6], 1, v2[3]);
    if (v7)
    {
      v8 = *v2;
      sub_2574695E4(v3, &qword_27F87A320, &qword_257745D18);
      v12 = v8 + *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
      sub_2574695E4(v12, &qword_27F87A328, &unk_257752BB0);
      v13 = 1;
    }

    else
    {
      v9 = v2[4];
      v10 = v2[2];
      v11 = *v2;
      OUTLINED_FUNCTION_7_4();
      sub_2574A469C(v3, v9);
      sub_2574A469C(v9, v10);
      v12 = v11 + *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
      sub_2574695E4(v12, &qword_27F87A328, &unk_257752BB0);
      sub_2574A469C(v10, v12);
      v13 = 0;
    }

    v4 = v2[5];
    v3 = v2[6];
    v5 = v2[4];
    v6 = v2[2];
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v2[1]);
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

void NeuralNetwork.Layer.BranchParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for NeuralNetwork.Layer.BranchParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_2574A4744(v0, v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257743FF0;
  *(v11 + 32) = 0x68636E6172426669;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 72) = type metadata accessor for NeuralNetwork(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
  NeuralNetwork.Layer.BranchParameters.ifBranch.getter(boxed_opaque_existential_0);
  *(v11 + 80) = 0x6E61724265736C65;
  *(v11 + 88) = 0xEA00000000006863;
  *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  __swift_allocate_boxed_opaque_existential_0((v11 + 96));
  NeuralNetwork.Layer.BranchParameters.elseBranch.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A4644(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574A469C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BranchParameters(uint64_t a1)
{
  result = qword_27F87A338;
  if (!qword_27F87A338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2574A4744(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2574A47A4()
{
  result = qword_27F87A330;
  if (!qword_27F87A330)
  {
    type metadata accessor for Proto_BranchLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A330);
  }

  return result;
}

uint64_t sub_2574A4824(uint64_t a1)
{
  result = type metadata accessor for Proto_BranchLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_11_5(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
}

uint64_t type metadata accessor for Proto_ArrayFeatureExtractor(uint64_t a1)
{
  result = qword_281537920;
  if (!qword_281537920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2574A49A0(uint64_t a1)
{
  sub_2574A4A24();
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A4A24()
{
  if (!qword_27F87A348)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A348);
    }
  }
}

uint64_t sub_2574A4A74@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ArrayFeatureExtractor(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A4AB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7E50);
  __swift_project_value_buffer(v0, qword_27F8E7E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "extractIndex";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574A4C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743354();
    }
  }

  return result;
}

uint64_t sub_2574A4C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_2577434A4(), !v4))
  {
    type metadata accessor for Proto_ArrayFeatureExtractor(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A4D1C(uint64_t a1, uint64_t a2)
{
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_ArrayFeatureExtractor(0);
  sub_2577431B4();
  sub_2574A53D0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_2574A4DC8()
{
  sub_257743A14();
  type metadata accessor for Proto_ArrayFeatureExtractor(0);
  sub_2574A53D0(&qword_27F87A360, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745DF4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574A4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574A4EE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574A4FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A53D0(&qword_27F87A370, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745E84);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A5028@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878D40 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574A50D0(uint64_t a1)
{
  v2 = sub_2574A53D0(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745EBC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A5140(uint64_t a1, uint64_t a2)
{
  sub_2574A53D0(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor, &unk_257745EBC);

  return sub_257743424();
}

uint64_t sub_2574A51BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257743A14();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2574A53D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2574A5460(uint64_t a1)
{
  sub_2574A54E4(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A54E4(uint64_t a1)
{
  if (!qword_281537500)
  {
    type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281537500);
    }
  }
}

uint64_t sub_2574A555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t sub_2574A55D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_9Tm);
}

uint64_t sub_2574A563C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2574A57B0(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Proto_GLMRegressor.PostEvaluationTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574A5860(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574A588C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A58CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A420, &qword_257746428);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = *(v11 + 56);
  sub_2574A7868(a1, &v23 - v12);
  sub_2574A7868(a2, &v13[v14]);
  sub_2574A77BC();
  sub_2574A77BC();
  v15 = *v9;
  v16 = *v7;
  if (v9[8])
  {
    v15 = *v9 != 0;
  }

  if (v7[8] == 1)
  {
    if (v16)
    {
      if (v15 != 1)
      {
LABEL_6:
        sub_2574A7764(v7, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
        v17 = OUTLINED_FUNCTION_205();
        sub_2574A7764(v17, v18);
        return 0;
      }
    }

    else if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_6;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_10();
  sub_2574A756C(v19, v20, MEMORY[0x277D216D0]);
  v21 = sub_257743644();
  sub_2574A7764(v7, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  sub_2574A7764(v9, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  return (v21 & 1) != 0;
}

BOOL sub_2574A5B1C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2574A5B30(uint64_t a1@<X8>)
{
  sub_2574A5B08();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2574A5B74(uint64_t a1@<X8>)
{
  sub_2574A5B08();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_2574A5BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A7814();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574A5C30()
{
  result = qword_27F87A390;
  if (!qword_27F87A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A390);
  }

  return result;
}

unint64_t sub_2574A5C88()
{
  result = qword_27F87A398;
  if (!qword_27F87A398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87A3A0, qword_257746060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A398);
  }

  return result;
}

unint64_t sub_2574A5CF0()
{
  result = qword_27F87A3A8;
  if (!qword_27F87A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A3A8);
  }

  return result;
}

unint64_t sub_2574A5D48()
{
  result = qword_27F87A3B0;
  if (!qword_27F87A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A3B0);
  }

  return result;
}

uint64_t sub_2574A5D9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A5E08()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 20)
    {
      v5 = OUTLINED_FUNCTION_205();
      sub_2574A5E68(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_2574A5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  v6 = MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A400, &qword_257746408);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_257487308(a1);
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A388, &unk_257745F50);
  }

  else
  {
    sub_2574A77BC();
    sub_2574A77BC();
    sub_2574695E4(v18, &qword_27F87A400, &qword_257746408);
    sub_2574A77BC();
    sub_2574A77BC();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577462D8);
  v20 = v27;
  sub_2577433D4();
  if (v20)
  {
    v21 = v18;
    return sub_2574695E4(v21, &qword_27F87A400, &qword_257746408);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87A400, &qword_257746408);
    v21 = v16;
    return sub_2574695E4(v21, &qword_27F87A400, &qword_257746408);
  }

  sub_2574A77BC();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v18, &qword_27F87A400, &qword_257746408);
  v23 = v25;
  sub_2574695E4(v25, &qword_27F87A388, &unk_257745F50);
  sub_2574A77BC();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t sub_2574A630C()
{
  OUTLINED_FUNCTION_5_8();
  result = sub_2574A6388(v0, v4, v3, v2);
  if (!v1)
  {
    type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A6388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A388, &unk_257745F50);
  }

  sub_2574A77BC();
  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577462D8);
  sub_257743574();
  return sub_2574A7764(v10, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
}

uint64_t sub_2574A6564()
{
  OUTLINED_FUNCTION_267();
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A418, &qword_257746420);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = *(v9 + 56);
  sub_257487308(v1);
  sub_257487308(v0);
  OUTLINED_FUNCTION_65(v11);
  if (v13)
  {
    OUTLINED_FUNCTION_65(&v11[v12]);
    if (v13)
    {
      sub_2574695E4(v11, &qword_27F87A388, &unk_257745F50);
LABEL_12:
      type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_10();
      v18 = sub_2574A756C(v16, v17, MEMORY[0x277D216D0]);
      v14 = OUTLINED_FUNCTION_4_2(v18);
      return v14 & 1;
    }

    goto LABEL_9;
  }

  sub_257487308(v11);
  OUTLINED_FUNCTION_65(&v11[v12]);
  if (v13)
  {
    sub_2574A7764(v7, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
LABEL_9:
    sub_2574695E4(v11, &qword_27F87A418, &qword_257746420);
    goto LABEL_10;
  }

  sub_2574A77BC();
  v15 = sub_2574A58CC(v7, v4);
  sub_2574A7764(v4, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
  sub_2574A7764(v7, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
  sub_2574695E4(v11, &qword_27F87A388, &unk_257745F50);
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_10:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_2574A685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A756C(&qword_27F87A3F8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint, &unk_2577462A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A68FC(uint64_t a1)
{
  v2 = sub_2574A756C(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint, &unk_257746350);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A69C4(uint64_t a1, uint64_t a2)
{
  sub_2574A756C(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint, &unk_257746350);

  return sub_257743424();
}

uint64_t sub_2574A6A44()
{
  result = MEMORY[0x259C64E90](0x646E756F532ELL, 0xE600000000000000);
  qword_27F8E7E80 = 0xD000000000000024;
  *algn_27F8E7E88 = 0x800000025777A1E0;
  return result;
}

uint64_t sub_2574A6AC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2577435B4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  sub_257743584();
  OUTLINED_FUNCTION_4();
  (*(v15 + 104))(v13, v14);
  return sub_257743594();
}

uint64_t sub_2574A6C34()
{
  v2 = v0;
  OUTLINED_FUNCTION_5_8();
  v4 = v3;
  while (1)
  {
    result = sub_257743234();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574A6C98(v4, v2);
    }
  }

  return result;
}

uint64_t sub_2574A6D00()
{
  OUTLINED_FUNCTION_5_8();
  if (!*v0 || (sub_2574A7814(), result = sub_2577434C4(), !v1))
  {
    type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A6DB8()
{
  OUTLINED_FUNCTION_267();
  v2 = *v0;
  v3 = *v1;
  if (*(v0 + 8))
  {
    v2 = *v0 != 0;
  }

  if (*(v1 + 8) == 1)
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

  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_10();
  v7 = sub_2574A756C(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2574A6E70(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574A756C(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574A6EFC()
{
  if (qword_27F878D50 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E7E80;

  return v0;
}

uint64_t sub_2574A6F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_2574A6FD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_2574A706C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A756C(&qword_27F87A408, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577461B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A710C(uint64_t a1)
{
  v2 = sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577462D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A71D4(uint64_t a1, uint64_t a2)
{
  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577462D8);

  return sub_257743424();
}

uint64_t sub_2574A7254()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EA8);
  __swift_project_value_buffer(v0, qword_27F8E7EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SOUND_VERSION_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SOUND_VERSION_1";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A7440@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2577435B4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2574A756C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574A7764(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574A77BC()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

unint64_t sub_2574A7814()
{
  result = qword_27F87A410;
  if (!qword_27F87A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A410);
  }

  return result;
}

uint64_t sub_2574A7868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574A7950(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574A7BA8(319, &qword_281537738, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A7A7C(uint64_t a1)
{
  sub_2574A7BA8(319, &qword_27F87A438, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_2574A7BA8(319, &qword_281537738, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574A7BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2574A7C54(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2574A7CF8(uint64_t a1)
{
  sub_2574A7BA8(319, &qword_27F87A450, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574A7DBC@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A7DF4@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v1 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574A7E50@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A7E94@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  type metadata accessor for Proto_BayesianProbitRegressor(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v1 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574A7F20()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EC0);
  __swift_project_value_buffer(v0, qword_27F8E7EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257746430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "numberOfFeatures";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bias";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "regressionInputFeatureName";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "optimismInputFeatureName";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "samplingScaleInputFeatureName";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "samplingTruncationInputFeatureName";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "meanOutputFeatureName";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "varianceOutputFeatureName";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 22;
  *v26 = "pessimisticProbabilityOutputFeatureName";
  *(v26 + 1) = 39;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 23;
  *v28 = "sampledProbabilityOutputFeatureName";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A8320()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433A4();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_6_8();
        sub_2574A844C(v10, v11, v12, v13);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574AA310(v3, v4, v5, v6, v7, &qword_27F87A458, v8, v9);
        break;
      case 10:
      case 11:
      case 12:
      case 13:
      case 20:
      case 21:
      case 22:
      case 23:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574A844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_BayesianProbitRegressor(0);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);
  return sub_2577433D4();
}

uint64_t sub_2574A8500()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_11_6();
    result = sub_2574A86E4(v5, v6, v7, v8);
    if (!v0)
    {
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
        sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, &unk_257746898);
        OUTLINED_FUNCTION_9_5();
        sub_257743564();
      }

      OUTLINED_FUNCTION_1_6();
      if (v11)
      {
        OUTLINED_FUNCTION_4_3(v9, v10, 10);
      }

      OUTLINED_FUNCTION_1_6();
      if (v14)
      {
        OUTLINED_FUNCTION_4_3(v12, v13, 11);
      }

      OUTLINED_FUNCTION_1_6();
      if (v17)
      {
        OUTLINED_FUNCTION_4_3(v15, v16, 12);
      }

      OUTLINED_FUNCTION_1_6();
      if (v20)
      {
        OUTLINED_FUNCTION_4_3(v18, v19, 13);
      }

      OUTLINED_FUNCTION_1_6();
      if (v23)
      {
        OUTLINED_FUNCTION_4_3(v21, v22, 20);
      }

      OUTLINED_FUNCTION_1_6();
      if (v26)
      {
        OUTLINED_FUNCTION_4_3(v24, v25, 21);
      }

      OUTLINED_FUNCTION_1_6();
      if (v29)
      {
        OUTLINED_FUNCTION_4_3(v27, v28, 22);
      }

      OUTLINED_FUNCTION_1_6();
      if (v32)
      {
        OUTLINED_FUNCTION_4_3(v30, v31, 23);
      }

      type metadata accessor for Proto_BayesianProbitRegressor(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A86E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  sub_2574AADEC(a1 + *(v11 + 60), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879D98, &unk_257746440);
  }

  sub_2574AAE5C(v7, v10);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);
  sub_257743574();
  return sub_2574AAEC0(v10);
}

uint64_t _s20MLModelSpecification36BayesianProbitRegressorConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = (&v36 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_59;
  }

  v14 = *(type metadata accessor for Proto_BayesianProbitRegressor(0) + 60);
  v15 = *(v10 + 48);
  sub_2574AADEC(a1 + v14, v13);
  sub_2574AADEC(a2 + v14, &v13[v15]);
  OUTLINED_FUNCTION_42_0(v13);
  if (!v29)
  {
    sub_2574AADEC(v13, v9);
    OUTLINED_FUNCTION_42_0(&v13[v15]);
    if (!v29)
    {
      sub_2574AAE5C(&v13[v15], v6);
      if (*v9 == *v6 && v9[1] == v6[1])
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_11();
        sub_2574AA9B4(v32, v33, MEMORY[0x277D216D0]);
        v34 = sub_257743644();
        sub_2574AAEC0(v6);
        if (v34)
        {
          sub_2574AAEC0(v9);
          goto LABEL_6;
        }
      }

      else
      {
        sub_2574AAEC0(v6);
      }

      sub_2574AAEC0(v9);
      v30 = &qword_27F879D98;
      v31 = &unk_257746440;
      goto LABEL_58;
    }

    sub_2574AAEC0(v9);
LABEL_51:
    v30 = &qword_27F879DA0;
    v31 = &qword_2577446C0;
LABEL_58:
    sub_2574695E4(v13, v30, v31);
LABEL_59:
    v28 = 0;
    return v28 & 1;
  }

  OUTLINED_FUNCTION_42_0(&v13[v15]);
  if (!v29)
  {
    goto LABEL_51;
  }

LABEL_6:
  sub_2574695E4(v13, &qword_27F879D98, &unk_257746440);
  sub_25747BC64();
  if ((v16 & 1) == 0)
  {
    goto LABEL_59;
  }

  v17 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v18 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v18 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v19 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v19 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v20 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v20 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v21 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v21 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v22 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v22 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v23 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v23 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v24 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v24 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  v27 = sub_2574AA9B4(v25, v26, MEMORY[0x277D216D0]);
  v28 = OUTLINED_FUNCTION_19_3(v27);
  return v28 & 1;
}

uint64_t sub_2574A8C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574A8CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574A8DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4D8, type metadata accessor for Proto_BayesianProbitRegressor, &unk_257746770);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A8E48(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor, &unk_257746910);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A8F10(uint64_t a1, uint64_t a2)
{
  sub_2574AA9B4(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor, &unk_257746910);

  return sub_257743424();
}

uint64_t sub_2574A8FB8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EE8);
  __swift_project_value_buffer(v0, qword_27F8E7EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mean";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precision";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A9180()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }
  }

  return result;
}

uint64_t sub_2574A91DC()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
    {
      type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A926C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  v4 = sub_2574AA9B4(v2, v3, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v4) & 1;
}

uint64_t sub_2574A9384(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4F0, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_257746680);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A9424(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A94EC(uint64_t a1, uint64_t a2)
{
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);

  return sub_257743424();
}

uint64_t sub_2574A956C()
{
  result = MEMORY[0x259C64E90](0xD000000000000013, 0x800000025777A260);
  qword_27F8E7F00 = 0xD00000000000001DLL;
  *algn_27F8E7F08 = 0x800000025777A240;
  return result;
}

uint64_t sub_2574A95E0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F10);
  __swift_project_value_buffer(v0, qword_27F8E7F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureValue";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "featureWeight";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A97A8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574A980C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433A4();
    }
  }

  return result;
}

uint64_t sub_2574A980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);
  return sub_2577433D4();
}

uint64_t sub_2574A98C0()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_11_6();
    result = sub_2574A9944(v4, v5, v6, v7);
    if (!v0)
    {
      type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A9944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  sub_2574AADEC(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879D98, &unk_257746440);
  }

  sub_2574AAE5C(v7, v10);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, &unk_2577467A8);
  sub_257743574();
  return sub_2574AAEC0(v10);
}

uint64_t _s20MLModelSpecification36BayesianProbitRegressorConfigurationV18FeatureValueWeightV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v14 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0) + 24);
  v15 = *(v10 + 48);
  sub_2574AADEC(a1 + v14, v13);
  sub_2574AADEC(a2 + v14, &v13[v15]);
  OUTLINED_FUNCTION_42_0(v13);
  if (v20)
  {
    OUTLINED_FUNCTION_42_0(&v13[v15]);
    if (v20)
    {
      sub_2574695E4(v13, &qword_27F879D98, &unk_257746440);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_2574AADEC(v13, v9);
  OUTLINED_FUNCTION_42_0(&v13[v15]);
  if (v20)
  {
    sub_2574AAEC0(v9);
LABEL_11:
    v21 = &qword_27F879DA0;
    v22 = &qword_2577446C0;
LABEL_17:
    sub_2574695E4(v13, v21, v22);
LABEL_18:
    v19 = 0;
    return v19 & 1;
  }

  sub_2574AAE5C(&v13[v15], v6);
  if (*v9 != *v6 || v9[1] != v6[1])
  {
    sub_2574AAEC0(v6);
    sub_2574AAEC0(v9);
    v21 = &qword_27F879D98;
    v22 = &unk_257746440;
    goto LABEL_17;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v23, v24, MEMORY[0x277D216D0]);
  v25 = sub_257743644();
  sub_2574AAEC0(v6);
  sub_2574AAEC0(v9);
  sub_2574695E4(v13, &qword_27F879D98, &unk_257746440);
  if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  v18 = sub_2574AA9B4(v16, v17, MEMORY[0x277D216D0]);
  v19 = OUTLINED_FUNCTION_19_3(v18);
  return v19 & 1;
}

uint64_t sub_2574A9E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4E8, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, &unk_2577465D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A9EB0(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, &unk_257746820);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A9F78(uint64_t a1, uint64_t a2)
{
  sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, &unk_257746820);

  return sub_257743424();
}

uint64_t sub_2574AA028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000025777A240;
  return result;
}

uint64_t sub_2574AA094()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F38);
  __swift_project_value_buffer(v0, qword_27F8E7F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weights";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AA25C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574AA310(v3, v4, v5, v6, v7, &qword_27F87A468, v8, v9);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433A4();
    }
  }

  return result;
}

uint64_t sub_2574AA310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_2574AA9B4(a6, a7, a8);
  return sub_2577433C4();
}

uint64_t sub_2574AA3AC()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0), sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, &unk_257746820), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), !v1))
    {
      type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574AA490(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_25747B56C();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  v5 = sub_2574AA9B4(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_2574AA528(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574AA9B4(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AA5DC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;

  return v7;
}

uint64_t sub_2574AA634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_2574AA6A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_2574AA73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4E0, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, &unk_257746520);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AA7DC(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, &unk_257746898);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AA8A4(uint64_t a1, uint64_t a2)
{
  sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, &unk_257746898);

  return sub_257743424();
}

uint64_t sub_2574AA9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574AADEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574AAE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574AAEC0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_257743534();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_257743234();
}

void sub_2574AB0BC(uint64_t a1)
{
  sub_2574AB158(319);
  if (v1 <= 0x3F)
  {
    sub_2574AB1D0();
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574AB158(uint64_t a1)
{
  if (!qword_2815379F8)
  {
    type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2815379F8);
    }
  }
}

void sub_2574AB1D0()
{
  if (!qword_27F87A500)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A500);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2574AB240(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2574AB280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_2574AB2E0(uint64_t a1)
{
  result = type metadata accessor for Proto_StringToInt64Map(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64ToStringMap(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2574AB354(uint64_t a1, uint64_t a2)
{
  v44[1] = type metadata accessor for Proto_Int64ToStringMap(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for Proto_StringToInt64Map(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A550, &qword_257746CF0);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v44 - v21;
  v23 = *(v20 + 56);
  sub_2574AD634(a1, v44 - v21);
  sub_2574AD634(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574AD634(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD57C(&v22[v23], v7, type metadata accessor for Proto_Int64ToStringMap);
      sub_257476B20(*v15, *v7);
      if (v24)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_3_6();
        sub_2574AD44C(v25, v26, MEMORY[0x277D216D0]);
        v27 = sub_257743644();
        OUTLINED_FUNCTION_1_7();
        sub_2574AD524(v7, v28);
        if (v27)
        {
          OUTLINED_FUNCTION_1_7();
          v30 = v15;
LABEL_13:
          sub_2574AD524(v30, v29);
          OUTLINED_FUNCTION_2_8();
          sub_2574AD524(v22, v37);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_7();
        sub_2574AD524(v7, v39);
      }

      OUTLINED_FUNCTION_1_7();
      v41 = v15;
LABEL_18:
      sub_2574AD524(v41, v40);
      OUTLINED_FUNCTION_2_8();
      sub_2574AD524(v22, v43);
      return 0;
    }

    OUTLINED_FUNCTION_1_7();
    v32 = v15;
  }

  else
  {
    sub_2574AD634(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574AD57C(&v22[v23], v11, type metadata accessor for Proto_StringToInt64Map);
      if (sub_257487370())
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_3_6();
        sub_2574AD44C(v33, v34, MEMORY[0x277D216D0]);
        v35 = sub_257743644();
        OUTLINED_FUNCTION_0_12();
        sub_2574AD524(v11, v36);
        if (v35)
        {
          OUTLINED_FUNCTION_0_12();
          v30 = v17;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_12();
        sub_2574AD524(v11, v42);
      }

      OUTLINED_FUNCTION_0_12();
      v41 = v17;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_12();
    v32 = v17;
  }

  sub_2574AD524(v32, v31);
  sub_2574695E4(v22, &qword_27F87A550, &qword_257746CF0);
  return 0;
}

uint64_t sub_2574AB6EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_257743994();
  }
}

uint64_t sub_2574AB750@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AB7B4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F50);
  __swift_project_value_buffer(v0, qword_27F8E7F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "stringToInt64Map";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "int64ToStringMap";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "strValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "int64Value";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AB9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        OUTLINED_FUNCTION_11_6();
        sub_2574AC580(v18, v19, v20, v21);
        break;
      case 2:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_2574ABFAC(v10, v11, v12, v13);
        break;
      case 101:
        OUTLINED_FUNCTION_11_6();
        sub_2574AC4A4(v14, v15, v16, v17);
        break;
      case 1:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_2574ABAB4(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_2574ABAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringToInt64Map(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A540, &qword_257746CE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87A4F8, &unk_257746A50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    sub_2574AD57C(v12, v18, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    sub_2574AD57C(v18, v16, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD524(v16, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A540, &qword_257746CE0);
      sub_2574AD57C(v16, v9, type metadata accessor for Proto_StringToInt64Map);
      sub_2574AD57C(v9, v24, type metadata accessor for Proto_StringToInt64Map);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574AD44C(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map, &unk_257748404);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A540, &qword_257746CE0);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A540, &qword_257746CE0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A540, &qword_257746CE0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A540, &qword_257746CE0);
  }

  v28 = v35;
  sub_2574AD57C(v22, v35, type metadata accessor for Proto_StringToInt64Map);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87A540, &qword_257746CE0);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD57C(v28, v30, type metadata accessor for Proto_StringToInt64Map);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574ABFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64ToStringMap(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A548, &qword_257746CE8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87A4F8, &unk_257746A50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    sub_2574AD57C(v12, v18, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    sub_2574AD57C(v18, v16, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A548, &qword_257746CE8);
      sub_2574AD57C(v16, v9, type metadata accessor for Proto_Int64ToStringMap);
      sub_2574AD57C(v9, v24, type metadata accessor for Proto_Int64ToStringMap);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574AD524(v16, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    }
  }

  sub_2574AD44C(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap, &unk_25774829C);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A548, &qword_257746CE8);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A548, &qword_257746CE8);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A548, &qword_257746CE8);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A548, &qword_257746CE8);
  }

  v28 = v35;
  sub_2574AD57C(v22, v35, type metadata accessor for Proto_Int64ToStringMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87A548, &qword_257746CE8);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD57C(v28, v30, type metadata accessor for Proto_Int64ToStringMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574AC4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_257743384();
  if (v4)
  {
  }

  if (v11)
  {
    v7 = a2 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
    if (*(v7 + 16) == 255)
    {
      v8 = -1;
    }

    else
    {
      sub_257743244();
      v8 = *(v7 + 16);
    }

    v9 = *v7;
    v10 = *(v7 + 8);
    *v7 = 0;
    *(v7 + 8) = v11;
    *(v7 + 16) = 0;
    return sub_25746706C(v9, v10, v8);
  }

  return result;
}

uint64_t sub_2574AC64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_2574AD5D8(v3, &v25 - v7, &qword_27F87A4F8, &unk_257746A50);
  v9 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_5_10();
    sub_2574AC9C8(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_10();
    sub_2574AC7B4(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_2_8();
  result = sub_2574AD524(v8, v18);
  if (!v4)
  {
LABEL_10:
    if (*(v3 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20) + 16) == 255)
    {
      return sub_257743194();
    }

    v20 = OUTLINED_FUNCTION_5_10();
    result = (v24 & 1) != 0 ? sub_2574ACC58(v20, v21, v22, v23) : sub_2574ACBDC(v20, v21, v22, v23);
    if (!v4)
    {
      return sub_257743194();
    }
  }

  return result;
}

uint64_t sub_2574AC7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringToInt64Map(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87A4F8, &unk_257746A50);
  v11 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574AD57C(v7, v10, type metadata accessor for Proto_StringToInt64Map);
      sub_2574AD44C(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map, &unk_257748404);
      sub_257743574();
      return sub_2574AD524(v10, type metadata accessor for Proto_StringToInt64Map);
    }

    result = sub_2574AD524(v7, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AC9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64ToStringMap(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87A4F8, &unk_257746A50);
  v11 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD57C(v7, v10, type metadata accessor for Proto_Int64ToStringMap);
      sub_2574AD44C(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap, &unk_25774829C);
      sub_257743574();
      return sub_2574AD524(v10, type metadata accessor for Proto_Int64ToStringMap);
    }

    result = sub_2574AD524(v7, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574ACBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v6 = *(a1 + *(result + 20) + 16);
  if (v6 != 255 && (v6 & 1) == 0)
  {
    return sub_257743534();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574ACC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v6 = *(a1 + *(result + 20) + 16);
  if (v6 != 255 && (v6 & 1) != 0)
  {
    return sub_257743504();
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification31CategoricalMappingConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A558, &qword_257746CF8);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = *(v14 + 56);
  sub_2574AD5D8(a1, &v33 - v15, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD5D8(a2, &v16[v17], &qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_65(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_65(&v16[v17]);
    if (v18)
    {
      sub_2574695E4(v16, &qword_27F87A4F8, &unk_257746A50);
      goto LABEL_13;
    }

LABEL_9:
    sub_2574695E4(v16, &qword_27F87A558, &qword_257746CF8);
    goto LABEL_10;
  }

  sub_2574AD5D8(v16, v11, &qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_65(&v16[v17]);
  if (v18)
  {
    OUTLINED_FUNCTION_2_8();
    sub_2574AD524(v11, v19);
    goto LABEL_9;
  }

  sub_2574AD57C(&v16[v17], v7, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  v22 = sub_2574AB354(v11, v7);
  sub_2574AD524(v7, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  sub_2574AD524(v11, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  sub_2574695E4(v16, &qword_27F87A4F8, &unk_257746A50);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 16);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 16);
  if (v25 == 255)
  {
    if (v27 == 255)
    {
LABEL_27:
      sub_2577431B4();
      OUTLINED_FUNCTION_3_6();
      sub_2574AD44C(v31, v32, MEMORY[0x277D216D0]);
      v20 = sub_257743644();
      return v20 & 1;
    }

LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  if (v27 == 255)
  {
    goto LABEL_10;
  }

  v28 = *v24;
  v29 = *v26;
  if ((v25 & 1) == 0)
  {
    if ((v27 & 1) == 0)
    {
      v30 = v28 == v29 && v24[1] == v26[1];
      if (v30 || (sub_257743994() & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

  v20 = 0;
  if ((v27 & 1) != 0 && v28 == v29)
  {
    goto LABEL_27;
  }

  return v20 & 1;
}

uint64_t sub_2574ACFE8()
{
  sub_257743A14();
  type metadata accessor for Proto_CategoricalMapping(0);
  sub_2574AD44C(&qword_27F87A518, type metadata accessor for Proto_CategoricalMapping, &unk_257746B9C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AD090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574AD104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574AD1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AD44C(&qword_27F87A528, type metadata accessor for Proto_CategoricalMapping, &unk_257746C2C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AD224@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7F50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574AD2CC(uint64_t a1)
{
  v2 = sub_2574AD44C(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping, &unk_257746C64);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AD33C(uint64_t a1, uint64_t a2)
{
  sub_2574AD44C(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping, &unk_257746C64);

  return sub_257743424();
}

uint64_t sub_2574AD44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574AD524(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574AD57C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2574AD5D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_2574AD634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Proto_ClassConfidenceThresholding(uint64_t a1)
{
  result = qword_2815375D0;
  if (!qword_2815375D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2574AD784(uint64_t a1)
{
  sub_2574AD808(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AD808(uint64_t a1)
{
  if (!qword_27F87A560)
  {
    type metadata accessor for Proto_PrecisionRecallCurve(255);
    v1 = sub_257743774();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87A560);
    }
  }
}

uint64_t sub_2574AD860@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AD8A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F68);
  __swift_project_value_buffer(v0, qword_27F8E7F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 100;
  *v4 = "precisionRecallCurves";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574ADA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      sub_2574ADA74(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2574ADA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574AE0B8(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve, &unk_25774847C);
  return sub_2577433C4();
}

uint64_t sub_2574ADB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_PrecisionRecallCurve(0), sub_2574AE0B8(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve, &unk_25774847C), result = sub_257743564(), !v4))
  {
    type metadata accessor for Proto_ClassConfidenceThresholding(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574ADCAC()
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  sub_2574AE0B8(&qword_27F87A570, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746E4C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574ADD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AE0B8(&qword_27F87A588, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746D9C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574ADE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7F68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574ADEA8(uint64_t a1)
{
  v2 = sub_2574AE0B8(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746DD4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574ADF18(uint64_t a1, uint64_t a2)
{
  sub_2574AE0B8(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746DD4);

  return sub_257743424();
}

uint64_t sub_2574AE0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2574AE148(uint64_t a1)
{
  sub_2574AE1CC();
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AE1CC()
{
  if (!qword_27F87A5A8)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A5A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2574AE244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_2574AE284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void sub_2574AE320(uint64_t a1)
{
  sub_2574AE3B4(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AE3B4(uint64_t a1)
{
  if (!qword_27F87A5B0)
  {
    type metadata accessor for Proto_CustomModel.CustomModelParamValue(255);
    v1 = sub_2577435E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87A5B0);
    }
  }
}

uint64_t sub_2574AE41C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_22;
      }

      if (a1 == a4 && a2 == a5)
      {
        v6 = 1;
        return v6 & 1;
      }

      return sub_257743994();
    case 2:
      v6 = a6 == 2 && a1 == a4;
      return v6 & 1;
    case 3:
      v6 = a6 == 3 && a1 == a4;
      return v6 & 1;
    case 4:
      v7 = a6 == 4;
      v6 = a4 ^ a1 ^ 1;
      goto LABEL_4;
    case 5:
      if (a6 == 5)
      {
        JUMPOUT(0x259C648D0);
      }

LABEL_22:
      v6 = 0;
      return v6 & 1;
    default:
      v6 = *&a1 == *&a4;
      v7 = a6 == 0;
LABEL_4:
      if (!v7)
      {
        v6 = 0;
      }

      return v6 & 1;
  }
}

uint64_t sub_2574AE510@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AE550@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  a1[2] = sub_2577435D4();
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  type metadata accessor for Proto_CustomModel(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AE5BC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F80);
  __swift_project_value_buffer(v0, qword_27F8E7F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 10;
  *v6 = "className";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 30;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 40;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AE7C8()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 40:
        goto LABEL_9;
      case 30:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574AE850(v3, v4, v5, v6);
        break;
      case 10:
LABEL_9:
        sub_257743394();
        break;
    }
  }
}

uint64_t sub_2574AE850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_25774710C);
  sub_2574AFE8C(&qword_27F87A5C8, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_257747044);
  return sub_257743214();
}

uint64_t sub_2574AE948()
{
  v2 = v1;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (result = OUTLINED_FUNCTION_4_3(v3, v4, 10), (v2 = v1) == 0))
  {
    if (!*(*(v0 + 16) + 16) || (sub_257743184(), type metadata accessor for Proto_CustomModel.CustomModelParamValue(0), sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_25774710C), sub_2574AFE8C(&qword_27F87A5C8, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_257747044), v1 = v2, result = sub_257743434(), !v2))
    {
      OUTLINED_FUNCTION_1_6();
      if (!v9 || (result = OUTLINED_FUNCTION_4_3(v7, v8, 40), !v1))
      {
        type metadata accessor for Proto_CustomModel(0);
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_2574AEAC0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  sub_257477E10(a1[2], a2[2]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_CustomModel(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_7();
  v9 = sub_2574AFE8C(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2574AEBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574AEC20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574AECE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AFE8C(&qword_27F87A5F8, type metadata accessor for Proto_CustomModel, &unk_2577471FC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AED88(uint64_t a1)
{
  v2 = sub_2574AFE8C(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel, &unk_257747234);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AEE50(uint64_t a1, uint64_t a2)
{
  sub_2574AFE8C(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel, &unk_257747234);

  return sub_257743424();
}

uint64_t sub_2574AEED0()
{
  result = MEMORY[0x259C64E90](0xD000000000000016, 0x800000025777A500);
  qword_27F8E7F98 = 0xD000000000000011;
  unk_27F8E7FA0 = 0x800000025777A4C0;
  return result;
}

uint64_t sub_2574AEF3C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7FA8);
  __swift_project_value_buffer(v0, qword_27F8E7FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "doubleValue";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "stringValue";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "intValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 40;
  *v14 = "longValue";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 50;
  *v16 = "BOOLValue";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 60;
  *v18 = "bytesValue";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AF200()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 60:
        v21 = OUTLINED_FUNCTION_6_8();
        sub_2574AF608(v21, v22, v23, v24);
        break;
      case 20:
        v17 = OUTLINED_FUNCTION_6_8();
        sub_2574AF2F8(v17, v18, v19, v20);
        break;
      case 30:
        v9 = OUTLINED_FUNCTION_6_8();
        sub_2574AF3C8(v9, v10, v11, v12);
        break;
      case 40:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 3;
LABEL_14:
        sub_2574AF484(v3, v4, v5, v6, v7, v8);
        break;
      case 50:
        v13 = OUTLINED_FUNCTION_6_8();
        sub_2574AF54C(v13, v14, v15, v16);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 0;
        goto LABEL_14;
    }
  }
}

uint64_t sub_2574AF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_257743384();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 16) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_257743244();
      v7 = *(a2 + 16);
    }

    v8 = *a2;
    v9 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = 1;
    return sub_2574872D0(v8, v9, v7);
  }

  return result;
}

uint64_t sub_2574AF484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    if (*(a2 + 16) == 255)
    {
      v11 = -1;
    }

    else
    {
      sub_257743244();
      v11 = *(a2 + 16);
    }

    v12 = *a2;
    v13 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = a6;
    return sub_2574872D0(v12, v13, v11);
  }

  return result;
}

uint64_t sub_2574AF6FC()
{
  OUTLINED_FUNCTION_5_8();
  switch(*(v0 + 16))
  {
    case 0:
      v2 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF7D8(v2);
      goto LABEL_8;
    case 1:
      v10 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF818(v10, v11, v12, v13);
      goto LABEL_8;
    case 2:
      v5 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF85C(v5);
      goto LABEL_8;
    case 3:
      v6 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF898(v6, v7, v8, v9);
      goto LABEL_8;
    case 4:
      v4 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF8D4(v4);
      goto LABEL_8;
    case 5:
      v14 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF914(v14, v15, v16, v17);
LABEL_8:
      if (!v1)
      {
        goto LABEL_9;
      }

      return result;
    default:
LABEL_9:
      type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
      return sub_257743194();
  }
}

uint64_t sub_2574AF7D8(uint64_t result)
{
  if (!*(result + 16))
  {
    return sub_257743524();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AF818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 1)
  {
    return sub_257743534();
  }

  __break(1u);
  return result;
}

unsigned int *sub_2574AF85C(unsigned int *result)
{
  if (*(result + 16) == 2)
  {
    return sub_2577434F4();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AF898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 3)
  {
    return sub_257743504();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AF8D4(uint64_t result)
{
  if (*(result + 16) == 4)
  {
    return sub_2577434B4();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AF914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 5)
  {
    v5 = *result;
    v4 = *(result + 8);
    sub_2574872AC(*result, v4, 5);
    sub_2577434D4();
    return sub_2574872D0(v5, v4, 5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2574AF9A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a1 + 16) != 255)
  {
    if (v6 != 255)
    {
      v7 = OUTLINED_FUNCTION_2_9();
      sub_257487298(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_4_4();
      sub_257487298(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_2_9();
      v16 = sub_2574AE41C(v13, v14, v15, v5, v4, v6);
      v17 = OUTLINED_FUNCTION_4_4();
      sub_2574872D0(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_9();
      sub_2574872D0(v20, v21, v22);
      if (v16)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    v23 = OUTLINED_FUNCTION_2_9();
    sub_257487298(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_4_4();
    sub_257487298(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_2_9();
    sub_2574872D0(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_4_4();
    sub_2574872D0(v32, v33, v34);
    return 0;
  }

  if (v6 != 255)
  {
    goto LABEL_6;
  }

  sub_257487298(*a1, v2, 255);
  sub_257487298(v5, v4, 255);
  sub_2574872D0(v3, v2, 255);
LABEL_9:
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_7();
  v38 = sub_2574AFE8C(v36, v37, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v38) & 1;
}

uint64_t sub_2574AFAF0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574AFE8C(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AFB7C()
{
  if (qword_27F878DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E7F98;

  return v0;
}

uint64_t sub_2574AFC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AFE8C(&qword_27F87A600, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_2577470D4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AFCB4(uint64_t a1)
{
  v2 = sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_25774710C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AFD7C(uint64_t a1, uint64_t a2)
{
  sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue, &unk_25774710C);

  return sub_257743424();
}

uint64_t sub_2574AFE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574B0084(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257486798(result, a2);
  }

  return result;
}

void sub_2574B016C(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574B01F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B01F4(uint64_t a1)
{
  if (!qword_27F87A630)
  {
    type metadata accessor for Proto_FloatVector(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87A630);
    }
  }
}

void sub_2574B0344()
{
  v0 = OUTLINED_FUNCTION_22_2();
  sub_2574B0568(v0, v1, v2, v3, v4);
  if (v6 <= 0x3F)
  {
    v18 = v5;
    v7 = sub_2577431B4();
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5(v7, v8, v9, v10, v11, v12, v13, v14, v15, *v16, *&v16[4], 0, v17, v18, v19);
    }
  }
}

void sub_2574B03E8()
{
  v0 = OUTLINED_FUNCTION_22_2();
  sub_2574B0924(v0, v1, v2);
  if (v4 <= 0x3F)
  {
    v16 = v3;
    v5 = sub_2577431B4();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5(v5, v6, v7, v8, v9, v10, v11, v12, v13, *v14, *&v14[4], 0, v15, v16, v17);
    }
  }
}

void sub_2574B0568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_2577435E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2574B0758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2577431B4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_24_5();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void __swift_store_extra_inhabitant_index_18Tm()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_2577431B4();
    v3 = OUTLINED_FUNCTION_24_5();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

void sub_2574B0924(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_257743774();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2574B0970@<X0>(uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_2577435D4();
  a4(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B09C8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B0A10@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B0A50@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v4 = v3[5];
  v5 = type metadata accessor for Proto_FloatVector(0);
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v6 = OUTLINED_FUNCTION_14_1(v3[6]);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_14_1(v3[7]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_14_1(v3[8]);

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_2574B0BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7E8, type metadata accessor for Proto_StringToInt64Map, &unk_2577483CC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B0C8C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map, &unk_257748404);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B0D54(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map, &unk_257748404);

  return sub_257743424();
}

uint64_t sub_2574B0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = v7;
  while (1)
  {
    result = sub_257743234();
    if (v8 || (v18 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574B15EC(a1, v13, a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t sub_2574B0FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7F0, type metadata accessor for Proto_Int64ToStringMap, &unk_257748264);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B105C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap, &unk_25774829C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1124(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap, &unk_25774829C);

  return sub_257743424();
}

uint64_t sub_2574B11FC()
{
  OUTLINED_FUNCTION_2_7();
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_23_3();
    sub_257743184();
    v2(0);
    OUTLINED_FUNCTION_9_5();
    result = sub_257743444();
    if (v1)
    {
      return result;
    }

    v3 = v5;
  }

  v3(0);
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_2574B13AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7F8, type metadata accessor for Proto_StringToDoubleMap, &unk_2577480FC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B144C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap, &unk_257748134);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1514(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap, &unk_257748134);

  return sub_257743424();
}

uint64_t sub_2574B15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  a5(0);
  a6(0);
  return sub_257743224();
}

uint64_t sub_2574B168C()
{
  OUTLINED_FUNCTION_2_7();
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_23_3();
    sub_257743174();
    v2(0);
    OUTLINED_FUNCTION_9_5();
    result = sub_257743444();
    if (v1)
    {
      return result;
    }

    v3 = v5;
  }

  v3(0);
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_2574B183C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A800, type metadata accessor for Proto_Int64ToDoubleMap, &unk_257747F94);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B18DC(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap, &unk_257747FCC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B19A4(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap, &unk_257747FCC);

  return sub_257743424();
}

uint64_t sub_2574B1B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A808, type metadata accessor for Proto_StringVector, &unk_257747E2C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B1BD0(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1C98(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);

  return sub_257743424();
}

uint64_t sub_2574B1D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v5 + 16) || (OUTLINED_FUNCTION_12_8(), result = v8(), !v6))
  {
    a5(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574B1E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A810, type metadata accessor for Proto_Int64Vector, &unk_257747CC4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B1F18(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1FE0(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);

  return sub_257743424();
}

uint64_t sub_2574B216C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A818, type metadata accessor for Proto_FloatVector, &unk_257747B5C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B220C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B22D4(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);

  return sub_257743424();
}

uint64_t sub_2574B2460(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A820, type metadata accessor for Proto_DoubleVector, &unk_2577479F4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B2500(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector, &unk_257747A2C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B25C8(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector, &unk_257747A2C);

  return sub_257743424();
}

uint64_t sub_2574B2694()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743504(), !v1))
    {
      type metadata accessor for Proto_Int64Range(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574B2714(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Proto_Int64Range(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  v4 = sub_2574B4E00(v2, v3, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v4) & 1;
}

uint64_t sub_2574B2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A828, type metadata accessor for Proto_Int64Range, &unk_25774788C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B28D8(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range, &unk_2577478C4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B29A0(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range, &unk_2577478C4);

  return sub_257743424();
}

uint64_t sub_2574B2A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2577435B4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2577442B0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  sub_257743584();
  OUTLINED_FUNCTION_4();
  (*(v13 + 104))(v11, v12);
  return sub_257743594();
}

uint64_t sub_2574B2B9C()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    result = sub_257743234();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v0(v2, v4, v3);
    }
  }

  return result;
}

uint64_t sub_2574B2C00(void *a1, void *a2, uint64_t (*a3)(void, void), void (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  v7 = sub_2574B4E00(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2574B2D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A830, type metadata accessor for Proto_Int64Set, &unk_257747724);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B2DC4(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set, &unk_25774775C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B2E8C(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set, &unk_25774775C);

  return sub_257743424();
}

uint64_t sub_2574B2F58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257743FF0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "minValue";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_257743584();
  OUTLINED_FUNCTION_4();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "maxValue";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v13();
  return sub_257743594();
}

uint64_t sub_2574B3114()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    result = sub_257743234();
    if (v1 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v7 = v2 + 8;
LABEL_8:
      v0(v7, v4, v3);
    }

    else if (result == 1)
    {
      v7 = v2;
      goto LABEL_8;
    }
  }
}

uint64_t sub_2574B3188()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), result = sub_257743524(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_9_5(), result = sub_257743524(), !v1))
    {
      type metadata accessor for Proto_DoubleRange(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574B3220(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Proto_DoubleRange(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  v4 = sub_2574B4E00(v2, v3, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v4) & 1;
}

uint64_t sub_2574B3344(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A838, type metadata accessor for Proto_DoubleRange, &unk_2577475BC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B33E4(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A698, type metadata accessor for Proto_DoubleRange, &unk_2577475F4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B34AC(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A698, type metadata accessor for Proto_DoubleRange, &unk_2577475F4);

  return sub_257743424();
}

uint64_t sub_2574B352C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E80C8);
  __swift_project_value_buffer(v0, qword_27F8E80C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "precisionValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precisionConfidenceThresholds";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "recallValues";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recallConfidenceThresholds";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574B3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_6_8();
        sub_2574B3820(v6, v7, v8, v9);
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_6_8();
        sub_2574B38D4(v18, v19, v20, v21);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_6_8();
        sub_2574B3988(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_6_8();
        sub_2574B3A3C(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574B3820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  return sub_2577433D4();
}

uint64_t sub_2574B38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  return sub_2577433D4();
}

uint64_t sub_2574B3988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  return sub_2577433D4();
}

uint64_t sub_2574B3A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  return sub_2577433D4();
}

uint64_t sub_2574B3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_4_5();
  result = sub_2574B3B60(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = OUTLINED_FUNCTION_4_5();
    sub_2574B3D00(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_4_5();
    sub_2574B3EA0(v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_4_5();
    sub_2574B4040(v17, v18, v19, v20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574B3B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_FloatVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v11 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v7, v10);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  sub_257743574();
  return sub_2574B5C0C(v10);
}

uint64_t sub_2574B3D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_FloatVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v7, v10);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  sub_257743574();
  return sub_2574B5C0C(v10);
}

uint64_t sub_2574B3EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_FloatVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v11 + 28), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v7, v10);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  sub_257743574();
  return sub_2574B5C0C(v10);
}

uint64_t sub_2574B4040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_FloatVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v11 + 32), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v7, v10);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector, &unk_257747B94);
  sub_257743574();
  return sub_2574B5C0C(v10);
}

uint64_t _s20MLModelSpecification20PrecisionRecallCurveV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FloatVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  v85 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_167();
  v87 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  v89 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  v13 = (&v85 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_25_0();
  v86 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_167();
  v88 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  v91 = v19;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v20);
  v22 = (&v85 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A840, &qword_257748538);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v90 = v25;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_167();
  v92 = v27;
  OUTLINED_FUNCTION_158();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v85 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  v34 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v93 = a1;
  v94 = v34;
  v35 = *(v34 + 20);
  v36 = v23;
  v37 = *(v23 + 48);
  sub_2574B5B38(a1 + v35, v33);
  v38 = a2 + v35;
  v39 = a2;
  sub_2574B5B38(v38, &v33[v37]);
  OUTLINED_FUNCTION_6_9(v33);
  if (v53)
  {
    OUTLINED_FUNCTION_6_9(&v33[v37]);
    if (v53)
    {
      sub_2574695E4(v33, &qword_27F87A618, &unk_257776600);
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_2574B5B38(v33, v22);
  OUTLINED_FUNCTION_6_9(&v33[v37]);
  if (v53)
  {
    sub_2574B5C0C(v22);
LABEL_24:
    v54 = &qword_27F87A840;
    v55 = &qword_257748538;
LABEL_25:
    v56 = v33;
LABEL_44:
    sub_2574695E4(v56, v54, v55);
LABEL_45:
    v52 = 0;
    return v52 & 1;
  }

  sub_2574B5BA8(&v33[v37], v13);
  v57 = sub_257479B60(*v22, *v13);
  if ((v57 & 1) == 0)
  {
    sub_2574B5C0C(v13);
    sub_2574B5C0C(v22);
    v54 = &qword_27F87A618;
    v55 = &unk_257776600;
    goto LABEL_25;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v58, v59, MEMORY[0x277D216D0]);
  v60 = sub_257743644();
  sub_2574B5C0C(v13);
  sub_2574B5C0C(v22);
  sub_2574695E4(v33, &qword_27F87A618, &unk_257776600);
  if ((v60 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_6:
  v40 = v93;
  v41 = v94[6];
  v42 = v36;
  v43 = *(v36 + 48);
  sub_2574B5B38(v93 + v41, v31);
  sub_2574B5B38(a2 + v41, &v31[v43]);
  OUTLINED_FUNCTION_6_9(v31);
  if (v53)
  {
    OUTLINED_FUNCTION_6_9(&v31[v43]);
    v44 = v92;
    if (!v53)
    {
      goto LABEL_33;
    }

    sub_2574695E4(v31, &qword_27F87A618, &unk_257776600);
  }

  else
  {
    v61 = v91;
    sub_2574B5B38(v31, v91);
    OUTLINED_FUNCTION_6_9(&v31[v43]);
    v44 = v92;
    if (v62)
    {
      v63 = v61;
LABEL_32:
      sub_2574B5C0C(v63);
LABEL_33:
      v54 = &qword_27F87A840;
      v55 = &qword_257748538;
LABEL_34:
      v56 = v31;
      goto LABEL_44;
    }

    v64 = v89;
    sub_2574B5BA8(&v31[v43], v89);
    v65 = sub_257479B60(*v61, *v64);
    if ((v65 & 1) == 0)
    {
      sub_2574B5C0C(v64);
      v73 = v61;
      goto LABEL_48;
    }

    sub_2577431B4();
    OUTLINED_FUNCTION_0_13();
    sub_2574B4E00(v66, v67, MEMORY[0x277D216D0]);
    v68 = sub_257743644();
    sub_2574B5C0C(v64);
    sub_2574B5C0C(v61);
    sub_2574695E4(v31, &qword_27F87A618, &unk_257776600);
    if ((v68 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v45 = v94[7];
  v46 = v4;
  v47 = *(v42 + 48);
  sub_2574B5B38(v40 + v45, v44);
  sub_2574B5B38(v39 + v45, v44 + v47);
  OUTLINED_FUNCTION_69(v44, 1);
  if (v53)
  {
    OUTLINED_FUNCTION_69(v44 + v47, 1);
    v31 = v90;
    if (v53)
    {
      v70 = v46;
      sub_2574695E4(v44, &qword_27F87A618, &unk_257776600);
      goto LABEL_16;
    }

    goto LABEL_42;
  }

  v69 = v88;
  sub_2574B5B38(v44, v88);
  v70 = v46;
  OUTLINED_FUNCTION_69(v44 + v47, 1);
  v31 = v90;
  if (v71)
  {
    sub_2574B5C0C(v69);
LABEL_42:
    v54 = &qword_27F87A840;
    v55 = &qword_257748538;
LABEL_43:
    v56 = v44;
    goto LABEL_44;
  }

  v74 = v87;
  sub_2574B5BA8(v44 + v47, v87);
  v75 = sub_257479B60(*v69, *v74);
  if ((v75 & 1) == 0)
  {
    sub_2574B5C0C(v74);
    sub_2574B5C0C(v69);
    v54 = &qword_27F87A618;
    v55 = &unk_257776600;
    goto LABEL_43;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v76, v77, MEMORY[0x277D216D0]);
  v78 = sub_257743644();
  sub_2574B5C0C(v74);
  sub_2574B5C0C(v69);
  sub_2574695E4(v44, &qword_27F87A618, &unk_257776600);
  if ((v78 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  v48 = v94[8];
  v49 = *(v42 + 48);
  sub_2574B5B38(v40 + v48, v31);
  sub_2574B5B38(v39 + v48, &v31[v49]);
  if (__swift_getEnumTagSinglePayload(v31, 1, v70) != 1)
  {
    v79 = v86;
    sub_2574B5B38(v31, v86);
    OUTLINED_FUNCTION_69(&v31[v49], 1);
    if (!v53)
    {
      v80 = v85;
      sub_2574B5BA8(&v31[v49], v85);
      v81 = sub_257479B60(*v79, *v80);
      if (v81)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_13();
        sub_2574B4E00(v82, v83, MEMORY[0x277D216D0]);
        v84 = sub_257743644();
        sub_2574B5C0C(v80);
        sub_2574B5C0C(v79);
        sub_2574695E4(v31, &qword_27F87A618, &unk_257776600);
        if ((v84 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      sub_2574B5C0C(v80);
      v73 = v79;
LABEL_48:
      sub_2574B5C0C(v73);
      v54 = &qword_27F87A618;
      v55 = &unk_257776600;
      goto LABEL_34;
    }

    v63 = v79;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_69(&v31[v49], 1);
  if (!v53)
  {
    goto LABEL_33;
  }

  sub_2574695E4(v31, &qword_27F87A618, &unk_257776600);
LABEL_20:
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v50, v51, MEMORY[0x277D216D0]);
  v52 = sub_257743644();
  return v52 & 1;
}

uint64_t sub_2574B49C0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574B4E00(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574B4A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2577431B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2574B4AD0(uint64_t a1)
{
  v3 = sub_2577431B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2574B4B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7E0, type metadata accessor for Proto_PrecisionRecallCurve, &unk_2577474CC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B4C28(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve, &unk_25774847C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B4CF0(uint64_t a1, uint64_t a2)
{
  sub_2574B4E00(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve, &unk_25774847C);

  return sub_257743424();
}

uint64_t sub_2574B4E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574B5B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B5BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FloatVector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B5C0C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_FloatVector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_2574B2B9C();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

void sub_2574B5DE0(uint64_t a1)
{
  sub_2574B5E64(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B5E64(uint64_t a1)
{
  if (!qword_281537CE0)
  {
    type metadata accessor for Proto_DictVectorizer.OneOf_Map(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281537CE0);
    }
  }
}

uint64_t sub_2574B5EDC(uint64_t a1)
{
  result = type metadata accessor for Proto_StringVector(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64Vector(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2574B5F50(uint64_t a1, uint64_t a2)
{
  v43[1] = type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (v43 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A888, &qword_257748710);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v43 - v21;
  v23 = *(v20 + 56);
  sub_2574B7C74(a1, v43 - v21);
  sub_2574B7C74(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574B7C74(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7C18(&v22[v23], v7, type metadata accessor for Proto_Int64Vector);
      if (sub_257487374())
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_3_8();
        sub_2574B7AE8(v24, v25, MEMORY[0x277D216D0]);
        v26 = sub_257743644();
        OUTLINED_FUNCTION_1_8();
        sub_2574B7BC0(v7, v27);
        if (v26)
        {
          OUTLINED_FUNCTION_1_8();
          v29 = v15;
LABEL_13:
          sub_2574B7BC0(v29, v28);
          OUTLINED_FUNCTION_2_10();
          sub_2574B7BC0(v22, v36);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_8();
        sub_2574B7BC0(v7, v38);
      }

      OUTLINED_FUNCTION_1_8();
      v40 = v15;
LABEL_18:
      sub_2574B7BC0(v40, v39);
      OUTLINED_FUNCTION_2_10();
      sub_2574B7BC0(v22, v42);
      return 0;
    }

    OUTLINED_FUNCTION_1_8();
    v31 = v15;
  }

  else
  {
    sub_2574B7C74(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574B7C18(&v22[v23], v11, type metadata accessor for Proto_StringVector);
      if (sub_257479C78(*v17, *v11))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_3_8();
        sub_2574B7AE8(v32, v33, MEMORY[0x277D216D0]);
        v34 = sub_257743644();
        OUTLINED_FUNCTION_0_14();
        sub_2574B7BC0(v11, v35);
        if (v34)
        {
          OUTLINED_FUNCTION_0_14();
          v29 = v17;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_14();
        sub_2574B7BC0(v11, v41);
      }

      OUTLINED_FUNCTION_0_14();
      v40 = v17;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_14();
    v31 = v17;
  }

  sub_2574B7BC0(v31, v30);
  sub_2574695E4(v22, &qword_27F87A888, &qword_257748710);
  return 0;
}

uint64_t sub_2574B62EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_DictVectorizer(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B633C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E80E0);
  __swift_project_value_buffer(v0, qword_27F8E80E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stringToIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "int64ToIndex";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574B6504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_205();
      sub_2574B6A80(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_205();
      sub_2574B6588(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2574B6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87A848, &unk_257748540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    sub_2574B7C18(v12, v18, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    sub_2574B7C18(v18, v16, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7BC0(v16, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
      sub_2574B7C18(v16, v9, type metadata accessor for Proto_StringVector);
      sub_2574B7C18(v9, v24, type metadata accessor for Proto_StringVector);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574B7AE8(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  v28 = v35;
  sub_2574B7C18(v22, v35, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87A848, &unk_257748540);
  sub_2574B7C18(v28, v30, type metadata accessor for Proto_StringVector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574B6A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87A848, &unk_257748540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    sub_2574B7C18(v12, v18, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    sub_2574B7C18(v18, v16, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_2574B7C18(v16, v9, type metadata accessor for Proto_Int64Vector);
      sub_2574B7C18(v9, v24, type metadata accessor for Proto_Int64Vector);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574B7BC0(v16, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    }
  }

  sub_2574B7AE8(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  v28 = v35;
  sub_2574B7C18(v22, v35, type metadata accessor for Proto_Int64Vector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87A848, &unk_257748540);
  sub_2574B7C18(v28, v30, type metadata accessor for Proto_Int64Vector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574B6F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_2574AD5D8(v3, &v20 - v7, &qword_27F87A848, &unk_257748540);
  v9 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_5_10();
    sub_2574B72C0(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_10();
    sub_2574B70AC(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_2_10();
  result = sub_2574B7BC0(v8, v18);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Proto_DictVectorizer(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574B70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87A848, &unk_257748540);
  v11 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574B7C18(v7, v10, type metadata accessor for Proto_StringVector);
      sub_2574B7AE8(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
      sub_257743574();
      return sub_2574B7BC0(v10, type metadata accessor for Proto_StringVector);
    }

    result = sub_2574B7BC0(v7, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574B72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v7, &qword_27F87A848, &unk_257748540);
  v11 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7C18(v7, v10, type metadata accessor for Proto_Int64Vector);
      sub_2574B7AE8(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_2574B7BC0(v10, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_2574B7BC0(v7, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification33DictionaryVectorizerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A890, &qword_257748718);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v17 = *(v14 + 56);
  sub_2574AD5D8(a1, &v25 - v15, &qword_27F87A848, &unk_257748540);
  sub_2574AD5D8(a2, &v16[v17], &qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_65(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_65(&v16[v17]);
    if (v18)
    {
      sub_2574695E4(v16, &qword_27F87A848, &unk_257748540);
LABEL_12:
      type metadata accessor for Proto_DictVectorizer(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_3_8();
      sub_2574B7AE8(v22, v23, MEMORY[0x277D216D0]);
      v20 = sub_257743644();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_2574AD5D8(v16, v11, &qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_65(&v16[v17]);
  if (v18)
  {
    OUTLINED_FUNCTION_2_10();
    sub_2574B7BC0(v11, v19);
LABEL_9:
    sub_2574695E4(v16, &qword_27F87A890, &qword_257748718);
    goto LABEL_10;
  }

  sub_2574B7C18(&v16[v17], v7, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  v21 = sub_2574B5F50(v11, v7);
  sub_2574B7BC0(v7, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  sub_2574B7BC0(v11, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  sub_2574695E4(v16, &qword_27F87A848, &unk_257748540);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2574B776C()
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  sub_2574B7AE8(&qword_27F87A858, type metadata accessor for Proto_DictVectorizer, &unk_2577486C0);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574B7844(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B7AE8(&qword_27F87A870, type metadata accessor for Proto_DictVectorizer, &unk_257748610);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B78C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878E28 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E80E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574B7968(uint64_t a1)
{
  v2 = sub_2574B7AE8(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer, &unk_257748648);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B79D8(uint64_t a1, uint64_t a2)
{
  sub_2574B7AE8(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer, &unk_257748648);

  return sub_257743424();
}

uint64_t sub_2574B7AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574B7BC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574B7C18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2574B7C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B7E10()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

void sub_2574B7EB8(uint64_t a1)
{
  sub_2574B7FD4(319, &qword_281537990, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_2574B7FD4(319, &qword_281537EE8, type metadata accessor for Proto_SizeRange, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574B7FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2574B8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

void sub_2574B8238(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574B7FD4(319, &qword_281537EE8, type metadata accessor for Proto_SizeRange, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B83F8(uint64_t a1)
{
  sub_2574B7FD4(319, &qword_281537B58, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_42Tm()
{
  OUTLINED_FUNCTION_41_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    sub_2577431B4();
    v4 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_43Tm()
{
  OUTLINED_FUNCTION_33_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2574B869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureType(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_118Tm);
}

uint64_t sub_2574B8714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_ArrayFeatureType(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_119Tm);
}

uint64_t sub_2574B877C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_ArrayFeatureType(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2574B8844(uint64_t a1)
{
  result = type metadata accessor for Proto_Int64FeatureType(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_DoubleFeatureType(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_StringFeatureType(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_ImageFeatureType(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_ArrayFeatureType(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_DictionaryFeatureType(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_SequenceFeatureType(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Proto_StateFeatureType(319);
                if (v9 <= 0x3F)
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

  return result;
}

uint64_t __swift_store_extra_inhabitant_index_88Tm()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2574B89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2577431B4();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_118Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_18_3();
  if (*(v7 + 84) == a2)
  {
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

void __swift_store_extra_inhabitant_index_119Tm()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
    OUTLINED_FUNCTION_18_3();
    if (*(v4 + 84) != v3)
    {
      sub_2577431B4();
    }

    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_2574B8BD4(uint64_t a1)
{
  sub_2574B8D28(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574B7FD4(319, &qword_281537BB0, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2574B8D28(319, &qword_27F87A908, &type metadata for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2577431B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2574B8D28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2574B8F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_2577431B4();
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_78Tm(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  sub_2577431B4();
  v4 = OUTLINED_FUNCTION_24_5();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void __swift_store_extra_inhabitant_index_79Tm()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_2574B91B4(uint64_t a1)
{
  sub_2574B7FD4(319, &qword_281537E90, type metadata accessor for Proto_FeatureType.OneOf_Type, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574B9274(uint64_t a1)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v1 = OUTLINED_FUNCTION_95_0();
  v2 = type metadata accessor for Proto_SizeRange(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

void sub_2574B92E8()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v25[1] = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC30, &qword_25774A448);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_2();
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_54_0();
      sub_2574CB180();
      sub_2574BE7B0();
      sub_2574CB128(v6, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
      sub_2574CB128(v11, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
      OUTLINED_FUNCTION_5_11();
      sub_2574CB128(v0, v17);
      goto LABEL_11;
    }

    v18 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange;
    v19 = v11;
LABEL_7:
    sub_2574CB128(v19, v18);
    sub_2574695E4(v0, &qword_27F87AC30, &qword_25774A448);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_2();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes;
    v19 = v14;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_54_0();
  sub_2574CB180();
  sub_25748282C(*v14, *v1);
  if (v20)
  {
    v6 = sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    sub_2574C9F70(v21, v22, MEMORY[0x277D216D0]);
    sub_257743644();
  }

  OUTLINED_FUNCTION_52_0();
  sub_2574CB128(v1, v23);
  sub_2574CB128(v14, v6);
  OUTLINED_FUNCTION_5_11();
  sub_2574CB128(v0, v24);
LABEL_11:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574B9670(uint64_t result)
{
  v1 = 4;
  v2 = 2;
  v3 = 3;
  if (result == 10)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  if (result != 30)
  {
    v3 = v4;
  }

  if (result != 20)
  {
    v2 = v3;
  }

  if (result != 40)
  {
    v1 = v2;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2574B96D8(uint64_t result, char a2)
{
  if (a2)
  {
    result *= 10;
  }

  return result;
}

uint64_t sub_2574B9738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2574B96D8(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_2574B9774(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CB228();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2574B97E8()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2(v1);
  *v0 = 0;
  v0[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B9824()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for Proto_ImageFeatureType(v1);
  *v0 = 0;
  v0[1] = 0;
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = v0 + *(v2 + 28);
  *v7 = 0;
  v7[8] = 1;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B9894@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574B98DC()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_290();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC40, &qword_25774A458);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_40_2();
  v12 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility;
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_25747F268(*v3, *v1);
      if (v13)
      {
        v12 = sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v14, v15, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_50_0();
      sub_2574CB128(v1, v16);
      v17 = v3;
LABEL_14:
      sub_2574CB128(v17, v12);
      OUTLINED_FUNCTION_9_6();
      sub_2574CB128(v0, v24);
      goto LABEL_15;
    }

    v18 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange;
    v19 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_25748264C();
      if (v20)
      {
        v12 = sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v21, v22, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_48_0();
      sub_2574CB128(v2, v23);
      v17 = v4;
      goto LABEL_14;
    }

    v18 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes;
    v19 = v4;
  }

  sub_2574CB128(v19, v18);
  sub_2574695E4(v0, &qword_27F87AC40, &qword_25774A458);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

BOOL sub_2574B9C94(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && a1 == a3;
  }
}

uint64_t sub_2574B9D14(uint64_t result)
{
  if (result)
  {
    if (result == 131104)
    {
      return 3;
    }

    else
    {
      v1 = 5;
      if (result != 65552)
      {
        v1 = result;
      }

      if (result == 131080)
      {
        v2 = 4;
      }

      else
      {
        v2 = v1;
      }

      if (result == 65600)
      {
        v3 = 2;
      }

      else
      {
        v3 = v2;
      }

      if (result == 65568)
      {
        return 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t sub_2574B9DB4(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_25774A490[result];
  }

  return result;
}

uint64_t sub_2574B9E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2574B9DB4(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_2574B9EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CB1D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574B9F24()
{
  result = qword_281537BF0;
  if (!qword_281537BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BF0);
  }

  return result;
}

unint64_t sub_2574B9FAC()
{
  result = qword_281537BF8;
  if (!qword_281537BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BF8);
  }

  return result;
}

unint64_t sub_2574BA004()
{
  result = qword_281537BE8;
  if (!qword_281537BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BE8);
  }

  return result;
}

uint64_t sub_2574BA058@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Proto_ArrayFeatureType(0);
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = a1 + *(v2 + 28);
  *v7 = 0;
  *(v7 + 8) = -1;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574BA0DC()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = type metadata accessor for Proto_Int64FeatureType(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_290();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC28, &qword_25774A440);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_2();
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() == 1)
    {
      OUTLINED_FUNCTION_23_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v14, v15, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_360();
      sub_257743644();
      OUTLINED_FUNCTION_46_1();
      sub_2574CB128(v1, v16);
      v17 = OUTLINED_FUNCTION_222();
LABEL_9:
      sub_2574CB128(v17, v18);
      OUTLINED_FUNCTION_20_3();
      sub_2574CB128(v0, v25);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_22_3();
    v20 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() != 1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      v23 = sub_2574C9F70(v21, v22, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_68_0(v23);
      OUTLINED_FUNCTION_47_1();
      sub_2574CB128(v2, v24);
      v17 = OUTLINED_FUNCTION_229();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10_9();
    v20 = v4;
  }

  sub_2574CB128(v20, v19);
  sub_2574695E4(v0, &qword_27F87AC28, &qword_25774A440);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

void sub_2574BA3A8()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = type metadata accessor for Proto_Int64FeatureType(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_290();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC20, &qword_25774A438);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_2();
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() == 1)
    {
      OUTLINED_FUNCTION_23_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v14, v15, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_360();
      sub_257743644();
      OUTLINED_FUNCTION_46_1();
      sub_2574CB128(v1, v16);
      v17 = OUTLINED_FUNCTION_222();
LABEL_9:
      sub_2574CB128(v17, v18);
      OUTLINED_FUNCTION_19_4();
      sub_2574CB128(v0, v25);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_22_3();
    v20 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() != 1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      v23 = sub_2574C9F70(v21, v22, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_68_0(v23);
      OUTLINED_FUNCTION_47_1();
      sub_2574CB128(v2, v24);
      v17 = OUTLINED_FUNCTION_229();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10_9();
    v20 = v4;
  }

  sub_2574CB128(v20, v19);
  sub_2574695E4(v0, &qword_27F87AC20, &qword_25774A438);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574BA674()
{
  v0 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(v0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Proto_SequenceFeatureType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2574BA6E8()
{
  OUTLINED_FUNCTION_267();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC38, &qword_25774A450);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = *(v3 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  sub_2574C0698();
  v8 = v7;
  OUTLINED_FUNCTION_51_0();
  sub_2574CB128(&v5[v6], v9);
  sub_2574CB128(v5, v0);
  return v8 & 1;
}

uint64_t sub_2574BA7CC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  a2(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574BA824()
{
  OUTLINED_FUNCTION_31();
  v97 = v2;
  v98 = v3;
  v4 = type metadata accessor for Proto_StateFeatureType(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v94 = v7 - v6;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_SequenceFeatureType(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v93 = v12 - v11;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for Proto_DictionaryFeatureType(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v92 = v17 - v16;
  v18 = OUTLINED_FUNCTION_153();
  v19 = type metadata accessor for Proto_ArrayFeatureType(v18);
  v20 = OUTLINED_FUNCTION_13(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v91 = v22 - v21;
  v23 = OUTLINED_FUNCTION_153();
  v24 = type metadata accessor for Proto_ImageFeatureType(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v89 = v27 - v26;
  v28 = OUTLINED_FUNCTION_153();
  v29 = type metadata accessor for Proto_StringFeatureType(v28);
  v30 = OUTLINED_FUNCTION_13(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v90 = v32 - v31;
  v33 = OUTLINED_FUNCTION_153();
  v34 = type metadata accessor for Proto_DoubleFeatureType(v33);
  v35 = OUTLINED_FUNCTION_13(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v88 = v37 - v36;
  v38 = OUTLINED_FUNCTION_153();
  v39 = type metadata accessor for Proto_Int64FeatureType(v38);
  v40 = OUTLINED_FUNCTION_13(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v87 = v42 - v41;
  v43 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_FeatureType.OneOf_Type(v43);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v96 = (v45 - v46);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v47);
  v95 = &v87 - v48;
  OUTLINED_FUNCTION_158();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v87 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v87 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = (&v87 - v57);
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v87 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v87 - v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_290();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC18, &qword_25774A430);
  OUTLINED_FUNCTION_13(v65);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_40_2();
  sub_2574CB27C();
  sub_2574CB27C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 1)
      {
        OUTLINED_FUNCTION_54_0();
        v77 = v88;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v79, v80, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_176();
        sub_257743644();
        v78 = type metadata accessor for Proto_DoubleFeatureType;
        goto LABEL_18;
      }

      v83 = type metadata accessor for Proto_DoubleFeatureType;
      goto LABEL_28;
    case 2u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 2)
      {
        OUTLINED_FUNCTION_23_4();
        v72 = v90;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v73, v74, MEMORY[0x277D216D0]);
        sub_257743644();
        v58 = type metadata accessor for Proto_StringFeatureType;
        sub_2574CB128(v72, type metadata accessor for Proto_StringFeatureType);
        v71 = v61;
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_22_3();
      v68 = v61;
      goto LABEL_29;
    case 3u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 3)
      {
        OUTLINED_FUNCTION_54_0();
        v75 = v89;
        sub_2574CB180();
        sub_2574BCFA0();
        sub_2574CB128(v75, type metadata accessor for Proto_ImageFeatureType);
        v71 = v58;
        v76 = type metadata accessor for Proto_ImageFeatureType;
        goto LABEL_20;
      }

      v67 = type metadata accessor for Proto_ImageFeatureType;
      v68 = v58;
      goto LABEL_29;
    case 4u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 4)
      {
        OUTLINED_FUNCTION_54_0();
        v69 = v91;
        sub_2574CB180();
        sub_2574C0698();
        OUTLINED_FUNCTION_51_0();
        sub_2574CB128(v69, v70);
        v71 = v55;
        goto LABEL_19;
      }

      v67 = type metadata accessor for Proto_ArrayFeatureType;
      v68 = v55;
      goto LABEL_29;
    case 5u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 5)
      {
        OUTLINED_FUNCTION_54_0();
        v81 = v92;
        sub_2574CB180();
        sub_2574C2CDC();
        v58 = type metadata accessor for Proto_DictionaryFeatureType;
        sub_2574CB128(v81, type metadata accessor for Proto_DictionaryFeatureType);
        v71 = v52;
        goto LABEL_19;
      }

      v67 = type metadata accessor for Proto_DictionaryFeatureType;
      v68 = v52;
      goto LABEL_29;
    case 6u:
      OUTLINED_FUNCTION_2_11();
      v64 = v95;
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 6)
      {
        OUTLINED_FUNCTION_54_0();
        v77 = v93;
        sub_2574CB180();
        OUTLINED_FUNCTION_176();
        sub_2574C4598();
        v78 = type metadata accessor for Proto_SequenceFeatureType;
        goto LABEL_18;
      }

      v83 = type metadata accessor for Proto_SequenceFeatureType;
      goto LABEL_28;
    case 7u:
      OUTLINED_FUNCTION_2_11();
      v64 = v96;
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 7)
      {
        OUTLINED_FUNCTION_54_0();
        v77 = v94;
        sub_2574CB180();
        OUTLINED_FUNCTION_176();
        sub_2574C55BC();
        v78 = type metadata accessor for Proto_StateFeatureType;
LABEL_18:
        v58 = v78;
        sub_2574CB128(v77, v78);
        v71 = v64;
        goto LABEL_19;
      }

      v83 = type metadata accessor for Proto_StateFeatureType;
LABEL_28:
      v67 = v83;
      v68 = v64;
      goto LABEL_29;
    default:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0())
      {
        OUTLINED_FUNCTION_10_9();
        v68 = v1;
LABEL_29:
        sub_2574CB128(v68, v67);
        sub_2574695E4(v0, &qword_27F87AC18, &qword_25774A430);
      }

      else
      {
        OUTLINED_FUNCTION_21_4();
        v84 = v87;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v85, v86, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_229();
        sub_257743644();
        v58 = type metadata accessor for Proto_Int64FeatureType;
        sub_2574CB128(v84, type metadata accessor for Proto_Int64FeatureType);
        v71 = v1;
LABEL_19:
        v76 = v58;
LABEL_20:
        sub_2574CB128(v71, v76);
        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v0, v82);
      }

      OUTLINED_FUNCTION_35();
      return;
  }
}

unint64_t sub_2574BB090()
{
  result = qword_27F87A940;
  if (!qword_27F87A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A940);
  }

  return result;
}

unint64_t sub_2574BB118()
{
  result = qword_27F87A958;
  if (!qword_27F87A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A958);
  }

  return result;
}

unint64_t sub_2574BB170()
{
  result = qword_27F87A960;
  if (!qword_27F87A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A960);
  }

  return result;
}

uint64_t sub_2574BB1C4()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_FeatureType.OneOf_Type(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(v0 + *(type metadata accessor for Proto_FeatureType(0) + 20)) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574BB220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_257743234();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_2574BB298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB70, type metadata accessor for Proto_Int64FeatureType, &unk_257749E98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB338(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB400(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);

  return sub_257743424();
}

uint64_t sub_2574BB4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB78, type metadata accessor for Proto_DoubleFeatureType, &unk_257749DA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB544(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType, &unk_25774A218);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB60C(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType, &unk_25774A218);

  return sub_257743424();
}

uint64_t sub_2574BB694(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_44_1();
  __swift_project_value_buffer(v4, v5);
  return sub_2577435A4();
}

uint64_t sub_2574BB6D8()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v0, v1, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_44_1();
  return sub_257743644() & 1;
}

uint64_t sub_2574BB760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB80, type metadata accessor for Proto_StringFeatureType, &unk_257749CB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB800(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB8C8(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);

  return sub_257743424();
}

uint64_t sub_2574BBA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABD8, type metadata accessor for Proto_SizeRange, &unk_257749BC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BBAC0(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange, &unk_257749ED0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BBB88(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange, &unk_257749ED0);

  return sub_257743424();
}

uint64_t sub_2574BBC34()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8158);
  __swift_project_value_buffer(v0, qword_27F8E8158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedSizes";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "imageSizeRange";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 3;
  *v16 = "colorSpace";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BBEB8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 31:
        v9 = OUTLINED_FUNCTION_6_10();
        sub_2574BC4D8(v9, v10, v11, v12);
        break;
      case 2:
        goto LABEL_9;
      case 3:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2574BBF60(v7, v8);
        break;
      case 21:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574BBFD4(v3, v4, v5, v6);
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_10_7();
        sub_257743324();
        break;
    }
  }
}

uint64_t sub_2574BBF60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_ImageFeatureType(0);
  sub_2574CB228();
  return sub_257743284();
}

uint64_t sub_2574BBFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABB8, &qword_25774A410);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v14, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87ABB8, &qword_25774A410);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes, &unk_257749858);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87ABB8, &qword_25774A410);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87ABB8, &qword_25774A410);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87ABB8, &qword_25774A410);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87ABB8, &qword_25774A410);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87A8C8, &unk_257748860);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574BC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABC0, &qword_25774A418);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87ABC0, &qword_25774A418);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
    }
  }

  sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange, &unk_2577496F0);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87ABC0, &qword_25774A418);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87ABC0, &qword_25774A418);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87ABC0, &qword_25774A418);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87ABC0, &qword_25774A418);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87A8C8, &unk_257748860);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

void sub_2574BC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  if (!OUTLINED_FUNCTION_93_0() || (OUTLINED_FUNCTION_12_8(), sub_257743504(), !v16))
  {
    if (!*(v17 + 8) || (OUTLINED_FUNCTION_12_8(), sub_257743504(), !v16))
    {
      v21 = type metadata accessor for Proto_ImageFeatureType(0);
      if (!*(v17 + *(v21 + 28)) || (sub_2574CB228(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v16))
      {
        sub_257487308(v17 + *(v21 + 24));
        v22 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
        if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
        {
          goto LABEL_12;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = OUTLINED_FUNCTION_3_9();
          sub_2574BCD80(v23, v24, v25, v26);
        }

        else
        {
          v27 = OUTLINED_FUNCTION_3_9();
          sub_2574BCB60(v27, v28, v29, v30);
        }

        OUTLINED_FUNCTION_5_11();
        sub_2574CB128(v18, v31);
        if (!v16)
        {
LABEL_12:
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574BCB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_ImageFeatureType(0);
  sub_257487308(a1 + *(v11 + 24));
  v12 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes, &unk_257749858);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574BCD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_ImageFeatureType(0);
  sub_257487308(a1 + *(v11 + 24));
  v12 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange, &unk_2577496F0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  }

  __break(1u);
  return result;
}