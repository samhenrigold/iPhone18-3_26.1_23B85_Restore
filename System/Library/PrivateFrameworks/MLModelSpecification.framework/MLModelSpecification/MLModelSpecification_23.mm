uint64_t NeuralNetwork.Layer.Kind.namedWeights.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.BiasParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_1();
  v114 = v2;
  v3 = OUTLINED_FUNCTION_153();
  v4 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v113 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v112 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for NeuralNetwork.Layer.GRUParameters(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v122 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v121 = v18;
  v19 = OUTLINED_FUNCTION_153();
  v20 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v120 = v22;
  v23 = OUTLINED_FUNCTION_153();
  v24 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v119 = v26;
  v27 = OUTLINED_FUNCTION_153();
  v28 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v118 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v32 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v117 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(v35);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  v41 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters(0);
  v42 = OUTLINED_FUNCTION_13(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v45 = v44 - v43;
  v46 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters(0);
  v47 = OUTLINED_FUNCTION_13(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  v115 = v48;
  v49 = OUTLINED_FUNCTION_153();
  v50 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(v49);
  v51 = OUTLINED_FUNCTION_13(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3();
  v52 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(0);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v111 = v54;
  v55 = OUTLINED_FUNCTION_153();
  v56 = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(v55);
  v57 = OUTLINED_FUNCTION_13(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_1();
  v110 = v58;
  v59 = OUTLINED_FUNCTION_153();
  type metadata accessor for NeuralNetwork.Layer.Activation(v59);
  OUTLINED_FUNCTION_4();
  v61 = MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v61);
  v116 = &v110 - v62;
  v63 = OUTLINED_FUNCTION_153();
  v64 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(v63);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3();
  v66 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters(0);
  v67 = OUTLINED_FUNCTION_13(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3();
  v70 = v69 - v68;
  v71 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(0);
  v72 = OUTLINED_FUNCTION_13(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3();
  v75 = v74 - v73;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_3();
  v79 = v78 - v77;
  sub_2576D0534(v123, v78 - v77, type metadata accessor for NeuralNetwork.Layer.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!(!v82 & v81))
  {
    v84 = v45;
    v86 = v117;
    v85 = v118;
    v87 = v119;
    v75 = v122;
    switch(EnumCaseMultiPayload)
    {
      case 'A':
        v75 = v84;
        sub_2576D0594(v79, v84, type metadata accessor for NeuralNetwork.Layer.ScaleParameters);
        NeuralNetwork.Layer.ScaleParameters.namedWeights.getter();
        v107 = v88;
        v108 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters;
        goto LABEL_22;
      case 'B':
        sub_2576D0594(v79, v40, type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters);
        NeuralNetwork.Layer.BatchNormalizeParameters.namedWeights.getter();
        v107 = v90;
        v96 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters;
        v97 = v40;
        goto LABEL_23;
      case 'C':
      case 'D':
      case 'E':
      case 'F':
      case 'G':
        goto LABEL_15;
      case 'H':
        sub_2576D0594(v79, v117, type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters);
        v107 = NeuralNetwork.Layer.LayerNormalizeParameters.namedWeights.getter();
        v96 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters;
        v97 = v86;
        goto LABEL_23;
      case 'I':
        sub_2576D0594(v79, v118, type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters);
        NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.getter();
        v107 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
        sub_2576D05F4(v87, type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters);
        v96 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters;
        v97 = v85;
        goto LABEL_23;
      case 'J':
        v75 = v120;
        sub_2576D0594(v79, v120, type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters);
        NeuralNetwork.Layer.BidirectionalLSTMParameters.namedWeights.getter();
        v107 = v89;
        v108 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters;
        goto LABEL_22;
      case 'K':
        v75 = v121;
        sub_2576D0594(v79, v121, type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters);
        v107 = NeuralNetwork.Layer.SimpleRecurrentParameters.namedWeights.getter();
        v108 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters;
        goto LABEL_22;
      case 'L':
        sub_2576D0594(v79, v122, type metadata accessor for NeuralNetwork.Layer.GRUParameters);
        v107 = NeuralNetwork.Layer.GRUParameters.namedWeights.getter();
        v108 = type metadata accessor for NeuralNetwork.Layer.GRUParameters;
        goto LABEL_22;
      default:
        JUMPOUT(0);
    }
  }

  switch(EnumCaseMultiPayload)
  {
    case 127:
      v75 = v114;
      v98 = sub_2576D0594(v79, v114, type metadata accessor for NeuralNetwork.Layer.BiasParameters);
      NeuralNetwork.Layer.BiasParameters.namedWeights.getter(v98, v99, v100, v101, v102, v103, v104, v105, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v107 = v106;
      v108 = type metadata accessor for NeuralNetwork.Layer.BiasParameters;
LABEL_22:
      v96 = v108;
      v97 = v75;
      goto LABEL_23;
    case 1:
      sub_2576D0594(v79, v70, type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters);
      NeuralNetwork.Layer.ConstantNDParameters.namedWeights.getter();
      v107 = v95;
      v96 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters;
      v97 = v70;
LABEL_23:
      sub_2576D05F4(v97, v96);
      return v107;
    case 125:
      v75 = v112;
      v91 = sub_2576D0594(v79, v112, type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters);
      NeuralNetwork.Layer.EmbeddingParameters.namedWeights.getter(v91);
      v107 = v92;
      v108 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters;
      goto LABEL_22;
    case 126:
      v75 = v113;
      v93 = sub_2576D0594(v79, v113, type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters);
      NeuralNetwork.Layer.EmbeddingNDParameters.namedWeights.getter(v93);
      v107 = v94;
      v108 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters;
      goto LABEL_22;
    case 0:
      sub_2576D0594(v79, v75, type metadata accessor for NeuralNetwork.Layer.ConstantParameters);
      NeuralNetwork.Layer.ConstantParameters.namedWeights.getter();
      v107 = v83;
      v108 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters;
      goto LABEL_22;
  }

LABEL_15:
  sub_2576D05F4(v79, type metadata accessor for NeuralNetwork.Layer.Kind);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2576D0534(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576D0594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2576D05F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 *OUTLINED_FUNCTION_3_59(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1936291905;
  result[2].n128_u64[1] = 0xE400000000000000;
  *(v3 - 112) = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_48(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6168706C41;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_5_44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  *(v3 - 112) = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_36@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = v2;
  *(v4 - 112) = *v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_36@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  *(v3 - 112) = *v2;
  return result;
}

__n128 *OUTLINED_FUNCTION_10_38(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684366675;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 0xE500000000000000;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_18_32@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  strcpy((v2 + 96), "Std. Deviation");
  *(v2 + 111) = -18;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_23_22(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = 0x6C696261626F7250;
  v2[9] = 0xEB00000000797469;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_24_21@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2576D0594(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_25_19()
{
}

uint64_t OUTLINED_FUNCTION_27_20@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2576D0594(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_30_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x72616C616353;
  a1[2].n128_u64[1] = 0xE600000000000000;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_10@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2576D0594(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = 1851876685;
  v3[9] = v2;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_13@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_12@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2576D0594(a1, v4, a2);
}

void NeuralNetwork.Layer.PoolParameters.kind.getter(_BYTE *a1@<X8>)
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

void NeuralNetwork.Layer.PoolParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v6 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_18_33(v14, xmmword_257743FF0);
  v49 = 0;
  v50 = 0xE000000000000000;
  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_38_9();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = *(v15 + 32);
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if ((*(v15 + 40) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    v17 = 3;
  }

  v48 = v17;
  sub_257743974();
  OUTLINED_FUNCTION_41_13();

  MEMORY[0x259C64E90](38851, 0xA200000000000000);
  OUTLINED_FUNCTION_38_9();
  if (!v16)
  {
    goto LABEL_12;
  }

  if ((*(v15 + 32) & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v18 = *(v15 + 40);
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:
  v18 = 3;
LABEL_13:
  v48 = v18;
  sub_257743974();
  OUTLINED_FUNCTION_41_13();

  v19 = v50;
  v14[3].n128_u64[0] = v49;
  v14[3].n128_u64[1] = v19;
  OUTLINED_FUNCTION_28_23();
  v14[4].n128_u64[0] = v20;
  v14[4].n128_u64[1] = 0xE700000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  v21 = *(v0 + 24);
  OUTLINED_FUNCTION_38_9();
  if (!v16)
  {
    goto LABEL_18;
  }

  v22 = *(v21 + 32);
  if (v22 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((*(v21 + 40) & 0x8000000000000000) == 0)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  v22 = 3;
LABEL_19:
  v48 = v22;
  sub_257743974();
  OUTLINED_FUNCTION_41_13();

  MEMORY[0x259C64E90](38851, 0xA200000000000000);
  OUTLINED_FUNCTION_38_9();
  if (!v16)
  {
    goto LABEL_24;
  }

  if ((*(v21 + 32) & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v23 = *(v21 + 40);
  if (v23 < 0)
  {
    __break(1u);
LABEL_24:
    v23 = 3;
  }

  v48 = v23;
  sub_257743974();
  OUTLINED_FUNCTION_41_13();

  v24 = v50;
  v14[5].n128_u64[0] = v49;
  v14[5].n128_u64[1] = v24;
  v49 = v14;
  NeuralNetwork.Layer.PoolParameters.padding.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2574695E4(v5, &qword_27F881230, &unk_257773EF0);
  }

  else
  {
    OUTLINED_FUNCTION_13_25();
    sub_2576D3204();
    OUTLINED_FUNCTION_1_66();
    OUTLINED_FUNCTION_277();
    sub_2576D325C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_0_84();
        sub_2576D32B4(v10, v26);
        v27 = 0xE400000000000000;
        v28 = 1701667155;
      }

      else
      {
        v27 = 0x8000000257781550;
        v28 = 0xD000000000000012;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_84();
      sub_2576D32B4(v10, v29);
      v27 = 0xE500000000000000;
      v28 = 0x64696C6156;
    }

    OUTLINED_FUNCTION_40_11();
    v30[1].n128_u64[0] = 3;
    v30[6].n128_u64[0] = 0x676E6964646150;
    v30[6].n128_u64[1] = 0xE700000000000000;
    v30[7].n128_u64[0] = v28;
    v30[7].n128_u64[1] = v27;
    v49 = v30;
    v31 = NeuralNetwork.Layer.PoolParameters.Padding.propertyDescriptions.getter();
    sub_25763CEB8(v31);
    OUTLINED_FUNCTION_0_84();
    sub_2576D32B4(v13, v32);
    v14 = v49;
  }

  v33 = type metadata accessor for Proto_PoolingLayerParams(0);
  if (*(v1 + *(v33 + 32)))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + *(v33 + 32)))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_40_11();
    v14 = v44;
  }

  v36 = v14[1].n128_u64[0];
  v37 = v14[1].n128_u64[1] >> 1;
  v38 = v36 + 1;
  if (v37 <= v36)
  {
    OUTLINED_FUNCTION_40_11();
    v14 = v45;
    v37 = v45[1].n128_u64[1] >> 1;
  }

  v14[1].n128_u64[0] = v38;
  v39 = &v14[2 * v36];
  v39[2].n128_u64[0] = 0xD000000000000018;
  v39[2].n128_u64[1] = 0x8000000257781530;
  v39[3].n128_u64[0] = v34;
  v39[3].n128_u64[1] = v35;
  v40 = *(v1 + *(v33 + 36));
  if (v37 < (v36 + 2))
  {
    OUTLINED_FUNCTION_40_11();
    v14 = v46;
  }

  v41 = 0xE500000000000000;
  if (v40)
  {
    v41 = 0xE400000000000000;
  }

  v14[1].n128_u64[0] = v36 + 2;
  v42 = &v14[2 * v38];
  strcpy(&v42[2], "Global Pooling");
  v42[2].n128_u8[15] = -18;
  if (v40)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  v42[3].n128_u64[0] = v43;
  v42[3].n128_u64[1] = v41;
  OUTLINED_FUNCTION_35();
}

__n128 *NeuralNetwork.Layer.Pool3DParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_18_33(v0, xmmword_257743FF0);
  OUTLINED_FUNCTION_277();
  v9 = sub_257743974();
  v11 = v1;
  OUTLINED_FUNCTION_25_20();
  v2 = OUTLINED_FUNCTION_10_39();
  MEMORY[0x259C64E90](v2);

  OUTLINED_FUNCTION_25_20();
  v3 = OUTLINED_FUNCTION_10_39();
  MEMORY[0x259C64E90](v3);

  v0[3].n128_u64[0] = v9;
  v0[3].n128_u64[1] = v11;
  OUTLINED_FUNCTION_28_23();
  v0[4].n128_u64[0] = v4;
  v0[4].n128_u64[1] = 0xE700000000000000;
  v10 = OUTLINED_FUNCTION_10_39();
  v12 = v5;
  OUTLINED_FUNCTION_25_20();
  v6 = OUTLINED_FUNCTION_10_39();
  MEMORY[0x259C64E90](v6);

  OUTLINED_FUNCTION_25_20();
  v7 = OUTLINED_FUNCTION_10_39();
  MEMORY[0x259C64E90](v7);

  v0[5].n128_u64[0] = v10;
  v0[5].n128_u64[1] = v12;
  return v0;
}

void NeuralNetwork.Layer.PoolParameters.kernelSize.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2[2] != 2)
  {
    goto LABEL_5;
  }

  v3 = v2[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2[5];
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *a1 = v3;
      a1[1] = v4;
      return;
    }

    __break(1u);
LABEL_5:
    v3 = 3;
    v4 = 3;
    goto LABEL_6;
  }

  __break(1u);
}

void NeuralNetwork.Layer.PoolParameters.strides.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2[2] != 2)
  {
    goto LABEL_5;
  }

  v3 = v2[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2[5];
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *a1 = v3;
      a1[1] = v4;
      return;
    }

    __break(1u);
LABEL_5:
    v3 = 3;
    v4 = 3;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t NeuralNetwork.Layer.PoolParameters.padding.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for Proto_PoolingLayerParams(v9);
  sub_257487308(v1 + *(v10 + 28));
  v11 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) != 1)
  {
    OUTLINED_FUNCTION_15_20();
    sub_2576D3204();
    OUTLINED_FUNCTION_6_46();
    sub_2576D325C();
    sub_2576D1AC8();
    OUTLINED_FUNCTION_3_60();
    v11 = 0;
  }

  v12 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

_OWORD *NeuralNetwork.Layer.PoolParameters.Padding.propertyDescriptions.getter()
{
  v0 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(0);
  v6 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_66();
  sub_2576D325C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v13 = swift_allocObject();
      v13[1] = xmmword_257743FF0;
      *(v13 + 4) = 0x6769654820646150;
      *(v13 + 5) = 0xEA00000000007468;
      OUTLINED_FUNCTION_98_2();
      *(v13 + 6) = sub_257743974();
      *(v13 + 7) = v16;
      *(v13 + 8) = 0x7464695720646150;
      *(v13 + 9) = 0xE900000000000068;
      OUTLINED_FUNCTION_98_2();
      *(v13 + 10) = sub_257743974();
      *(v13 + 11) = v17;
      return v13;
    }

    sub_2576D3204();
    if (*v4)
    {
      v12 = &unk_2868B3340;
    }

    else
    {
      v12 = &unk_2868B3380;
    }

    if (*(v4 + 8))
    {
      v13 = v12;
    }

    else
    {
      v13 = &unk_2868B3380;
    }

    v14 = type metadata accessor for NeuralNetwork.SamePaddingParameters;
    v15 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_7_37();
    sub_2576D3204();
    v13 = NeuralNetwork.ValidPaddingParameters.propertyDescriptions.getter();
    OUTLINED_FUNCTION_16_20();
    v15 = v9;
  }

  sub_2576D32B4(v15, v14);
  return v13;
}

unsigned __int8 *NeuralNetwork.Layer.PoolParameters.kind.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.PoolParameters.kind.modify(uint64_t a1))(uint64_t *result)
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

double sub_2576D14D4@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.PoolParameters.kernelSize.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.PoolParameters.kernelSize.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(result + 32) = v3;
    if ((v2 & 0x8000000000000000) == 0)
    {
      *(result + 40) = v2;

      *(v1 + 16) = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*NeuralNetwork.Layer.PoolParameters.kernelSize.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 16);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] != 2)
  {
    goto LABEL_5;
  }

  v3 = v2[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2[5];
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *result = v3;
      *(result + 1) = v4;
      return sub_2576D1618;
    }

    __break(1u);
LABEL_5:
    v3 = 3;
    v4 = 3;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2576D1618(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  v7 = result;
  *(result + 16) = xmmword_257743FF0;
  if (a2)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    *(result + 32) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_7:
      v8 = a1[2];
      *(result + 40) = v4;

      *(v8 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = v5;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_2576D16B8@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.PoolParameters.strides.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.PoolParameters.strides.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(result + 32) = v3;
    if ((v2 & 0x8000000000000000) == 0)
    {
      *(result + 40) = v2;

      *(v1 + 24) = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*NeuralNetwork.Layer.PoolParameters.strides.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 24);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] != 2)
  {
    goto LABEL_5;
  }

  v3 = v2[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2[5];
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *result = v3;
      *(result + 1) = v4;
      return sub_2576D17FC;
    }

    __break(1u);
LABEL_5:
    v3 = 3;
    v4 = 3;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2576D17FC(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  v7 = result;
  *(result + 16) = xmmword_257743FF0;
  if (a2)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    *(result + 32) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_7:
      v8 = a1[2];
      *(result + 40) = v4;

      *(v8 + 24) = v7;
      return result;
    }

    __break(1u);
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = v5;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2576D189C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_257487308(a1);
  return NeuralNetwork.Layer.PoolParameters.padding.setter(v4);
}

uint64_t NeuralNetwork.Layer.PoolParameters.padding.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_257487308(a1);
  v12 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    v13 = OUTLINED_FUNCTION_277();
    sub_2574695E4(v13, v14, &unk_257773EF0);
    sub_2574695E4(v7, &qword_27F881230, &unk_257773EF0);
    v15 = 1;
  }

  else
  {
    sub_2576D1CC0();
    sub_2574695E4(a1, &qword_27F881230, &unk_257773EF0);
    OUTLINED_FUNCTION_0_84();
    sub_2576D32B4(v7, v16);
    v15 = 0;
  }

  v17 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  __swift_storeEnumTagSinglePayload(v11, v15, 1, v17);
  v18 = type metadata accessor for Proto_PoolingLayerParams(0);
  return sub_2576D330C(v11, v2 + *(v18 + 28));
}

uint64_t sub_2576D1AC8()
{
  type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  valid = type metadata accessor for Proto_PoolingLayerParams.ValidCompletePadding(0);
  v7 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_38();
  type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_46();
  sub_2576D325C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_3_60();
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_205();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_60();
    OUTLINED_FUNCTION_14_21();
    sub_2576D3204();
    OUTLINED_FUNCTION_205();
    return swift_storeEnumTagMultiPayload();
  }

  sub_2576D3204();
  v12 = *v1;
  if (*(*v1 + 16))
  {
    v13 = *(v12 + 32);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v13 = 0;
LABEL_10:

  result = sub_25763D468(1, v12);
  if (v15 == v16 >> 1)
  {
    v17 = 0;
  }

  else
  {
    if (v15 >= (v16 >> 1))
    {
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v15);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_12_34();
  result = sub_2576D32B4(v1, v18);
  if ((v17 & 0x8000000000000000) == 0)
  {
    *v5 = v13;
    v5[1] = v17;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_25();
    return sub_2576D3204();
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2576D1CC0()
{
  type metadata accessor for Proto_PoolingLayerParams.ValidCompletePadding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v5 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_38();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(v7);
  v9 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_1_66();
  sub_2576D325C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_7_37();
    sub_2576D3204();
    OUTLINED_FUNCTION_17_23();
    type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
    OUTLINED_FUNCTION_18_1();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_36_13();
    sub_2576D3204();
    OUTLINED_FUNCTION_14_21();
    sub_2576D3204();
    type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
    OUTLINED_FUNCTION_18_1();
    return swift_storeEnumTagMultiPayload();
  }

  v17 = *v13;
  v16 = v13[1];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = v17;
    if ((v16 & 0x8000000000000000) == 0)
    {
      *(result + 40) = v16;
      *v4 = result;
      sub_2576D325C();
      type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
      OUTLINED_FUNCTION_18_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_34();
      return sub_2576D32B4(v4, v18);
    }
  }

  __break(1u);
  return result;
}

void NeuralNetwork.Layer.PoolParameters.padding.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
  OUTLINED_FUNCTION_13(v7);
  v3[4] = OUTLINED_FUNCTION_31_14();
  v8 = OUTLINED_FUNCTION_31_14();
  v3[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  OUTLINED_FUNCTION_13(v9);
  v3[6] = OUTLINED_FUNCTION_31_14();
  v3[7] = OUTLINED_FUNCTION_31_14();
  v10 = OUTLINED_FUNCTION_31_14();
  v3[8] = v10;
  v11 = *(type metadata accessor for Proto_PoolingLayerParams(0) + 28);
  *(v3 + 18) = v11;
  sub_257487308(v0 + v11);
  v12 = 1;
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) != 1)
  {
    OUTLINED_FUNCTION_15_20();
    sub_2576D3204();
    OUTLINED_FUNCTION_6_46();
    sub_2576D325C();
    sub_2576D1AC8();
    OUTLINED_FUNCTION_3_60();
    v12 = 0;
  }

  v13 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  __swift_storeEnumTagSinglePayload(v10, v12, 1, v13);
  OUTLINED_FUNCTION_35();
}

void sub_2576D20C0()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    v10 = OUTLINED_FUNCTION_277();
    sub_257487308(v10);
    NeuralNetwork.Layer.PoolParameters.padding.setter(v5);
    sub_2574695E4(v3, &qword_27F881230, &unk_257773EF0);
  }

  else
  {
    sub_257487308((*v0)[8]);
    v11 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v11);
    v13 = v1[7];
    v14 = v1[8];
    if (EnumTagSinglePayload == 1)
    {
      sub_2574695E4(v1[8], &qword_27F881230, &unk_257773EF0);
      sub_2574695E4(v13, &qword_27F881230, &unk_257773EF0);
      v15 = 1;
    }

    else
    {
      sub_2576D1CC0();
      sub_2574695E4(v14, &qword_27F881230, &unk_257773EF0);
      OUTLINED_FUNCTION_0_84();
      sub_2576D32B4(v13, v16);
      v15 = 0;
    }

    v17 = *(v1 + 18);
    v2 = v1[7];
    v3 = v1[8];
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    v18 = *v1;
    __swift_storeEnumTagSinglePayload(v7, v15, 1, v1[1]);
    sub_2576D330C(v7, v18 + v17);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v19);
}

uint64_t NeuralNetwork.Layer.PoolParameters.averageExcludesPadding.setter(char a1)
{
  result = type metadata accessor for Proto_PoolingLayerParams(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.PoolParameters.averageExcludesPadding.modify(void *a1))(uint64_t result)
{
  *a1 = v1;
  v2 = type metadata accessor for Proto_PoolingLayerParams(0);
  OUTLINED_FUNCTION_32_11(*(v2 + 32));
  return sub_2576D38B0;
}

uint64_t NeuralNetwork.Layer.PoolParameters.doesGlobalPooling.setter(char a1)
{
  result = type metadata accessor for Proto_PoolingLayerParams(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.PoolParameters.doesGlobalPooling.modify(void *a1))(uint64_t result)
{
  *a1 = v1;
  v2 = type metadata accessor for Proto_PoolingLayerParams(0);
  OUTLINED_FUNCTION_32_11(*(v2 + 36));
  return sub_2576873F0;
}

uint64_t NeuralNetwork.Layer.PoolParameters.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Proto_PoolingLayerParams(0);
  type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v1 + *(v3 + 32)) = 0;
  *(v1 + *(v3 + 36)) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void NeuralNetwork.Layer.PoolParameters.init(kind:kernelSize:strides:padding:)()
{
  OUTLINED_FUNCTION_31();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *v6;
  v15 = *v4;
  v14 = v4[1];
  v17 = *v2;
  v16 = v2[1];
  *v8 = 0;
  *(v8 + 8) = 1;
  v18 = MEMORY[0x277D84F90];
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v8 + 24) = v18;
  v19 = type metadata accessor for Proto_PoolingLayerParams(0);
  type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v8 + *(v19 + 32)) = 0;
  *(v8 + *(v19 + 36)) = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v8 = v13;
  *(v8 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257743FF0;
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v24 + 32) = v15;
  if (v14 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v24 + 40) = v14;
  *(v8 + 16) = v24;
  OUTLINED_FUNCTION_24_22();
  v29 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  if (v17 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v26 + 32) = v17;
  if ((v16 & 0x8000000000000000) == 0)
  {
    *(v26 + 40) = v16;
    *(v8 + 24) = v26;
    sub_257487308(v30);
    NeuralNetwork.Layer.PoolParameters.padding.setter(v12);
    v27 = OUTLINED_FUNCTION_98_2();
    sub_2574695E4(v27, v28, &unk_257773EF0);
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t NeuralNetwork.Layer.GlobalPool3DParameters.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  type metadata accessor for Proto_GlobalPooling3DLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.GlobalPool3DParameters.== infix(_:_:)()
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

  type metadata accessor for Proto_GlobalPooling3DLayerParams(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_11_33();
  sub_2576D3474(v4, v5, MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

void NeuralNetwork.Layer.PoolParameters.customMirror.getter()
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
  v8 = OUTLINED_FUNCTION_38();
  type metadata accessor for NeuralNetwork.Layer.PoolParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2576D325C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257745520;
  *(v10 + 32) = 1684957547;
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 72) = &type metadata for NeuralNetwork.Layer.PoolParameters.Kind;
  NeuralNetwork.Layer.PoolParameters.kind.getter((v10 + 48));
  *(v10 + 80) = 0x69536C656E72656BLL;
  *(v10 + 88) = 0xEA0000000000657ALL;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881238, &unk_257773F10);
  *(v10 + 120) = v11;
  NeuralNetwork.Layer.PoolParameters.kernelSize.getter((v10 + 96));
  OUTLINED_FUNCTION_28_23();
  *(v10 + 128) = v12;
  *(v10 + 136) = 0xE700000000000000;
  *(v10 + 168) = v11;
  NeuralNetwork.Layer.PoolParameters.strides.getter((v10 + 144));
  *(v10 + 176) = 0x676E6964646170;
  *(v10 + 184) = 0xE700000000000000;
  *(v10 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 192));
  NeuralNetwork.Layer.PoolParameters.padding.getter(boxed_opaque_existential_0);
  *(v10 + 224) = 0xD000000000000016;
  *(v10 + 232) = 0x8000000257781570;
  v14 = type metadata accessor for Proto_PoolingLayerParams(0);
  v15 = MEMORY[0x277D839B0];
  *(v10 + 240) = *(v0 + *(v14 + 32));
  *(v10 + 264) = v15;
  *(v10 + 272) = 0xD000000000000011;
  *(v10 + 280) = 0x8000000257781590;
  v16 = *(v0 + *(v14 + 36));
  *(v10 + 312) = v15;
  *(v10 + 288) = v16;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

unint64_t NeuralNetwork.Layer.PoolParameters.Kind.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2576D29C8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.PoolParameters.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

void static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)()
{
  OUTLINED_FUNCTION_31();
  v37 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  v35 = v33 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = (v33 - v20);
  v22 = type metadata accessor for NeuralNetwork.Border(0);
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v26 = (v25 - v24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v36 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v9);
  *v26 = MEMORY[0x277D84F90];
  v34 = v26;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v21 = 0;
  v21[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v21 = v6;
  if (v4 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21[1] = v4;
  v30 = (v21 + *(v18 + 36));
  *v30 = 0;
  v30[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v2 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v30 = v2;
  if ((v37 & 0x8000000000000000) == 0)
  {
    v30[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v33[1] = v13;
    v37 = v9;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_257743FF0;
    sub_2576D325C();
    sub_2576D3204();
    sub_2576D325C();
    sub_2576D3204();
    sub_2574695E4(v21, &qword_27F879AD0, &qword_257777FB0);
    *v34 = v31;
    sub_2576D3204();
    v32 = v36;
    sub_2574695E4(v8 + v36, &qword_27F879AC8, &unk_257744010);
    sub_2576D3204();
    __swift_storeEnumTagSinglePayload(v8 + v32, 0, 1, v37);
    type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t static NeuralNetwork.Layer.PoolParameters.Padding.same(asymmetryMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  type metadata accessor for Proto_SamePadding(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  *(a2 + 8) = 1;
  type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_18_1();

  return swift_storeEnumTagMultiPayload();
}

void static NeuralNetwork.Layer.PoolParameters.Padding.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v36 = v3 - v2;
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(0);
  v5 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881240, &qword_257773F20);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  sub_2576D325C();
  sub_2576D325C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_66();
    sub_2576D325C();
    OUTLINED_FUNCTION_36_13();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_7_37();
      sub_2576D3204();
      _s20MLModelSpecification13NeuralNetworkV22ValidPaddingParametersV2eeoiySbAE_AEtFZ_0();
      sub_2576D32B4(v8, type metadata accessor for NeuralNetwork.ValidPaddingParameters);
      sub_2576D32B4(v15, type metadata accessor for NeuralNetwork.ValidPaddingParameters);
LABEL_22:
      OUTLINED_FUNCTION_0_84();
      sub_2576D32B4(v19, v34);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_16_20();
    v26 = v15;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_1_66();
    sub_2576D325C();
    OUTLINED_FUNCTION_36_13();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_66();
  OUTLINED_FUNCTION_98_2();
  sub_2576D325C();
  OUTLINED_FUNCTION_36_13();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_56();
    v26 = v13;
LABEL_15:
    sub_2576D32B4(v26, v25);
LABEL_16:
    sub_2574695E4(v19, &qword_27F881240, &qword_257773F20);
    goto LABEL_23;
  }

  v21 = v36;
  sub_2576D3204();
  v22 = *v13;
  v23 = *v21;
  if (v13[8])
  {
    v22 = *v13 != 0;
  }

  if (*(v21 + 8) == 1)
  {
    if (v23)
    {
      if (v22 != 1)
      {
LABEL_9:
        OUTLINED_FUNCTION_2_56();
        sub_2576D32B4(v21, v24);
LABEL_21:
        OUTLINED_FUNCTION_2_56();
        sub_2576D32B4(v13, v33);
        goto LABEL_22;
      }
    }

    else if (v22)
    {
      goto LABEL_9;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_9;
  }

  type metadata accessor for Proto_SamePadding(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_11_33();
  sub_2576D3474(v27, v28, MEMORY[0x277D216D0]);
  v29 = sub_257743644();
  OUTLINED_FUNCTION_2_56();
  sub_2576D32B4(v21, v30);
  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_2_56();
  sub_2576D32B4(v13, v31);
  OUTLINED_FUNCTION_0_84();
  sub_2576D32B4(v19, v32);
LABEL_23:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576D3204()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576D325C()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576D32B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576D330C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576D3474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2576D34C0()
{
  result = qword_27F881248;
  if (!qword_27F881248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881248);
  }

  return result;
}

unint64_t sub_2576D3518()
{
  result = qword_27F881250;
  if (!qword_27F881250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881258, &qword_257774098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881250);
  }

  return result;
}

uint64_t sub_2576D367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14PoolParametersV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2576D37C8(uint64_t a1)
{
  type metadata accessor for NeuralNetwork.ValidPaddingParameters(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NeuralNetwork.SamePaddingParameters(319);
    if (v2 <= 0x3F)
    {
      sub_2576D3850();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2576D3850()
{
  if (!qword_27F8812A0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_27F8812A0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return sub_2576D32B4(v0, type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType);
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_17_23()
{

  return sub_2576D3204();
}

__n128 *OUTLINED_FUNCTION_18_33(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x53206C656E72654BLL;
  result[2].n128_u64[1] = 0xEB00000000657A69;
  return result;
}

void OUTLINED_FUNCTION_25_20()
{

  JUMPOUT(0x259C64E90);
}

void *OUTLINED_FUNCTION_31_14()
{

  return __swift_coroFrameAllocStub(v0);
}

void OUTLINED_FUNCTION_40_11()
{

  sub_257469388();
}

void OUTLINED_FUNCTION_41_13()
{

  JUMPOUT(0x259C64E90);
}

uint64_t NeuralNetwork.Extent.init(height:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(type metadata accessor for NeuralNetwork.Extent(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

uint64_t static NeuralNetwork.Extent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_257743644() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NeuralNetwork.Extent(0, a3, a4, v6);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Extent.description.getter(uint64_t a1)
{
  sub_257743984();
  MEMORY[0x259C64E90](38851, 0xA200000000000000);
  sub_257743984();
  return 0;
}

uint64_t sub_2576D3DC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576D3E34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_2576D3F84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t SupportVectorKernel.kind.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_Kernel.OneOf_Kernel(v3);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881328, &qword_257774258);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_2576D4450(v2, v14);
  v19 = 1;
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_2576D4DB4(v14, v10);
    v20 = OUTLINED_FUNCTION_176();
    sub_2576D4E68(v20, v21);
    sub_2576D45F0(v8, v18);
    sub_2576D4E10(v10, type metadata accessor for Proto_Kernel.OneOf_Kernel);
    v19 = 0;
  }

  v22 = type metadata accessor for SupportVectorKernel.Kind(0);
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v22);
  if (__swift_getEnumTagSinglePayload(v18, 1, v22) != 1)
  {
    return sub_2576D4DB4(v18, v0);
  }

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v18, 1, v22);
  if (result != 1)
  {
    return sub_2574695E4(v18, &qword_27F881328, &qword_257774258);
  }

  return result;
}

uint64_t sub_2576D4450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576D44E0(uint64_t a1)
{
  v2 = type metadata accessor for SupportVectorKernel.Kind(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576D4E68(a1, v4);
  return SupportVectorKernel.kind.setter(v4);
}

uint64_t SupportVectorKernel.kind.setter(uint64_t a1)
{
  v2 = v1;
  sub_2574695E4(v2, &qword_27F87FE18, &qword_257768E40);
  sub_2576D4670();
  OUTLINED_FUNCTION_5_45();
  sub_2576D4E10(a1, v4);
  type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2576D45F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  swift_getEnumCaseMultiPayload();
  sub_2576D4DB4(a1, a2);
  type metadata accessor for SupportVectorKernel.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576D4670()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for SupportVectorKernel.Sigmoid(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for SupportVectorKernel.Polynomial(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for SupportVectorKernel.RBF(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for SupportVectorKernel.Linear(0);
  v20 = OUTLINED_FUNCTION_13(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  type metadata accessor for SupportVectorKernel.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_2_57();
  sub_2576D4E68(v2, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_47();
      sub_2576D4DB4(v27, v18);
      v28 = v18;
      break;
    case 2u:
      OUTLINED_FUNCTION_8_37();
      sub_2576D4DB4(v27, v13);
      v28 = v13;
      break;
    case 3u:
      OUTLINED_FUNCTION_7_38();
      sub_2576D4DB4(v27, v8);
      v28 = v8;
      break;
    default:
      OUTLINED_FUNCTION_10_40();
      sub_2576D4DB4(v27, v23);
      v28 = v23;
      break;
  }

  sub_2576D4DB4(v28, v0);
  type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  return swift_storeEnumTagMultiPayload();
}

void (*SupportVectorKernel.kind.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for SupportVectorKernel.Kind(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  SupportVectorKernel.kind.getter();
  return sub_2576D4964;
}

void sub_2576D4964(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2576D4E68(a1[2], v2);
    sub_2574695E4(v4, &qword_27F87FE18, &qword_257768E40);
    sub_2576D4670();
    sub_2576D4E10(v2, type metadata accessor for SupportVectorKernel.Kind);
    type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_2576D4E10(v3, type metadata accessor for SupportVectorKernel.Kind);
  }

  else
  {
    sub_2574695E4(*a1, &qword_27F87FE18, &qword_257768E40);
    sub_2576D4670();
    OUTLINED_FUNCTION_5_45();
    sub_2576D4E10(v3, v9);
    type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  free(v3);

  free(v2);
}

uint64_t sub_2576D4A84()
{
  v1 = v0;
  v2 = type metadata accessor for SupportVectorKernel.Sigmoid(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for SupportVectorKernel.Polynomial(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for SupportVectorKernel.RBF(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  type metadata accessor for SupportVectorKernel.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_2_57();
  sub_2576D4E68(v1, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_47();
      sub_2576D4DB4(v20, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      inited = swift_initStackObject();
      v25 = OUTLINED_FUNCTION_356(inited, xmmword_257743FF0);
      v25[3] = xmmword_257774220;
      v25[4].n128_u8[0] = 0;
      OUTLINED_FUNCTION_21_26();
      *(v26 + 72) = v27;
      *(v26 + 80) = v28;
      inited[5].n128_u64[1] = sub_257743674();
      inited[6].n128_u64[0] = v29;
      inited[6].n128_u8[8] = 0;
      v21 = sub_2576A6964(inited);
      OUTLINED_FUNCTION_1_68();
      v23 = v16;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_8_37();
      sub_2576D4DB4(v20, v11);
      v21 = sub_2576D4EC4();
      OUTLINED_FUNCTION_4_49();
      v23 = v11;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_7_38();
      sub_2576D4DB4(v20, v6);
      v21 = sub_2576D4FBC();
      OUTLINED_FUNCTION_3_61();
      v23 = v6;
LABEL_6:
      sub_2576D4E10(v23, v22);
      break;
    default:
      sub_2576D4E10(v20, type metadata accessor for SupportVectorKernel.Kind);
      v21 = 0x7261656E694CLL;
      break;
  }

  return v21;
}

uint64_t SupportVectorKernel.init(kind:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_Kernel.OneOf_Kernel(v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  type metadata accessor for Proto_Kernel(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574695E4(v1, &qword_27F87FE18, &qword_257768E40);
  sub_2576D4670();
  OUTLINED_FUNCTION_5_45();
  sub_2576D4E10(a1, v5);
  OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

uint64_t sub_2576D4DB4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576D4E10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576D4E68(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2576D4EC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_356(inited, xmmword_257744E70);
  v1[3] = xmmword_257774230;
  v1[4].n128_u8[0] = 0;
  v1[4].n128_u64[1] = 0x656572676544;
  v1[5].n128_u64[0] = 0xE600000000000000;
  inited[5].n128_u64[1] = sub_257743674();
  inited[6].n128_u64[0] = v2;
  inited[6].n128_u8[8] = 0;
  OUTLINED_FUNCTION_23_23();
  inited[7].n128_u64[0] = v3;
  inited[7].n128_u64[1] = v4;
  inited[8].n128_u64[0] = sub_257743674();
  inited[8].n128_u64[1] = v5;
  inited[9].n128_u8[0] = 0;
  OUTLINED_FUNCTION_21_26();
  inited[9].n128_u64[1] = v6;
  inited[10].n128_u64[0] = v7;
  inited[10].n128_u64[1] = sub_257743674();
  inited[11].n128_u64[0] = v8;
  inited[11].n128_u8[8] = 0;
  return sub_2576A6964(inited);
}

uint64_t sub_2576D4FBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_356(inited, xmmword_2577442C0);
  v1[3] = xmmword_257774240;
  v1[4].n128_u8[0] = 0;
  OUTLINED_FUNCTION_23_23();
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  inited[5].n128_u64[1] = sub_257743674();
  inited[6].n128_u64[0] = v5;
  inited[6].n128_u8[8] = 0;
  OUTLINED_FUNCTION_21_26();
  inited[7].n128_u64[0] = v6;
  inited[7].n128_u64[1] = v7;
  inited[8].n128_u64[0] = sub_257743674();
  inited[8].n128_u64[1] = v8;
  inited[9].n128_u8[0] = 0;
  return sub_2576A6964(inited);
}

uint64_t static SupportVectorKernel.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = type metadata accessor for SupportVectorKernel.Sigmoid(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v73 = (v6 - v5);
  v7 = type metadata accessor for SupportVectorKernel.Polynomial(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v72 = v10 - v9;
  v11 = type metadata accessor for SupportVectorKernel.RBF(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v71 = (v14 - v13);
  v15 = type metadata accessor for SupportVectorKernel.Linear(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  type metadata accessor for SupportVectorKernel.Kind(0);
  OUTLINED_FUNCTION_4();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v71 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v71 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881330, qword_257774260);
  v33 = OUTLINED_FUNCTION_13(v32);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v71 - v35;
  v37 = *(v34 + 56);
  sub_2576D4E68(a1, &v71 - v35);
  sub_2576D4E68(v74, &v36[v37]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_57();
      sub_2576D4E68(v36, v29);
      if (OUTLINED_FUNCTION_28_24() != 1)
      {
        OUTLINED_FUNCTION_1_68();
        v39 = v29;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_6_47();
      v52 = v71;
      sub_2576D4DB4(&v36[v37], v71);
      if (*v29 == *v52)
      {
        type metadata accessor for Proto_RBFKernel(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_86();
        sub_2576D6444(v53, v54, MEMORY[0x277D216D0]);
        v55 = sub_257743644();
        OUTLINED_FUNCTION_1_68();
        sub_2576D4E10(v52, v56);
        if (v55)
        {
          OUTLINED_FUNCTION_1_68();
          v46 = v29;
          goto LABEL_19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_68();
        sub_2576D4E10(v52, v68);
      }

      OUTLINED_FUNCTION_1_68();
      v61 = v29;
      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_2_57();
      sub_2576D4E68(v36, v26);
      if (OUTLINED_FUNCTION_28_24() != 2)
      {
        OUTLINED_FUNCTION_4_49();
        v39 = v26;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_8_37();
      v40 = v72;
      sub_2576D4DB4(&v36[v37], v72);
      if (*v26 == *v40 && v26[1] == *(v40 + 8) && v26[2] == *(v40 + 16))
      {
        type metadata accessor for Proto_PolyKernel(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_86();
        sub_2576D6444(v41, v42, MEMORY[0x277D216D0]);
        v43 = sub_257743644();
        OUTLINED_FUNCTION_4_49();
        sub_2576D4E10(v40, v44);
        if (v43)
        {
          OUTLINED_FUNCTION_4_49();
          v46 = v26;
          goto LABEL_19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_49();
        sub_2576D4E10(v40, v59);
      }

      OUTLINED_FUNCTION_4_49();
      v61 = v26;
      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_2_57();
      sub_2576D4E68(v36, v23);
      if (OUTLINED_FUNCTION_28_24() != 3)
      {
        OUTLINED_FUNCTION_3_61();
        v39 = v23;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_7_38();
      v47 = v73;
      sub_2576D4DB4(&v36[v37], v73);
      if (*v23 == *v47 && v23[1] == v47[1])
      {
        type metadata accessor for Proto_SigmoidKernel(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_86();
        sub_2576D6444(v48, v49, MEMORY[0x277D216D0]);
        v50 = sub_257743644();
        OUTLINED_FUNCTION_3_61();
        sub_2576D4E10(v47, v51);
        if (v50)
        {
          OUTLINED_FUNCTION_3_61();
          v46 = v23;
LABEL_19:
          sub_2576D4E10(v46, v45);
          OUTLINED_FUNCTION_5_45();
          sub_2576D4E10(v36, v57);
          v58 = 1;
          return v58 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_61();
        sub_2576D4E10(v47, v67);
      }

      OUTLINED_FUNCTION_3_61();
      v61 = v23;
LABEL_31:
      sub_2576D4E10(v61, v60);
      OUTLINED_FUNCTION_5_45();
      sub_2576D4E10(v36, v69);
      goto LABEL_32;
    default:
      OUTLINED_FUNCTION_2_57();
      sub_2576D4E68(v36, v31);
      if (OUTLINED_FUNCTION_28_24())
      {
        OUTLINED_FUNCTION_18_34();
        v39 = v31;
LABEL_23:
        sub_2576D4E10(v39, v38);
        sub_2574695E4(v36, &qword_27F881330, qword_257774260);
LABEL_32:
        v58 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_10_40();
        sub_2576D4DB4(&v36[v37], v19);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_86();
        sub_2576D6444(v62, v63, MEMORY[0x277D216D0]);
        v58 = sub_257743644();
        sub_2576D4E10(v19, type metadata accessor for SupportVectorKernel.Linear);
        v64 = OUTLINED_FUNCTION_176();
        sub_2576D4E10(v64, v65);
        OUTLINED_FUNCTION_5_45();
        sub_2576D4E10(v36, v66);
      }

      return v58 & 1;
  }
}

uint64_t SupportVectorKernel.Kind.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for SupportVectorKernel.Sigmoid(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for SupportVectorKernel.Polynomial(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for SupportVectorKernel.RBF(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for SupportVectorKernel.Linear(0);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  type metadata accessor for SupportVectorKernel.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_2_57();
  sub_2576D4E68(v0, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_47();
      sub_2576D4DB4(v25, v16);
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_RBFKernel(0);
      sub_2576D6444(&qword_27F87FF10, type metadata accessor for Proto_RBFKernel, &unk_25776A080);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_1_68();
      v27 = v16;
      break;
    case 2u:
      OUTLINED_FUNCTION_8_37();
      sub_2576D4DB4(v25, v11);
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_PolyKernel(0);
      sub_2576D6444(&qword_27F87FF00, type metadata accessor for Proto_PolyKernel, &unk_25776A0C0);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_4_49();
      v27 = v11;
      break;
    case 3u:
      OUTLINED_FUNCTION_7_38();
      sub_2576D4DB4(v25, v6);
      MEMORY[0x259C651F0](3);
      type metadata accessor for Proto_SigmoidKernel(0);
      sub_2576D6444(&qword_27F87FEF0, type metadata accessor for Proto_SigmoidKernel, &unk_25776A100);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_3_61();
      v27 = v6;
      break;
    default:
      OUTLINED_FUNCTION_10_40();
      sub_2576D4DB4(v25, v21);
      MEMORY[0x259C651F0](0);
      type metadata accessor for Proto_LinearKernel(0);
      sub_2576D6444(&qword_27F87FF20, type metadata accessor for Proto_LinearKernel, &unk_25776A040);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_18_34();
      v27 = v21;
      break;
  }

  return sub_2576D4E10(v27, v26);
}

uint64_t SupportVectorKernel.Kind.hashValue.getter()
{
  sub_257743A14();
  SupportVectorKernel.Kind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_2576D5A60(uint64_t a1)
{
  sub_257743A14();
  SupportVectorKernel.Kind.hash(into:)();
  return sub_257743A64();
}

uint64_t static SupportVectorKernel.Linear.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_86();
  sub_2576D6444(v2, v3, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

double (*SupportVectorKernel.RBF.scale.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_2576C63E8;
}

uint64_t SupportVectorKernel.RBF.init(scale:)(double a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_RBFKernel(v3);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = a1;
  return result;
}

BOOL static SupportVectorKernel.RBF.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    type metadata accessor for Proto_RBFKernel(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_86();
    v5 = sub_2576D6444(v3, v4, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      return 1;
    }
  }

  return result;
}

uint64_t SupportVectorKernel.Polynomial.degree.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*SupportVectorKernel.Polynomial.degree.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576D5E3C;
}

uint64_t sub_2576D5E3C(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *result < 0xFFFFFFFF80000000;
  if (a2)
  {
    if (*result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 = v2 < 0x7FFFFFFF;
    if (v2 <= 0x7FFFFFFF)
    {
LABEL_7:
      **(result + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

double (*SupportVectorKernel.Polynomial.constant.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576C6434;
}

double (*SupportVectorKernel.Polynomial.scale.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_2576D5F00;
}

double sub_2576D5F00(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

uint64_t SupportVectorKernel.Polynomial.init(degree:constant:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  type metadata accessor for Proto_PolyKernel(0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *a2 = a1;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
    return result;
  }

  __break(1u);
  return result;
}

BOOL static SupportVectorKernel.Polynomial.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_34_3(a1);
    if (v4)
    {
      if (*(v3 + 16) == *(v2 + 16))
      {
        type metadata accessor for Proto_PolyKernel(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_86();
        v7 = sub_2576D6444(v5, v6, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v7))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double (*SupportVectorKernel.Sigmoid.constant.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576D6AA4;
}

double (*SupportVectorKernel.Sigmoid.scale.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_2576D6A9C;
}

uint64_t SupportVectorKernel.Sigmoid.init(constant:scale:)(double a1, double a2)
{
  v5 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_SigmoidKernel(v5);
  *v2 = 0.0;
  v2[1] = 0.0;
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a2;
  v2[1] = a1;
  return result;
}

BOOL static SupportVectorKernel.Sigmoid.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_34_3(a1);
    if (v2)
    {
      type metadata accessor for Proto_SigmoidKernel(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_86();
      v5 = sub_2576D6444(v3, v4, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v5))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2576D62FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(0);
  v6 = OUTLINED_FUNCTION_176();
  sub_2576D6444(v6, v7, a5);

  return sub_2577435F4();
}

uint64_t sub_2576D63B8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743A14();
  a1(0);
  v6 = OUTLINED_FUNCTION_176();
  sub_2576D6444(v6, v7, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576D6444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576D64D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_257743A14();
  a4(0);
  v9 = OUTLINED_FUNCTION_176();
  sub_2576D6444(v9, v10, a7);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576D6888(uint64_t a1)
{
  result = type metadata accessor for SupportVectorKernel.Linear(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SupportVectorKernel.RBF(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SupportVectorKernel.Polynomial(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SupportVectorKernel.Sigmoid(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2576D6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_24()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t NeuralNetwork.TensorDescriptor.rank.setter(unint64_t result)
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

unint64_t *(*NeuralNetwork.TensorDescriptor.rank.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25767E390;
}

uint64_t NeuralNetwork.TensorDescriptor.shape.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
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

uint64_t NeuralNetwork.TensorDescriptor.shape.setter(uint64_t a1)
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

  *(v3 + 8) = v4;
  return result;
}

uint64_t (*NeuralNetwork.TensorDescriptor.shape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.TensorDescriptor.shape.getter();
  return sub_2576D6E28;
}

uint64_t sub_2576D6E28(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.TensorDescriptor.shape.setter(*a1);
  }

  NeuralNetwork.TensorDescriptor.shape.setter(v2);
}

uint64_t NeuralNetwork.TensorDescriptor.init(shape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Proto_Tensor(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(a1 + 16);
  if (HIDWORD(v6))
  {
    __break(1u);
  }

  else
  {
    *a2 = v6;
    if (v6)
    {
      OUTLINED_FUNCTION_5_21();
      v7 = v12;
      do
      {
        OUTLINED_FUNCTION_4_16();
        if (v9)
        {
          v11 = OUTLINED_FUNCTION_2_26(v8);
          sub_2574845B8(v11, v2, 1);
          v7 = v12;
        }

        OUTLINED_FUNCTION_1_28();
      }

      while (!v10);
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    *(a2 + 8) = v7;
  }

  return result;
}

BOOL static NeuralNetwork.TensorDescriptor.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 == *a2 && (sub_257487374() & 1) != 0)
  {
    type metadata accessor for Proto_Tensor(0);
    sub_2577431B4();
    sub_2576D735C(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.TensorDescriptor.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  MEMORY[0x28223BE20](v8);
  sub_2576D72B0(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257743FF0;
  *(v10 + 32) = 1802396018;
  *(v10 + 40) = 0xE400000000000000;
  v11 = MEMORY[0x277D83B88];
  *(v10 + 48) = *v0;
  *(v10 + 72) = v11;
  *(v10 + 80) = 0x6570616873;
  *(v10 + 88) = 0xE500000000000000;
  v12 = NeuralNetwork.TensorDescriptor.shape.getter();
  *(v10 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v10 + 96) = v12;
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.TensorDescriptor(uint64_t a1)
{
  result = qword_27F8813C0;
  if (!qword_27F8813C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576D72B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576D735C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576D73CC(uint64_t a1)
{
  result = type metadata accessor for Proto_Tensor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576D7438(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for SizeRange(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  if (a2 <= 2)
  {
    v34 = a3;
    v35 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v14 = sub_257743604();
    v16 = v15;
    sub_25746996C();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19 >= *(v17 + 24) >> 1)
    {
      sub_25746996C();
      v18 = v30;
    }

    *(v18 + 16) = v19 + 1;
    v20 = v18 + 48 * v19;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xD00000000000004ALL;
    *(v20 + 48) = 0x80000002577815E0;
    *(v20 + 56) = 2;
    *(v20 + 64) = v14;
    *(v20 + 72) = v16;
    v36 = v18;
    a3 = v34;
  }

  FeatureType.SequenceParameters.sizeRange.getter();
  v35 = a1;

  sub_25763D200(&unk_2868B42E8);
  sub_25773ADC0(&v35);

  sub_257693DDC(v13);
  sub_25763D14C(v35);
  v21 = type metadata accessor for FeatureType.SequenceParameters(0);
  sub_2576D7768(v4 + *(v21 + 20), v10);
  v22 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v22);
  sub_2576D77D8(v10);
  if (EnumTagSinglePayload == 1)
  {
    v35 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v24 = sub_257743604();
    v26 = v25;
    v27 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25746996C();
      v27 = v31;
    }

    v28 = *(v27 + 16);
    if (v28 >= *(v27 + 24) >> 1)
    {
      sub_25746996C();
      v27 = v32;
    }

    *(v27 + 16) = v28 + 1;
    v29 = v27 + 48 * v28;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0xD00000000000002DLL;
    *(v29 + 48) = 0x80000002577815B0;
    *(v29 + 56) = 2;
    *(v29 + 64) = v24;
    *(v29 + 72) = v26;
  }

  else
  {
    v27 = v36;
  }

  *a3 = v27;
}

uint64_t sub_2576D7768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576D77D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576D7840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  MEMORY[0x259C64E90](v1[1], v1[2]);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  *(inited + 88) = 34;
  *(inited + 96) = 0xE100000000000000;
  *(inited + 104) = 0;
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000257780DA0;
  sub_257486740(v1[3], v1[4]);
  *(inited + 128) = sub_257743674();
  *(inited + 136) = v4;
  *(inited + 144) = 0;
  return sub_2576A6964(inited);
}

unint64_t WordEmbeddingConfiguration.revision.setter(unint64_t result)
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

unint64_t *(*WordEmbeddingConfiguration.revision.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25767E390;
}

uint64_t WordEmbeddingConfiguration.language.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2576D79E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordEmbeddingConfiguration.language.setter(v1, v2);
}

uint64_t WordEmbeddingConfiguration.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*WordEmbeddingConfiguration.language.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t WordEmbeddingConfiguration.modelParameterData.getter()
{
  v1 = *(v0 + 24);
  sub_257486740(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_2576D7AE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return WordEmbeddingConfiguration.modelParameterData.setter(v1, v2);
}

uint64_t WordEmbeddingConfiguration.modelParameterData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*WordEmbeddingConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_257688698;
}

uint64_t WordEmbeddingConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static WordEmbeddingConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    if (v4 || (sub_257743994()) && (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
    {
      type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
      sub_2577431B4();
      sub_2576D8064(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t WordEmbeddingConfiguration.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for WordEmbeddingConfiguration(0);
  MEMORY[0x28223BE20](v10);
  sub_2576D7FB4(v2, v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442C0;
  *(v12 + 32) = 0x6E6F697369766572;
  *(v12 + 40) = 0xE800000000000000;
  v13 = MEMORY[0x277D83B88];
  *(v12 + 48) = *v2;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0x65676175676E616CLL;
  v14 = v2[1];
  v15 = v2[2];
  v16 = MEMORY[0x277D837D0];
  *(v12 + 88) = 0xE800000000000000;
  *(v12 + 96) = v14;
  *(v12 + 104) = v15;
  *(v12 + 120) = v16;
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 168) = MEMORY[0x277CC9318];
  v18 = v2[3];
  v17 = v2[4];
  *(v12 + 136) = 0x800000025777AB50;
  *(v12 + 144) = v18;
  *(v12 + 152) = v17;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  (*(v4 + 104))(v6, *MEMORY[0x277D84C38], v3);

  sub_257486740(v18, v17);
  return sub_257743AA4();
}

uint64_t type metadata accessor for WordEmbeddingConfiguration(uint64_t a1)
{
  result = qword_281537940;
  if (!qword_281537940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576D7FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordEmbeddingConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576D8064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576D80D4(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_WordEmbedding(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576D8140()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 32) = 0xD000000000000016;
  *(v7 + 40) = v8;
  v87 = v0;
  v9 = ItemSimilarityRecommenderConfiguration.itemItemSimilarities.getter();
  v10 = *(v9 + 16);
  v85 = inited;
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_35_14(MEMORY[0x277D84F90]);
    sub_257484040(v11, v10, 0);
    v12 = v88;
    OUTLINED_FUNCTION_193();
    v14 = v9 + v13;
    v15 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_13_26();
      sub_2576DADCC();
      sub_2576D9BFC();
      v17 = v16;
      v19 = v18;
      OUTLINED_FUNCTION_18_35();
      v88 = v12;
      v9 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v9 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_174(v20);
        sub_257484040(v22, v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v21 = v12 + 24 * v9;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      *(v21 + 48) = 2;
      v14 += v15;
      --v10;
    }

    while (v10);

    inited = v85;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v12;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  ItemSimilarityRecommenderConfiguration.itemStringIDs.getter();
  if (v23)
  {
    v1 = v23;
    inited = *(v23 + 16);
    if (inited)
    {
      v24 = OUTLINED_FUNCTION_35_14(MEMORY[0x277D84F90]);
      sub_257484040(v24, inited, 0);
      v12 = 0;
      v25 = v88;
      v9 = v1 + 40;
      while (1)
      {
        v26 = *(v1 + 16);
        if (v12 >= v26)
        {
          break;
        }

        v28 = *(v9 - 8);
        v27 = *v9;
        v88 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);

        if (v30 >= v29 >> 1)
        {
          sub_257484040((v29 > 1), v30 + 1, 1);
        }

        ++v12;
        *(v25 + 16) = v30 + 1;
        v31 = v25 + 24 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        *(v31 + 48) = 0;
        v9 += 16;
        if (inited == v12)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_17:
    v12 = 2;
    v9 = 1;
    sub_257469AE0();
    inited = v32;
    *(v32 + 16) = 2;
    *(v32 + 72) = 0x727453206D657449;
    *(v32 + 80) = 0xEF73444920676E69;
    *(v32 + 88) = v25;
    *(v32 + 96) = 0;
    *(v32 + 104) = 1;
  }

  v25 = v87;
  ItemSimilarityRecommenderConfiguration.itemIntIDs.getter();
  if (v33)
  {
    v1 = v33;
    v86 = inited;
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_35_14(MEMORY[0x277D84F90]);
      sub_257484040(v35, v34, 0);
      v36 = 32;
      v37 = v88;
      v9 = 24;
      do
      {
        v38 = sub_257743674();
        v40 = v39;
        v88 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        if (v42 >= v41 >> 1)
        {
          v44 = OUTLINED_FUNCTION_174(v41);
          sub_257484040(v44, v42 + 1, 1);
        }

        *(v37 + 16) = v42 + 1;
        v43 = v37 + 24 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        *(v43 + 48) = 0;
        v36 += 8;
        --v34;
      }

      while (v34);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    inited = v86;
    v12 = *(v86 + 16);
    v45 = *(v86 + 24);
    v25 = v12 + 1;
    if (v12 >= v45 >> 1)
    {
      OUTLINED_FUNCTION_1_69(v45);
      sub_257469AE0();
      inited = v84;
    }

    *(inited + 16) = v25;
    v46 = inited + 40 * v12;
    strcpy((v46 + 32), "Item Int IDs");
    *(v46 + 45) = 0;
    *(v46 + 46) = -5120;
    *(v46 + 48) = v37;
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
  }

  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_6_48();
  if (v48)
  {
LABEL_42:
    OUTLINED_FUNCTION_1_69(v26);
    sub_257469AE0();
    v47 = v80;
  }

  *(v47 + 16) = v25;
  v49 = v47 + 40 * inited;
  v50 = v47;
  *(v49 + 32) = 0x706E49206D657449;
  *(v49 + 40) = 0xEF656D614E207475;
  *(v49 + 48) = v9;
  *(v49 + 56) = v1;
  *(v49 + 64) = 0;
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_48_5();
  if (v48)
  {
    OUTLINED_FUNCTION_1_69(v51);
    sub_257469AE0();
    v50 = v81;
  }

  OUTLINED_FUNCTION_23_7();
  *(v50 + 16) = v25;
  OUTLINED_FUNCTION_20_21();
  v54[4] = v52 + 6;
  v54[5] = v53;
  v54[6] = v12;
  v54[7] = v9;
  OUTLINED_FUNCTION_46_10();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_6_48();
  if (v48)
  {
    OUTLINED_FUNCTION_1_69(v55);
    sub_257469AE0();
  }

  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_28_25(v56, v57, v58, v59);
  v61[4] = v62;
  v61[5] = v60;
  v61[6] = v9;
  v61[7] = v1;
  OUTLINED_FUNCTION_46_10();
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_48_5();
  if (v48)
  {
    OUTLINED_FUNCTION_1_69(v63);
    sub_257469AE0();
    v50 = v82;
  }

  OUTLINED_FUNCTION_23_7();
  *(v50 + 16) = v25;
  OUTLINED_FUNCTION_20_21();
  v65[4] = v66;
  v65[5] = v64;
  v65[6] = v12;
  v65[7] = v9;
  OUTLINED_FUNCTION_46_10();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_6_48();
  if (v48)
  {
    OUTLINED_FUNCTION_1_69(v67);
    sub_257469AE0();
  }

  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_28_25(v68, v69, v70, v71);
  v74[4] = v72 + 4;
  v74[5] = v73;
  v74[6] = v9;
  v74[7] = v1;
  OUTLINED_FUNCTION_46_10();
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_316();
  v76 = *(v50 + 16);
  v75 = *(v50 + 24);
  if (v76 >= v75 >> 1)
  {
    OUTLINED_FUNCTION_174(v75);
    sub_257469AE0();
    v50 = v83;
  }

  OUTLINED_FUNCTION_23_7();
  *(v50 + 16) = v76 + 1;
  OUTLINED_FUNCTION_20_21();
  *(v79 + 32) = v77 + 10;
  *(v79 + 40) = v78;
  *(v79 + 48) = v88;
  *(v79 + 56) = v89;
  *(v79 + 64) = 0;
  sub_2576AACFC(v50);
  OUTLINED_FUNCTION_35();
}

uint64_t ItemSimilarityRecommenderConfiguration.itemInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendationCountInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.itemInclusionInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.itemExclusionInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendedItemsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendedItemScoresOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.itemItemSimilarities.getter()
{
  v2 = type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v4 = *v0;
  v5 = *(*v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_17_2();
    sub_257484190(v7, v8, v9);
    v6 = v19;
    v10 = type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
    OUTLINED_FUNCTION_24(v10);
    v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_12_35();
      sub_2576DADCC();
      OUTLINED_FUNCTION_24_2();
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_174(v15);
        sub_257484190(v17, v1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_2576DAE24();
      v12 += v14;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void ItemSimilarityRecommenderConfiguration.itemItemSimilarities.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v7 = type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_2574850A8(v10, v11, v12);
    v13 = v20;
    OUTLINED_FUNCTION_193();
    v15 = v0 + v14;
    v16 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_13_26();
      sub_2576DADCC();
      OUTLINED_FUNCTION_12_35();
      sub_2576DADCC();
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_27_2();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_174(v17);
        sub_2574850A8(v19, v6, 1);
        v13 = v20;
      }

      *(v13 + 16) = v6;
      OUTLINED_FUNCTION_193();
      sub_2576DAE24();
      v15 += v16;
      --v9;
    }

    while (v9);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *v1 = v13;
  OUTLINED_FUNCTION_35();
}

uint64_t (*ItemSimilarityRecommenderConfiguration.itemItemSimilarities.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = ItemSimilarityRecommenderConfiguration.itemItemSimilarities.getter();
  return sub_2576D8DAC;
}

void ItemSimilarityRecommenderConfiguration.itemStringIDs.getter()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_15();
  MEMORY[0x28223BE20](v10);
  v11 = *(OUTLINED_FUNCTION_55_7() + 48);
  OUTLINED_FUNCTION_54_6();
  OUTLINED_FUNCTION_35_12(v2);
  OUTLINED_FUNCTION_53_5();
  if (v3 != 1)
  {
    sub_257487308(v0 + v11);
    OUTLINED_FUNCTION_35_0(v1);
    if (v12)
    {
      *v7 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_35_0(v1);
      if (!v12)
      {
        sub_2574695E4(v1, &qword_27F87A878, &unk_257748700);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_87();
      sub_2576DAE24();
    }

    OUTLINED_FUNCTION_15_21();
    sub_2576DAE7C();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t ItemSimilarityRecommenderConfiguration.itemStringIDs.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  if (a1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v2 = a1;
    v6 = *(type metadata accessor for Proto_ItemSimilarityRecommender(0) + 48);
    sub_2574695E4(v1 + v6, &qword_27F87A878, &unk_257748700);
    OUTLINED_FUNCTION_0_87();
    sub_2576DAE24();
    return __swift_storeEnumTagSinglePayload(v1 + v6, 0, 1, v4);
  }

  else
  {
    v8 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
    sub_2574695E4(v1 + *(v8 + 48), &qword_27F87A878, &unk_257748700);
    v9 = OUTLINED_FUNCTION_39_12();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void (*ItemSimilarityRecommenderConfiguration.itemStringIDs.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[1] = v1;
  v3[2] = type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[3] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v3[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[5] = v10;
  v11 = __swift_coroFrameAllocStub(v9);
  v3[6] = v11;
  v12 = *(type metadata accessor for Proto_ItemSimilarityRecommender(0) + 48);
  *(v3 + 14) = v12;
  sub_257487308(v1 + v12);
  v13 = OUTLINED_FUNCTION_35_12(v11);
  sub_2574695E4(v11, &qword_27F87A878, &unk_257748700);
  v14 = 0;
  if (v13 != 1)
  {
    sub_257487308(v1 + v12);
    OUTLINED_FUNCTION_35_0(v10);
    if (v15)
    {
      *v6 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_35_0(v10);
      if (!v15)
      {
        sub_2574695E4(v10, &qword_27F87A878, &unk_257748700);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_87();
      sub_2576DAE24();
    }

    v14 = *v6;

    OUTLINED_FUNCTION_15_21();
    sub_2576DAE7C();
  }

  *v3 = v14;
  return sub_2576D926C;
}

void sub_2576D926C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    v5 = v2[5];
    v4 = v2[6];
    v7 = v2[3];
    v6 = v2[4];

    ItemSimilarityRecommenderConfiguration.itemStringIDs.setter(v8);
  }

  else
  {
    v9 = *(v2 + 14);
    if (v3)
    {
      v10 = v2[3];
      v11 = v2[1];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v3;
      sub_2574695E4(v11 + v9, &qword_27F87A878, &unk_257748700);
      OUTLINED_FUNCTION_0_87();
      sub_2576DAE24();
      v12 = 0;
    }

    else
    {
      sub_2574695E4(v2[1] + v9, &qword_27F87A878, &unk_257748700);
      v12 = 1;
    }

    v5 = v2[5];
    v4 = v2[6];
    v7 = v2[3];
    v6 = v2[4];
    __swift_storeEnumTagSinglePayload(v2[1] + *(v2 + 14), v12, 1, v2[2]);
  }

  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

void ItemSimilarityRecommenderConfiguration.itemIntIDs.getter()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_15();
  MEMORY[0x28223BE20](v10);
  v11 = *(OUTLINED_FUNCTION_55_7() + 52);
  OUTLINED_FUNCTION_54_6();
  OUTLINED_FUNCTION_35_12(v2);
  OUTLINED_FUNCTION_53_5();
  if (v3 != 1)
  {
    sub_257487308(v0 + v11);
    v12 = OUTLINED_FUNCTION_35_12(v1);
    v13 = MEMORY[0x277D84F90];
    if (v12 == 1)
    {
      *v7 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_35_0(v1);
      if (!v14)
      {
        sub_2574695E4(v1, &qword_27F87A880, &qword_25774AFD0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
      sub_2576DAE24();
    }

    v15 = *v7;

    sub_2576DAE7C();
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_257483724(0, v16, 0);
      v17 = *(v13 + 16);
      v18 = 32;
      do
      {
        v19 = *(v15 + v18);
        v20 = *(v13 + 24);
        if (v17 >= v20 >> 1)
        {
          v21 = OUTLINED_FUNCTION_174(v20);
          sub_257483724(v21, v17 + 1, 1);
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v19;
        v18 += 8;
        ++v17;
        --v16;
      }

      while (v16);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t ItemSimilarityRecommenderConfiguration.itemIntIDs.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  if (a1)
  {
    sub_25764CFE8(a1);
    v5 = *(type metadata accessor for Proto_ItemSimilarityRecommender(0) + 52);
    sub_2574695E4(v1 + v5, &qword_27F87A880, &qword_25774AFD0);
    OUTLINED_FUNCTION_4_50();
    sub_2576DAE24();
    return __swift_storeEnumTagSinglePayload(v1 + v5, 0, 1, v3);
  }

  else
  {
    v7 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
    sub_2574695E4(v1 + *(v7 + 52), &qword_27F87A880, &qword_25774AFD0);
    v8 = OUTLINED_FUNCTION_39_12();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void (*ItemSimilarityRecommenderConfiguration.itemIntIDs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for Proto_Int64Vector(0);
  a1[2] = v3;
  OUTLINED_FUNCTION_13(v3);
  a1[3] = __swift_coroFrameAllocStub(*(v4 + 64));
  ItemSimilarityRecommenderConfiguration.itemIntIDs.getter();
  *a1 = v5;
  return sub_2576D975C;
}

void sub_2576D975C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[3];

    ItemSimilarityRecommenderConfiguration.itemIntIDs.setter(v4);
  }

  else
  {
    if (*a1)
    {
      v3 = a1[3];
      v5 = a1[1];
      sub_25764CFE8(*a1);
      v6 = v5 + *(type metadata accessor for Proto_ItemSimilarityRecommender(0) + 52);
      sub_2574695E4(v6, &qword_27F87A880, &qword_25774AFD0);
      OUTLINED_FUNCTION_4_50();
      sub_2576DAE24();
      v7 = 0;
    }

    else
    {
      v8 = a1[1];
      v6 = v8 + *(type metadata accessor for Proto_ItemSimilarityRecommender(0) + 52);
      sub_2574695E4(v6, &qword_27F87A880, &qword_25774AFD0);
      v3 = a1[3];
      v7 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v7, 1, a1[2]);
  }

  free(v3);
}

uint64_t ItemSimilarityRecommenderConfiguration.itemInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 16), *(v0 + 8));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendationCountInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 32), *(v0 + 24));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t ItemSimilarityRecommenderConfiguration.itemInclusionInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 48), *(v0 + 40));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t ItemSimilarityRecommenderConfiguration.itemExclusionInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 64), *(v0 + 56));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendedItemsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 80), *(v0 + 72));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t ItemSimilarityRecommenderConfiguration.recommendedItemScoresOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 96), *(v0 + 88));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576D9B8C()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 88) = v1;
    *(v2 + 96) = v0;
  }

  else
  {

    *(v2 + 88) = v1;
    *(v2 + 96) = v0;
  }

  return result;
}

void sub_2576D9BFC()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x4449206D657449;
  *(inited + 40) = 0xE700000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v7 = inited;
  *(inited + 48) = sub_257743674();
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  strcpy((v7 + 72), "Similar Items");
  *(v7 + 86) = -4864;
  v9 = ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = v7;
    v32 = v0;
    v34 = MEMORY[0x277D84F90];
    sub_257484040(0, v10, 0);
    v11 = v34;
    OUTLINED_FUNCTION_193();
    v13 = v9 + v12;
    OUTLINED_FUNCTION_23_7();
    v33 = v14;
    v15 = *(v5 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_10_41();
      sub_2576DADCC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_257743FF0;
      *(v16 + 32) = 0x4449206D657449;
      *(v16 + 40) = 0xE700000000000000;
      if ((*v1 & 0x8000000000000000) != 0)
      {
        break;
      }

      v17 = v16;
      *(v16 + 48) = sub_257743674();
      *(v17 + 56) = v18;
      *(v17 + 64) = 0;
      *(v17 + 72) = 0xD000000000000010;
      *(v17 + 80) = v33;
      *(v17 + 88) = sub_257743674();
      *(v17 + 96) = v19;
      *(v17 + 104) = 0;
      v20 = sub_2576A6964(v17);
      v22 = v21;
      OUTLINED_FUNCTION_19_26();
      v24 = *(v34 + 16);
      v23 = *(v34 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_174(v23);
        sub_257484040(v26, v24 + 1, 1);
      }

      *(v34 + 16) = v24 + 1;
      v25 = v34 + 24 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      *(v25 + 48) = 2;
      v13 += v15;
      if (!--v10)
      {

        v0 = v32;
        v7 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_10:
  *(v7 + 88) = v11;
  *(v7 + 96) = 0;
  *(v7 + 104) = 1;
  if (*(v0 + 16) != 0.0)
  {
    v27 = sub_257743674();
    v29 = v28;
    sub_257469AE0();
    v7 = v30;
    *(v30 + 16) = 3;
    *(v30 + 112) = 0xD000000000000010;
    *(v30 + 120) = 0x80000002577817D0;
    *(v30 + 128) = v27;
    *(v30 + 136) = v29;
    *(v30 + 144) = 0;
  }

  sub_2576AACFC(v7);
  OUTLINED_FUNCTION_35();
}

uint64_t ItemSimilarityRecommenderConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  a1[11] = 0;
  a1[12] = 0xE000000000000000;
  v2 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(v2 + 48);
  v4 = type metadata accessor for Proto_StringVector(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 52);
  v6 = type metadata accessor for Proto_Int64Vector(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

void ItemSimilarityRecommenderConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v38 = v2;
  v3 = sub_257743A84();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v37 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v34[1] = type metadata accessor for ItemSimilarityRecommenderConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B48, &qword_257744390);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_23_7();
  *(v12 + 32) = 0xD000000000000014;
  *(v12 + 40) = v13;
  v14 = ItemSimilarityRecommenderConfiguration.itemItemSimilarities.getter();
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8813D0, &unk_2577746E0);
  *(v11 + 48) = v14;
  v42 = v11;
  ItemSimilarityRecommenderConfiguration.itemStringIDs.getter();
  if (v15)
  {
    v16 = v15;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    v40 = v16;
    OUTLINED_FUNCTION_56_5(v39, xmmword_2577746C0);
    if (v18)
    {
      OUTLINED_FUNCTION_1_69(v17);
      sub_257469BAC();
    }

    OUTLINED_FUNCTION_24_23();
  }

  ItemSimilarityRecommenderConfiguration.itemIntIDs.getter();
  if (v19)
  {
    v20 = v19;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
    v40 = v20;
    OUTLINED_FUNCTION_56_5(v39, xmmword_2577746D0);
    if (v18)
    {
      OUTLINED_FUNCTION_1_69(v21);
      sub_257469BAC();
    }

    OUTLINED_FUNCTION_24_23();
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257745520;
  OUTLINED_FUNCTION_23_7();
  *(v23 + 32) = 0xD000000000000014;
  *(v23 + 40) = v24;
  v25 = v1[2];
  v26 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[1];
  *(inited + 56) = v25;
  *(inited + 72) = v26;
  *(inited + 80) = 0xD000000000000023;
  *(inited + 88) = 0x8000000257781630;
  v27 = v1[4];
  *(inited + 96) = v1[3];
  *(inited + 104) = v27;
  *(inited + 120) = v26;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000257781660;
  v28 = v1[6];
  *(inited + 144) = v1[5];
  *(inited + 152) = v28;
  *(inited + 168) = v26;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x800000025777AE70;
  v29 = v1[8];
  *(inited + 192) = v1[7];
  *(inited + 200) = v29;
  *(inited + 216) = v26;
  *(inited + 224) = 0xD000000000000021;
  *(inited + 232) = 0x8000000257781680;
  v30 = v1[10];
  *(inited + 240) = v1[9];
  *(inited + 248) = v30;
  *(inited + 264) = v26;
  *(inited + 272) = 0xD000000000000026;
  *(inited + 280) = 0x80000002577816B0;
  v31 = v1[11];
  v32 = v1[12];
  *(inited + 312) = v26;
  *(inited + 288) = v31;
  *(inited + 296) = v32;

  sub_25763D2B0(inited);
  sub_2576DADCC();
  v39[0] = v42;
  v33 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v33);
  (*(v35 + 104))(v37, *MEMORY[0x277D84C38], v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t *(*ItemSimilarityRecommenderConfiguration.SimilarItems.itemID.modify(uint64_t *(*result)(uint64_t *result, char)))(uint64_t *result, char)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_2576DB1AC;
  }

  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.getter()
{
  v2 = type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v4 = *(v0 + 8);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_17_2();
    sub_257485100(v7, v8, v9);
    v6 = v19;
    v10 = type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
    OUTLINED_FUNCTION_24(v10);
    v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_14_22();
      sub_2576DADCC();
      OUTLINED_FUNCTION_24_2();
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_174(v15);
        sub_257485100(v17, v1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_2576DAE24();
      v12 += v14;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v7 = type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485158(v10, v11, v12);
    v13 = v20;
    OUTLINED_FUNCTION_193();
    v15 = v0 + v14;
    v16 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_10_41();
      sub_2576DADCC();
      OUTLINED_FUNCTION_14_22();
      sub_2576DADCC();
      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_27_2();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_174(v17);
        sub_257485158(v19, v6, 1);
        v13 = v20;
      }

      *(v13 + 16) = v6;
      OUTLINED_FUNCTION_193();
      sub_2576DAE24();
      v15 += v16;
      --v9;
    }

    while (v9);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *(v1 + 8) = v13;
  OUTLINED_FUNCTION_35();
}

uint64_t (*ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.getter();
  return sub_2576DA8AC;
}

uint64_t sub_2576DA8C4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

double (*ItemSimilarityRecommenderConfiguration.SimilarItems.scoreAdjustment.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_2576D5F00;
}

uint64_t ItemSimilarityRecommenderConfiguration.SimilarItems.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = 0;
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void ItemSimilarityRecommenderConfiguration.SimilarItems.init(itemID:similarItems:scoreAdjustment:)(double a1)
{
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  *v4 = 0.0;
  *(v4 + 1) = v5;
  v4[2] = 0.0;
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    *v4 = v1;
    ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.setter();
    v4[2] = a1;
  }
}

BOOL static ItemSimilarityRecommenderConfiguration.SimilarItems.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    sub_25747BBE4(*(v4 + 8), *(v5 + 8));
    if ((v6 & 1) != 0 && *(v3 + 16) == *(v2 + 16))
    {
      type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_11_34();
      v9 = sub_2576DAF10(v7, v8, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v9))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.ItemScore.itemID.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.ItemScore.itemID.setter(uint64_t result)
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

uint64_t *(*ItemSimilarityRecommenderConfiguration.ItemScore.itemID.modify(uint64_t *(*result)(uint64_t *result, char)))(uint64_t *result, char)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_2576DAB28;
  }

  return result;
}

double (*ItemSimilarityRecommenderConfiguration.ItemScore.similarityScore.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576C6434;
}

uint64_t ItemSimilarityRecommenderConfiguration.ItemScore.init(itemID:similarityScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
    *(a2 + 8) = a3;
  }

  return result;
}

BOOL static ItemSimilarityRecommenderConfiguration.ItemScore.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v2 + 8) == *(v3 + 8))
    {
      type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_11_34();
      v6 = sub_2576DAF10(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ItemSimilarityRecommenderConfiguration.ItemScore.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(v0);
  OUTLINED_FUNCTION_16_21();
  sub_2576DAF10(v1, v2, &unk_25774BCD8);

  return sub_2577435F4();
}

uint64_t ItemSimilarityRecommenderConfiguration.ItemScore.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  OUTLINED_FUNCTION_16_21();
  sub_2576DAF10(v0, v1, &unk_25774BCD8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576DAD44(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  sub_2576DAF10(&qword_27F87AF48, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BCD8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576DADCC()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576DAE24()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576DAE7C()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2576DAF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576DB138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return sub_2576DAE7C();
}

uint64_t OUTLINED_FUNCTION_19_26()
{

  return sub_2576DAE7C();
}

__n128 OUTLINED_FUNCTION_24_23()
{
  *(v2 + 16) = v1;
  v5 = v2 + 48 * v3;
  result = *(v0 + 48);
  v7 = *(v0 + 80);
  *(v5 + 48) = *(v0 + 64);
  *(v5 + 64) = v7;
  *(v5 + 32) = result;
  *(v4 - 96) = v2;
  return result;
}

void OUTLINED_FUNCTION_27_21()
{
  *(v0 - 176) = 34;
  *(v0 - 168) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_44_8()
{
  *(v1 - 176) = 34;
  *(v1 - 168) = v0;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return sub_2574695E4(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_257487308(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return type metadata accessor for Proto_ItemSimilarityRecommender(0);
}

uint64_t static NeuralNetwork.Layer.Kind.pad(kind:amount:)(uint64_t a1, uint64_t a2)
{
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for NeuralNetwork.Border(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_78();
  v11 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(a1, v4);
  OUTLINED_FUNCTION_11_35();
  sub_2576DB58C(a2, v3);
  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v4, v3, v2);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576DB58C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t NeuralNetwork.Layer.PadParameters.init(kind:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_78();
  v11 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_0();
  v13 = type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType(0);
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v13);
  v14 = type metadata accessor for Proto_PaddingLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(v14 + 24);
  v16 = type metadata accessor for Proto_BorderAmounts(0);
  __swift_storeEnumTagSinglePayload(a3 + v15, 1, 1, v16);
  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(a1, v4);
  NeuralNetwork.Layer.PadParameters.kind.setter(v4);
  OUTLINED_FUNCTION_11_35();
  sub_2576DB58C(a2, v3);
  type metadata accessor for NeuralNetwork.Border(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  NeuralNetwork.Layer.PadParameters.amount.setter(v3);
  OUTLINED_FUNCTION_22_22();
  sub_2576DCA34(a2, v21);
  OUTLINED_FUNCTION_0_88();
  return sub_2576DCA34(a1, v22);
}

void NeuralNetwork.Layer.PadParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_3();
  v5 = type metadata accessor for NeuralNetwork.Border(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  NeuralNetwork.Layer.PadParameters.kind.getter(v19, v22, v23, v24, v25, v26, v27, v28, v68.n128_i64[0], v68.n128_i64[1], v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = 0xEA00000000006E6FLL;
      v31 = 0x697463656C666552;
    }

    else
    {
      v30 = 0xEB000000006E6F69;
      v31 = 0x746163696C706552;
    }
  }

  else
  {
    v30 = 0xE800000000000000;
    v31 = 0x746E6174736E6F43;
  }

  OUTLINED_FUNCTION_0_88();
  sub_2576DCA34(v21, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v33 = swift_allocObject();
  v68 = xmmword_2577442B0;
  *(v33 + 16) = xmmword_2577442B0;
  strcpy((v33 + 32), "Padding Kind");
  *(v33 + 45) = 0;
  *(v33 + 46) = -5120;
  *(v33 + 48) = v31;
  *(v33 + 56) = v30;
  NeuralNetwork.Layer.PadParameters.kind.getter(v33, v34, v35, v36, v37, v38, v39, v40, v68.n128_i64[0], v68.n128_i64[1], v69, v70, v71, v72, v73, v74, v75, v76, v77, v33);
  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_88();
    sub_2576DCA34(v17, v41);
    sub_25763CEB8(MEMORY[0x277D84F90]);
  }

  else
  {
    OUTLINED_FUNCTION_3_62();
    sub_2576DE33C(v17, v12);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_16_22(inited, v68);
    inited[3].n128_u64[0] = sub_257743794();
    inited[3].n128_u64[1] = v43;
    sub_25763CEB8(inited);
    OUTLINED_FUNCTION_2_58();
    sub_2576DCA34(v12, v44);
  }

  NeuralNetwork.Layer.PadParameters.amount.getter();
  OUTLINED_FUNCTION_155(v1, 1, v5);
  if (v45)
  {
    sub_2574695E4(v1, &qword_27F87A1F0, &qword_2577458B0);
  }

  else
  {
    OUTLINED_FUNCTION_12_36();
    sub_2576DE33C(v1, v0);
    v77 = NeuralNetwork.Border.leadingHeight.getter();
    v46 = sub_257743974();
    v48 = v47;
    v49 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_257469388();
      v49 = v63;
    }

    v51 = *(v49 + 16);
    v52 = v51 + 1;
    if (v51 >= *(v49 + 24) >> 1)
    {
      sub_257469388();
      v49 = v64;
    }

    *(v49 + 16) = v52;
    v53 = v49 + 32 * v51;
    strcpy((v53 + 32), "Leading Height");
    *(v53 + 47) = -18;
    *(v53 + 48) = v46;
    *(v53 + 56) = v48;
    v77 = NeuralNetwork.Border.trailingHeight.getter();
    sub_257743974();
    OUTLINED_FUNCTION_36_14();
    if (v54)
    {
      OUTLINED_FUNCTION_30_15();
      v49 = v65;
    }

    *(v49 + 16) = v52;
    v55 = (v49 + 32 * v13);
    v55[4] = 0x676E696C69617254;
    v55[5] = 0xEF74686769654820;
    v55[6] = &v77;
    v55[7] = v48;
    v77 = NeuralNetwork.Border.leadingWidth.getter();
    sub_257743974();
    OUTLINED_FUNCTION_36_14();
    if (v54)
    {
      OUTLINED_FUNCTION_30_15();
      v49 = v66;
    }

    *(v49 + 16) = v52;
    v56 = v49 + 32 * v13;
    strcpy((v56 + 32), "Leading Width");
    *(v56 + 46) = -4864;
    *(v56 + 48) = &v77;
    *(v56 + 56) = v48;
    v77 = NeuralNetwork.Border.trailingWidth.getter();
    v57 = sub_257743974();
    v59 = v58;
    v60 = *(v49 + 16);
    if (v60 >= *(v49 + 24) >> 1)
    {
      OUTLINED_FUNCTION_30_15();
      v49 = v67;
    }

    OUTLINED_FUNCTION_22_22();
    sub_2576DCA34(v0, v61);
    *(v49 + 16) = v60 + 1;
    v62 = v49 + 32 * v60;
    strcpy((v62 + 32), "Trailing Width");
    *(v62 + 47) = -18;
    *(v62 + 48) = v57;
    *(v62 + 56) = v59;
  }

  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.pad(name:inputName:outputName:kind:amount:)()
{
  OUTLINED_FUNCTION_31();
  v33 = v3;
  v34 = v4;
  v6 = v5;
  v31 = v7;
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_3();
  v16 = type metadata accessor for NeuralNetwork.Border(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = v31;
  *(v24 + 40) = v10;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2577442B0;
  *(v25 + 32) = v32;
  *(v25 + 40) = v6;
  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(v33, v0);
  OUTLINED_FUNCTION_11_35();
  sub_2576DB58C(v34, v20);

  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v0, v20, v2);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v12 + v26) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v25);
  sub_2574897E0(v1);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_25752846C();
  sub_2576DCA34(v2, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.PadParameters.kind.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881400, &qword_257774870);
  OUTLINED_FUNCTION_13(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_421();
  v28 = OUTLINED_FUNCTION_201();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_38();
  v33 = type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  sub_2574A172C(v20, v21, &qword_27F87C8F0, &qword_257752208);
  OUTLINED_FUNCTION_155(v21, 1, v33);
  if (v43)
  {
    sub_2574695E4(v21, &qword_27F87C8F0, &qword_257752208);
    v41 = type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(0);
    OUTLINED_FUNCTION_192_0(v41);
    *v25 = 0;
    type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2576DE33C(v21, v40);
    sub_2576DB58C(v40, v37);
    sub_2576DC614(v37, v20);
    v42 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
    OUTLINED_FUNCTION_155(v20, 1, v42);
    if (v43)
    {
      v44 = type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(0);
      OUTLINED_FUNCTION_192_0(v44);
      OUTLINED_FUNCTION_25_21();
      *v25 = 0;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_155(v20, 1, v42);
      if (!v43)
      {
        sub_2574695E4(v20, &qword_27F881400, &qword_257774870);
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_21();
      OUTLINED_FUNCTION_23_24();
      v45 = OUTLINED_FUNCTION_44_1();
      sub_2576DE33C(v45, v46);
    }
  }

  OUTLINED_FUNCTION_35();
}

__n128 *NeuralNetwork.Layer.PadParameters.ConstantParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_16_22(v0, xmmword_2577442B0);
  v0[3].n128_u64[0] = sub_257743794();
  v0[3].n128_u64[1] = v1;
  return v0;
}

void NeuralNetwork.Layer.PadParameters.amount.getter()
{
  OUTLINED_FUNCTION_31();
  v22 = v2;
  v3 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_0();
  v5 = OUTLINED_FUNCTION_201();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for Proto_PaddingLayerParams(0) + 24);
  sub_2574A172C(v0 + v15, v14, &qword_27F879AC8, &unk_257744010);
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v3);
  v18 = v22;
  sub_2574695E4(v14, &qword_27F879AC8, &unk_257744010);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v0 + v15, v11, &qword_27F879AC8, &unk_257744010);
    OUTLINED_FUNCTION_155(v11, 1, v3);
    if (v19)
    {
      *v1 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v11, 1, v3);
      if (!v19)
      {
        sub_2574695E4(v11, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_46();
      sub_2576DE33C(v11, v1);
    }

    OUTLINED_FUNCTION_5_46();
    sub_2576DE33C(v1, v18);
    v16 = 0;
  }

  v20 = type metadata accessor for NeuralNetwork.Border(0);
  __swift_storeEnumTagSinglePayload(v18, v16, 1, v20);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576DC36C(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576DB58C(a1, v4);
  return NeuralNetwork.Layer.PadParameters.kind.setter(v4);
}

uint64_t NeuralNetwork.Layer.PadParameters.kind.setter(uint64_t a1)
{
  v5 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_0();
  v10 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  sub_2574695E4(v1, &qword_27F87C8F0, &qword_257752208);
  type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  OUTLINED_FUNCTION_18_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_42();
      sub_2576DE33C(a1, v3);
      v16 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_9_35();
      sub_2576DE33C(a1, v2);
      v16 = v2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_62();
    sub_2576DE33C(a1, v14);
    v16 = v14;
  }

  sub_2576DE33C(v16, v1);
  v17 = type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType(0);
  OUTLINED_FUNCTION_44_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
}

uint64_t static NeuralNetwork.Layer.PadParameters.Kind.constant(value:)(float a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(v3);
  OUTLINED_FUNCTION_192_0(v4);
  *v1 = a1;
  type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  OUTLINED_FUNCTION_18_1();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576DC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType(v7);
  OUTLINED_FUNCTION_18_1();
  swift_getEnumCaseMultiPayload();
  sub_2576DE33C(a1, v2);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_24();
  sub_2576DE33C(v2, a2);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
}

void sub_2576DC768(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2576DB58C(*(a1 + 16), v2);
    NeuralNetwork.Layer.PadParameters.kind.setter(v2);
    OUTLINED_FUNCTION_0_88();
    sub_2576DCA34(v3, v4);
  }

  else
  {
    NeuralNetwork.Layer.PadParameters.kind.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_2576DC7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2574A172C(a1, &v6 - v3, &qword_27F87A1F0, &qword_2577458B0);
  return NeuralNetwork.Layer.PadParameters.amount.setter(v4);
}

uint64_t NeuralNetwork.Layer.PadParameters.amount.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Border(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_155(a1, 1, v9);
  if (v10)
  {
    sub_2574695E4(a1, &qword_27F87A1F0, &qword_2577458B0);
    v11 = *(type metadata accessor for Proto_PaddingLayerParams(0) + 24);
    sub_2574695E4(v1 + v11, &qword_27F879AC8, &unk_257744010);

    return __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v5);
  }

  else
  {
    OUTLINED_FUNCTION_12_36();
    sub_2576DE33C(a1, v3);
    sub_2576DE33C(v3, v2);
    v12 = *(type metadata accessor for Proto_PaddingLayerParams(0) + 24);
    sub_2574695E4(v1 + v12, &qword_27F879AC8, &unk_257744010);
    sub_2576DE33C(v2, v1 + v12);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
  }
}

uint64_t sub_2576DCA34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void (*NeuralNetwork.Layer.PadParameters.amount.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for NeuralNetwork.Border(0);
  v3[1] = v4;
  v21 = v4;
  OUTLINED_FUNCTION_4();
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_BorderAmounts(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v20 = __swift_coroFrameAllocStub(v8);
  v3[5] = v20;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  OUTLINED_FUNCTION_13(v9);
  v10 = OUTLINED_FUNCTION_45_10();
  v3[6] = v10;
  v11 = OUTLINED_FUNCTION_45_10();
  v3[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  OUTLINED_FUNCTION_13(v12);
  v3[8] = OUTLINED_FUNCTION_45_10();
  v13 = OUTLINED_FUNCTION_45_10();
  v3[9] = v13;
  v14 = *(type metadata accessor for Proto_PaddingLayerParams(0) + 24);
  *(v3 + 20) = v14;
  sub_2574A172C(v1 + v14, v11, &qword_27F879AC8, &unk_257744010);
  v15 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v6);
  sub_2574695E4(v11, &qword_27F879AC8, &unk_257744010);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v1 + v14, v10, &qword_27F879AC8, &unk_257744010);
    OUTLINED_FUNCTION_155(v10, 1, v6);
    if (v17)
    {
      v18 = v20;
      *v20 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v10, 1, v6);
      if (!v17)
      {
        sub_2574695E4(v10, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_46();
      v18 = v20;
      sub_2576DE33C(v10, v20);
    }

    OUTLINED_FUNCTION_5_46();
    sub_2576DE33C(v18, v13);
    v15 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v15, 1, v21);
  return sub_2576DCD28;
}

void sub_2576DCD28()
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
    NeuralNetwork.Layer.PadParameters.amount.setter(v4);
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
      OUTLINED_FUNCTION_12_36();
      sub_2576DE33C(v2, v15);
      sub_2576DE33C(v15, v14);
      sub_2574695E4(v16 + v11, &qword_27F879AC8, &unk_257744010);
      sub_2576DE33C(v14, v16 + v11);
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

  free(v17);
}

__n128 *NeuralNetwork.Layer.PadParameters.Kind.propertyDescriptions.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_35_15();
  type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(v1, v1);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_88();
    sub_2576DCA34(v1, v6);
    return MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_3_62();
    v8 = OUTLINED_FUNCTION_44_1();
    sub_2576DE33C(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_16_22(v7, xmmword_2577442B0);
    v7[3].n128_u64[0] = sub_257743794();
    v7[3].n128_u64[1] = v10;
    OUTLINED_FUNCTION_2_58();
    sub_2576DCA34(v0, v11);
  }

  return v7;
}

uint64_t NeuralNetwork.Layer.PadParameters.ConstantParameters.init(value:)(float a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(v3);
  result = OUTLINED_FUNCTION_192_0(v4);
  *v1 = a1;
  return result;
}

void static NeuralNetwork.Layer.PadParameters.Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v51 = v8 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v50 = v12 - v11;
  v13 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v50 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881408, &unk_257774878);
  OUTLINED_FUNCTION_13(v25);
  OUTLINED_FUNCTION_29();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  v30 = *(v27 + 56);
  sub_2576DB58C(v4, &v50 - v28);
  sub_2576DB58C(v2, &v29[v30]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_70();
      sub_2576DB58C(v29, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_10_42();
        v32 = &v29[v30];
        v33 = v50;
        sub_2576DE33C(v32, v50);
        sub_2577431B4();
        OUTLINED_FUNCTION_4_51();
        sub_2576DE3F8(v34, v35, MEMORY[0x277D216D0]);
        sub_257743644();
        v36 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters;
        sub_2576DCA34(v33, type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters);
        v37 = v22;
LABEL_9:
        sub_2576DCA34(v37, v36);
        OUTLINED_FUNCTION_0_88();
        sub_2576DCA34(v29, v44);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_21_27();
      v39 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_1_70();
      sub_2576DB58C(v29, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_9_35();
        v40 = &v29[v30];
        v41 = v51;
        sub_2576DE33C(v40, v51);
        sub_2577431B4();
        OUTLINED_FUNCTION_4_51();
        sub_2576DE3F8(v42, v43, MEMORY[0x277D216D0]);
        sub_257743644();
        v36 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters;
        sub_2576DCA34(v41, type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters);
        v37 = v18;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_20_22();
      v39 = v18;
    }

LABEL_12:
    sub_2576DCA34(v39, v38);
    sub_2574695E4(v29, &qword_27F881408, &unk_257774878);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(v29, v24);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_58();
    v39 = v24;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_62();
  sub_2576DE33C(&v29[v30], v0);
  if (*v24 == *v0)
  {
    type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_4_51();
    sub_2576DE3F8(v45, v46, MEMORY[0x277D216D0]);
    sub_257743644();
  }

  OUTLINED_FUNCTION_2_58();
  sub_2576DCA34(v0, v47);
  OUTLINED_FUNCTION_2_58();
  sub_2576DCA34(v24, v48);
  OUTLINED_FUNCTION_0_88();
  sub_2576DCA34(v29, v49);
LABEL_13:
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.PadParameters.Kind.hash(into:)()
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_17_3();
  v11 = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_70();
  sub_2576DB58C(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_42();
      sub_2576DE33C(v17, v2);
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_PaddingLayerParams.PaddingReflection(0);
      sub_2576DE3F8(&qword_27F87E158, type metadata accessor for Proto_PaddingLayerParams.PaddingReflection, &unk_257766538);
      sub_2577435F4();
      OUTLINED_FUNCTION_21_27();
      v20 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_9_35();
      sub_2576DE33C(v17, v0);
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_PaddingLayerParams.PaddingReplication(0);
      sub_2576DE3F8(&qword_27F87E148, type metadata accessor for Proto_PaddingLayerParams.PaddingReplication, &unk_257766578);
      sub_2577435F4();
      OUTLINED_FUNCTION_20_22();
      v20 = v0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_62();
    sub_2576DE33C(v17, v3);
    MEMORY[0x259C651F0](0);
    type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(0);
    sub_2576DE3F8(&qword_27F87E168, type metadata accessor for Proto_PaddingLayerParams.PaddingConstant, &unk_2577664F8);
    sub_2577435F4();
    OUTLINED_FUNCTION_2_58();
    v20 = v3;
  }

  return sub_2576DCA34(v20, v19);
}

uint64_t NeuralNetwork.Layer.PadParameters.Kind.hashValue.getter()
{
  sub_257743A14();
  NeuralNetwork.Layer.PadParameters.Kind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_2576DD9CC(uint64_t a1)
{
  sub_257743A14();
  NeuralNetwork.Layer.PadParameters.Kind.hash(into:)();
  return sub_257743A64();
}

float (*NeuralNetwork.Layer.PadParameters.ConstantParameters.value.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

BOOL static NeuralNetwork.Layer.PadParameters.ConstantParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_4_51();
    sub_2576DE3F8(v3, v4, MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Layer.PadParameters.ConstantParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_38();
  type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_2576DB58C(v1, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = 0x65756C6176;
  *(v15 + 40) = 0xE500000000000000;
  v16 = *v1;
  *(v15 + 72) = MEMORY[0x277D83A90];
  *(v15 + 48) = v16;
  v17 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v17);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v2);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV13PadParametersV010ReflectionG0V2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_4_51();
  sub_2576DE3F8(v0, v1, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_44_1();
  return sub_257743644() & 1;
}

uint64_t sub_2576DDF6C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_40_12();

  return sub_2577435F4();
}

uint64_t sub_2576DE020(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_40_12();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576DE0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_40_12();
  sub_2577435F4();
  return sub_257743A64();
}

void sub_2576DE190()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_38();
  v2(v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  sub_2576DB58C(v0, v13 - v11);
  v13[1] = MEMORY[0x277D84F90];
  v12 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v12);
  (*(v5 + 104))(v0, *MEMORY[0x277D84C38], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576DE33C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576DE3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576DE6C0(uint64_t a1)
{
  result = type metadata accessor for NeuralNetwork.Layer.PadParameters.ConstantParameters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReflectionParameters(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NeuralNetwork.Layer.PadParameters.ReplicationParameters(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2576DE808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_16_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65756C6156;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_21()
{

  return sub_2576DCA34(v0, type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType);
}

void OUTLINED_FUNCTION_30_15()
{

  sub_257469388();
}

uint64_t OUTLINED_FUNCTION_40_12()
{

  return sub_2576DE3F8(v2, v1, v0);
}

void *OUTLINED_FUNCTION_45_10()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_2576DEA98()
{
  v103 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_25_0();
  v97 = v2;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v3);
  v94.n128_u64[0] = &v86 - v4;
  v5 = type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_0();
  v96 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  v93 = &v86 - v9;
  v10 = type metadata accessor for FeatureType(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_25_0();
  v95 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  v92 = &v86 - v13;
  v14 = type metadata accessor for FeatureDescription(0);
  v15 = OUTLINED_FUNCTION_24(v14);
  v17 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v98 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  v21 = &v86 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  *(inited + 32) = 1701667150;
  *(inited + 40) = 0xE400000000000000;
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_15_22();
  v23 = v102;
  *(inited + 48) = v101;
  *(inited + 56) = v23;
  *(inited + 64) = 0;
  *(inited + 72) = 0x737475706E49;
  *(inited + 80) = 0xE600000000000000;
  v88 = inited;
  v89 = v0;
  v24 = FunctionDescription.inputs.getter();
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  v27 = &loc_257743000;
  v99 = v5;
  if (v25)
  {
    v100 = MEMORY[0x277D84F90];
    v28 = v24;
    sub_257484040(0, v25, 0);
    v29 = v100;
    OUTLINED_FUNCTION_193();
    v86 = v28;
    v87 = v17;
    v31 = v28 + v30;
    v91 = *(v17 + 72);
    v90 = xmmword_257743FF0;
    do
    {
      OUTLINED_FUNCTION_1_71();
      sub_2576DFF70(v31, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      v32 = swift_initStackObject();
      v33 = OUTLINED_FUNCTION_18_36(v32, v90);
      v34 = v94.n128_u64[0];
      sub_257635668(&v21[*(v33 + 28)], v94.n128_i64[0]);
      OUTLINED_FUNCTION_12_37();
      if (v35)
      {
        v36 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
        OUTLINED_FUNCTION_22_23(v36, v37, v38, v36);
        OUTLINED_FUNCTION_12_37();
        if (!v35)
        {
          sub_25763559C(v34);
        }
      }

      else
      {
        v39 = OUTLINED_FUNCTION_9_36();
        sub_2576E01D4(v39, v93);
      }

      sub_25768DB44();
      sub_25768E918();
      OUTLINED_FUNCTION_8_38();
      sub_2576E0180();
      OUTLINED_FUNCTION_10_43();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_15_22();
      v40 = OUTLINED_FUNCTION_31_16();
      v42 = v41;
      OUTLINED_FUNCTION_2_59();
      sub_2576E0180();
      v100 = v29;
      v44 = *(v29 + 16);
      v43 = *(v29 + 24);
      if (v44 >= v43 >> 1)
      {
        v46 = OUTLINED_FUNCTION_174(v43);
        sub_257484040(v46, v44 + 1, 1);
        v29 = v100;
      }

      *(v29 + 16) = v44 + 1;
      v45 = v29 + 24 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      *(v45 + 48) = 2;
      v31 += v91;
      --v25;
    }

    while (v25);

    v17 = v87;
    v27 = &loc_257743000;
    v26 = MEMORY[0x277D84F90];
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v47 = v88;
  *(v88 + 88) = v29;
  *(v47 + 96) = 0;
  v48 = v47;
  *(v47 + 104) = 1;
  *(v47 + 112) = 0x7374757074754FLL;
  *(v47 + 120) = 0xE700000000000000;
  v49 = FunctionDescription.outputs.getter();
  v50 = *(v49 + 16);
  if (v50)
  {
    v100 = v26;
    v51 = v49;
    v52 = OUTLINED_FUNCTION_269();
    sub_257484040(v52, v53, v54);
    v55 = v100;
    OUTLINED_FUNCTION_193();
    v93 = v51;
    v57 = v51 + v56;
    v58 = *(v17 + 72);
    v94 = v27[255];
    do
    {
      OUTLINED_FUNCTION_1_71();
      v59 = v98;
      sub_2576DFF70(v57, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      v60 = swift_initStackObject();
      v61 = v59 + *(OUTLINED_FUNCTION_18_36(v60, v94) + 28);
      v62 = v97;
      sub_257635668(v61, v97);
      OUTLINED_FUNCTION_12_37();
      if (v35)
      {
        v63 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
        OUTLINED_FUNCTION_22_23(v63, v64, v65, v63);
        OUTLINED_FUNCTION_12_37();
        if (!v35)
        {
          sub_25763559C(v62);
        }
      }

      else
      {
        v66 = OUTLINED_FUNCTION_9_36();
        sub_2576E01D4(v66, v96);
      }

      sub_25768DB44();
      sub_25768E918();
      OUTLINED_FUNCTION_8_38();
      sub_2576E0180();
      OUTLINED_FUNCTION_10_43();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_15_22();
      v67 = OUTLINED_FUNCTION_31_16();
      v69 = v68;
      OUTLINED_FUNCTION_2_59();
      sub_2576E0180();
      v100 = v55;
      v71 = *(v55 + 16);
      v70 = *(v55 + 24);
      if (v71 >= v70 >> 1)
      {
        v73 = OUTLINED_FUNCTION_174(v70);
        sub_257484040(v73, v71 + 1, 1);
        v55 = v100;
      }

      *(v55 + 16) = v71 + 1;
      v72 = v55 + 24 * v71;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      *(v72 + 48) = 2;
      v57 += v58;
      --v50;
    }

    while (v50);

    v48 = v88;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  *(v48 + 128) = v55;
  *(v48 + 136) = 0;
  *(v48 + 144) = 1;
  OUTLINED_FUNCTION_1_6();
  if (v74)
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_15_22();
    v75 = v101;
    v76 = v102;
    sub_257469AE0();
    v48 = v77;
    *(v77 + 16) = 4;
    *(v77 + 152) = 0xD000000000000016;
    *(v77 + 160) = 0x8000000257779B30;
    *(v77 + 168) = v75;
    *(v77 + 176) = v76;
    *(v77 + 184) = 0;
  }

  OUTLINED_FUNCTION_1_6();
  if (v78)
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_15_22();
    v79 = v101;
    v80 = v102;
    v82 = *(v48 + 16);
    v81 = *(v48 + 24);
    if (v82 >= v81 >> 1)
    {
      OUTLINED_FUNCTION_174(v81);
      sub_257469AE0();
      v48 = v85;
    }

    *(v48 + 16) = v82 + 1;
    v83 = v48 + 40 * v82;
    *(v83 + 32) = 0xD00000000000001CLL;
    *(v83 + 40) = 0x8000000257779B50;
    *(v83 + 48) = v79;
    *(v83 + 56) = v80;
    *(v83 + 64) = 0;
  }

  return sub_2576AACFC(v48);
}

uint64_t sub_2576DF1B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FunctionDescription.name.setter(v1, v2);
}

uint64_t FunctionDescription.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*FunctionDescription.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t FunctionDescription.inputs.getter()
{
  v2 = type metadata accessor for FeatureDescription(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22 = MEMORY[0x277D84F90];
    v10 = OUTLINED_FUNCTION_269();
    sub_257483774(v10, v11, v12);
    v9 = v22;
    v13 = type metadata accessor for Proto_FeatureDescription(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_0_89();
      sub_2576DFF70(v15, v6);
      OUTLINED_FUNCTION_24_2();
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_174(v18);
        sub_257483774(v20, v1, 1);
        v9 = v22;
      }

      OUTLINED_FUNCTION_6_49();
      v15 += v17;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t FunctionDescription.inputs.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for FeatureDescription(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_FeatureDescription(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_23_25(MEMORY[0x277D84F90]);
    v16 = v24;
    OUTLINED_FUNCTION_193();
    v18 = v0 + v17;
    v19 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_1_71();
      sub_2576DFF70(v18, v9);
      OUTLINED_FUNCTION_0_89();
      sub_2576DFF70(v9, v14);
      OUTLINED_FUNCTION_2_59();
      sub_2576E0180();
      OUTLINED_FUNCTION_27_2();
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_174(v20);
        sub_2574837CC(v22, v6, 1);
        v16 = v24;
      }

      OUTLINED_FUNCTION_7_39();
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v16;
  return result;
}

uint64_t (*FunctionDescription.inputs.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = FunctionDescription.inputs.getter();
  return sub_2576DF610;
}

uint64_t FunctionDescription.outputs.getter()
{
  v2 = type metadata accessor for FeatureDescription(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = *(v0 + 24);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22 = MEMORY[0x277D84F90];
    v10 = OUTLINED_FUNCTION_269();
    sub_257483774(v10, v11, v12);
    v9 = v22;
    v13 = type metadata accessor for Proto_FeatureDescription(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_0_89();
      sub_2576DFF70(v15, v6);
      OUTLINED_FUNCTION_24_2();
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_174(v18);
        sub_257483774(v20, v1, 1);
        v9 = v22;
      }

      OUTLINED_FUNCTION_6_49();
      v15 += v17;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t FunctionDescription.outputs.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for FeatureDescription(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_FeatureDescription(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_23_25(MEMORY[0x277D84F90]);
    v16 = v24;
    OUTLINED_FUNCTION_193();
    v18 = v0 + v17;
    v19 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_1_71();
      sub_2576DFF70(v18, v9);
      OUTLINED_FUNCTION_0_89();
      sub_2576DFF70(v9, v14);
      OUTLINED_FUNCTION_2_59();
      sub_2576E0180();
      OUTLINED_FUNCTION_27_2();
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_174(v20);
        sub_2574837CC(v22, v6, 1);
        v16 = v24;
      }

      OUTLINED_FUNCTION_7_39();
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *(v1 + 24) = v16;
  return result;
}

uint64_t (*FunctionDescription.outputs.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = FunctionDescription.outputs.getter();
  return sub_2576DF9C0;
}

uint64_t sub_2576DF9D8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_2576DFA74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FunctionDescription.predictedFeatureName.setter(v1, v2);
}

uint64_t FunctionDescription.predictedFeatureName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t (*FunctionDescription.predictedFeatureName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576DFB3C;
}

uint64_t sub_2576DFB3C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 40) = v3;
    *(v4 + 48) = v2;
  }

  else
  {

    *(v4 + 40) = v3;
    *(v4 + 48) = v2;
  }

  return result;
}

uint64_t sub_2576DFBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FunctionDescription.predictedProbabilitiesName.setter(v1, v2);
}

uint64_t FunctionDescription.predictedProbabilitiesName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*FunctionDescription.predictedProbabilitiesName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576DFCA4;
}

uint64_t sub_2576DFCA4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 56) = v3;
    *(v4 + 64) = v2;
  }

  else
  {

    *(v4 + 56) = v3;
    *(v4 + 64) = v2;
  }

  return result;
}

uint64_t FunctionDescription.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  type metadata accessor for Proto_FunctionDescription(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t FunctionDescription.init(name:inputs:outputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  a3[2] = MEMORY[0x277D84F90];
  a3[3] = v6;
  a3[4] = v6;
  a3[5] = 0;
  a3[6] = 0xE000000000000000;
  a3[7] = 0;
  a3[8] = 0xE000000000000000;
  type metadata accessor for Proto_FunctionDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  a3[1] = a2;
  FunctionDescription.inputs.setter();
  return FunctionDescription.outputs.setter();
}

uint64_t FunctionDescription.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_FunctionDescription(v0);
  OUTLINED_FUNCTION_11_36();
  sub_2576E0058(v1, v2, &unk_257750174);

  return sub_2577435F4();
}

uint64_t FunctionDescription.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_FunctionDescription(0);
  OUTLINED_FUNCTION_11_36();
  sub_2576E0058(v0, v1, &unk_257750174);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576DFEE8(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_FunctionDescription(0);
  sub_2576E0058(&qword_27F87BA20, type metadata accessor for Proto_FunctionDescription, &unk_257750174);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576DFF70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_2576E0058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FunctionDescription(uint64_t a1)
{
  result = qword_27F881488;
  if (!qword_27F881488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576E0114(uint64_t a1)
{
  result = type metadata accessor for Proto_FunctionDescription(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576E0180()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2576E01D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_49()
{
  *(v1 + 16) = v3;
  v6 = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v4;

  return sub_2576E01D4(v2, v6);
}

uint64_t OUTLINED_FUNCTION_7_39()
{
  *(v1 + 16) = v4;
  v6 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v0;

  return sub_2576E01D4(v3, v6);
}

void OUTLINED_FUNCTION_10_43()
{
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = 0x7470697263736544;
  *(v2 + 80) = 0xEB000000006E6F69;
}

void OUTLINED_FUNCTION_15_22()
{

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_17_24()
{
  *(v0 + 152) = 34;
  *(v0 + 160) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_18_36(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 1701869908;
  a1[2].n128_u64[1] = 0xE400000000000000;

  return type metadata accessor for Proto_FeatureDescription(0);
}

uint64_t OUTLINED_FUNCTION_22_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
  *(v4 + *(v5 + 20)) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_23_25(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  sub_2574837CC(0, v1, 0);
}

void OUTLINED_FUNCTION_24_24()
{
  *(v0 + 152) = 34;
  *(v0 + 160) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_31_16()
{
  v3 = *(v0 + 160);
  *(v1 + 88) = *(v0 + 152);
  *(v1 + 96) = v3;
  *(v1 + 104) = 0;

  return sub_2576A6964(v1);
}

uint64_t Model.exposeFeature(_:)(uint64_t *a1)
{
  result = sub_2576E050C(a1);
  if ((result & 1) == 0)
  {
    sub_25769D7FC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2576E050C(uint64_t *a1)
{
  v373 = type metadata accessor for MLProgram.Block(0);
  OUTLINED_FUNCTION_63();
  v370 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v360 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v377 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v371 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_196();
  v17 = OUTLINED_FUNCTION_38_0(v16);
  v378 = type metadata accessor for MLProgram.Function(v17);
  OUTLINED_FUNCTION_63();
  v354 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_196();
  v22 = OUTLINED_FUNCTION_38_0(v21);
  v23 = type metadata accessor for MLProgram(v22);
  v24 = OUTLINED_FUNCTION_13(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_1();
  v372 = v25;
  v26 = type metadata accessor for NeuralNetwork(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v29 = OUTLINED_FUNCTION_38_0(v28);
  v30 = type metadata accessor for NeuralNetworkRegressor(v29);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v33 = OUTLINED_FUNCTION_38_0(v32);
  v34 = type metadata accessor for FeatureDescription(v33);
  v35 = OUTLINED_FUNCTION_24(v34);
  v379 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_196();
  v41 = OUTLINED_FUNCTION_38_0(v40);
  v42 = type metadata accessor for NeuralNetworkClassifier(v41);
  v43 = OUTLINED_FUNCTION_13(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v45 = OUTLINED_FUNCTION_38_0(v44);
  v46 = type metadata accessor for Proto_Model(v45);
  v47 = OUTLINED_FUNCTION_24(v46);
  v383 = v48;
  MEMORY[0x28223BE20](v47);
  i = &v352 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Model(0);
  v52 = OUTLINED_FUNCTION_24(v51);
  v382 = v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v352 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v352 - v57;
  v59 = type metadata accessor for PipelineConfiguration(0);
  v60 = OUTLINED_FUNCTION_13(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12_1();
  v380 = v61;
  v62 = type metadata accessor for PipelineRegressorConfiguration(0);
  v63 = OUTLINED_FUNCTION_13(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_1();
  v363 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v66 = OUTLINED_FUNCTION_13(v65);
  MEMORY[0x28223BE20](v66);
  v376 = &v352 - v67;
  v68 = type metadata accessor for PipelineClassifierConfiguration(0);
  v69 = OUTLINED_FUNCTION_13(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_1();
  v71 = OUTLINED_FUNCTION_38_0(v70);
  v72 = type metadata accessor for ModelKind(v71);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25_0();
  v375 = v74;
  MEMORY[0x28223BE20](v75);
  v77 = &v352 - v76;
  Model.outputs.getter();
  v381 = a1;
  v385 = a1;
  v79 = sub_2576ADB74(sub_2576E4130, v384, v78);
  v81 = v80;

  if ((v81 & 1) == 0)
  {
    Model.outputs.getter();
    v84 = v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_20;
  }

  v82 = v1;
  Model.kind.getter();
  v352 = v72;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v84 = MEMORY[0x277D84F90];
  v374 = v1;
  if (!(!v86 & v85))
  {
    switch(EnumCaseMultiPayload)
    {
      case 28:
        v101 = OUTLINED_FUNCTION_189();
        v77 = v367;
        sub_2576E3FC8(v101, v367, v102);
        NeuralNetwork.layers.getter();
        OUTLINED_FUNCTION_24_25();
        MEMORY[0x28223BE20](v103);
        OUTLINED_FUNCTION_11_37();
        v105 = sub_257703104(sub_2576E3F60, v104, v84);

        if (!v105)
        {
          v176 = type metadata accessor for NeuralNetwork;
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_1_72();
        v106 = v357;
        sub_2576E4024(v56, v357, v107);
        Model.outputs.getter();
        v109 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v322 = OUTLINED_FUNCTION_4_52();
          sub_25746A0C8(v322, v323, v324, v325);
          v109 = v326;
        }

        OUTLINED_FUNCTION_21_28();
        if (v85)
        {
          OUTLINED_FUNCTION_174(v110);
          OUTLINED_FUNCTION_17_25();
          sub_25746A0C8(v327, v328, v329, v330);
          v109 = v331;
        }

        *(v109 + 16) = v82;
        OUTLINED_FUNCTION_2_60();
        OUTLINED_FUNCTION_0_90();
        sub_2576E3FC8(v106, v111, v112);
        OUTLINED_FUNCTION_28_26();
        Model.outputs.setter();
        v113 = type metadata accessor for NeuralNetwork;
        goto LABEL_80;
      case 29:
        v177 = OUTLINED_FUNCTION_189();
        v77 = v364;
        sub_2576E3FC8(v177, v364, v178);
        NeuralNetworkClassifier.layers.getter();
        OUTLINED_FUNCTION_24_25();
        MEMORY[0x28223BE20](v179);
        OUTLINED_FUNCTION_11_37();
        v181 = sub_257703104(sub_2576E3F94, v180, v84);

        if (!v181)
        {
          v176 = type metadata accessor for NeuralNetworkClassifier;
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_1_72();
        v182 = v355;
        sub_2576E4024(v56, v355, v183);
        Model.outputs.getter();
        v185 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v332 = OUTLINED_FUNCTION_4_52();
          sub_25746A0C8(v332, v333, v334, v335);
          v185 = v336;
        }

        OUTLINED_FUNCTION_21_28();
        if (v85)
        {
          OUTLINED_FUNCTION_174(v186);
          OUTLINED_FUNCTION_17_25();
          sub_25746A0C8(v337, v338, v339, v340);
          v185 = v341;
        }

        *(v185 + 16) = v82;
        OUTLINED_FUNCTION_2_60();
        OUTLINED_FUNCTION_0_90();
        sub_2576E3FC8(v182, v187, v188);
        OUTLINED_FUNCTION_28_26();
        Model.outputs.setter();
        v113 = type metadata accessor for NeuralNetworkClassifier;
        goto LABEL_80;
      case 30:
        v121 = OUTLINED_FUNCTION_189();
        v77 = v365;
        sub_2576E3FC8(v121, v365, v122);
        NeuralNetworkRegressor.layers.getter();
        OUTLINED_FUNCTION_24_25();
        MEMORY[0x28223BE20](v123);
        OUTLINED_FUNCTION_11_37();
        v125 = sub_257703104(sub_2576E3F60, v124, v84);

        if (!v125)
        {
          v176 = type metadata accessor for NeuralNetworkRegressor;
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_1_72();
        i = v356;
        sub_2576E4024(v56, v356, v126);
        v1 = v82;
        Model.outputs.getter();
        v128 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_43;
      case 31:
        v164 = MEMORY[0x277D84F90];
        v165 = OUTLINED_FUNCTION_189();
        sub_2576E3FC8(v165, v372, v166);
        MLProgram.functions.getter();
        v168 = v167;
        v169 = v366;
        v170 = OUTLINED_FUNCTION_28_10();
        sub_257657BA8(v170, v171, v168, v172);

        OUTLINED_FUNCTION_33_12(v169);
        v173 = v381;
        if (v86)
        {
          v174 = OUTLINED_FUNCTION_12_38();
          sub_2576E3EA4(v174, v175);
          sub_2574695E4(v169, &qword_27F880730, &qword_25776D388);
          goto LABEL_119;
        }

        OUTLINED_FUNCTION_5_47();
        v229 = v169;
        v1 = v361;
        sub_2576E3FC8(v229, v361, v230);
        v388 = v164;
        sub_2576E1CC4(&v388);
        v231 = v388;
        MEMORY[0x28223BE20](v232);
        *(&v352 - 2) = v173;
        v233 = sub_257703134(sub_2576E3F40, (&v352 - 4), v231);
        v77 = v233;
        v383 = 0;
        if (!v233)
        {
          OUTLINED_FUNCTION_14_23();
          sub_2576E3EA4(v1, v300);

LABEL_127:
          v216 = OUTLINED_FUNCTION_12_38();
          goto LABEL_85;
        }

        v366 = v231;
        MLProgram.Function.blockSpecializations.getter();
        v235 = 0;
        v237 = v234 + 8;
        v236 = v234[8];
        v380 = v234;
        v238 = 1 << *(v234 + 32);
        v239 = -1;
        if (v238 < 64)
        {
          v239 = ~(-1 << v238);
        }

        i = v239 & v236;
        v240 = (v238 + 63) >> 6;
        v241 = v371;
        v375 = v240;
        v376 = (v234 + 8);
        LODWORD(v367) = v77;
        if ((v239 & v236) != 0)
        {
LABEL_95:
          while (1)
          {
            v243 = (v380[6] + ((v235 << 10) | (16 * __clz(__rbit64(i)))));
            v245 = *v243;
            v244 = v243[1];
            v246 = v173[1];
            v382 = *v173;
            MLProgram.functions.getter();
            v248 = v247;

            v249 = OUTLINED_FUNCTION_28_10();
            sub_257657BA8(v249, v250, v248, v251);

            OUTLINED_FUNCTION_33_12(v241);
            if (v86)
            {
              break;
            }

            MLProgram.Function.blockSpecializations.getter();
            v1 = v252;
            swift_isUniquelyReferenced_nonNull_native();
            v387 = v1;
            v253 = sub_25765368C(v245, v244);
            v255 = *(v1 + 16);
            v256 = (v254 & 1) == 0;
            v77 = v255 + v256;
            if (__OFADD__(v255, v256))
            {
              goto LABEL_135;
            }

            v257 = v253;
            v258 = v254;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
            if (sub_257743894())
            {
              v259 = sub_25765368C(v245, v244);
              if ((v258 & 1) != (v260 & 1))
              {
                goto LABEL_139;
              }

              v257 = v259;
            }

            if ((v258 & 1) == 0)
            {
              goto LABEL_138;
            }

            v261 = v387;
            v262 = *(v370 + 72) * v257;
            v263 = v377;
            sub_2576E3FC8(*(v387 + 56) + v262, v377, type metadata accessor for MLProgram.Block);
            v264 = OUTLINED_FUNCTION_39_7();
            __swift_storeEnumTagSinglePayload(v264, v265, v266, v373);
            v267 = *(v263 + 8);

            v268 = v267;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_4_52();
              sub_257469ED4();
              v268 = v297;
            }

            v270 = *(v268 + 16);
            v269 = *(v268 + 24);
            if (v270 >= v269 >> 1)
            {
              OUTLINED_FUNCTION_174(v269);
              sub_257469ED4();
              v268 = v298;
            }

            *(v268 + 16) = v270 + 1;
            v271 = v268 + 16 * v270;
            *(v271 + 32) = v382;
            *(v271 + 40) = v246;

            v272 = v377;
            *(v377 + 8) = v268;
            v273 = v369;
            sub_2574AD5D8(v272, v369, &qword_27F880698, &qword_25776CFE0);
            if (__swift_getEnumTagSinglePayload(v273, 1, v373) == 1)
            {
              sub_2574695E4(v273, &qword_27F880698, &qword_25776CFE0);
              sub_2576493CC(*(v261 + 48) + 16 * v257);
              sub_2577438B4();
            }

            else
            {
              v274 = v273;
              v275 = v360;
              sub_2576E3FC8(v274, v360, type metadata accessor for MLProgram.Block);
              sub_2576E3FC8(v275, *(v261 + 56) + v262, type metadata accessor for MLProgram.Block);
            }

            v77 = v367;
            v276 = v372;
            sub_2574695E4(v377, &qword_27F880698, &qword_25776CFE0);
            v277 = v383;
            sub_257653AF8(v261);
            v279 = v278;

            v241 = v371;
            *(v371 + 24) = v279;

            v280 = v368;
            sub_2574AD5D8(v241, v368, &qword_27F880730, &qword_25776D388);
            MLProgram.functions.getter();
            v1 = v281;
            OUTLINED_FUNCTION_33_12(v280);
            if (v86)
            {
              sub_2574695E4(v280, &qword_27F880730, &qword_25776D388);
              v282 = OUTLINED_FUNCTION_28_10();
              sub_25765368C(v282, v283);
              if (v284)
              {
                swift_isUniquelyReferenced_nonNull_native();
                v386 = v1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
                v77 = v367;
                v241 = v371;
                sub_257743894();
                v1 = v386;

                OUTLINED_FUNCTION_5_47();
                v285 = v359;
                sub_2576E3FC8(v286, v359, v287);
                OUTLINED_FUNCTION_205();
                sub_2577438B4();
              }

              else
              {
                v285 = v359;
              }

              OUTLINED_FUNCTION_17_25();
              __swift_storeEnumTagSinglePayload(v291, v292, v293, v294);
              sub_2574695E4(v285, &qword_27F880730, &qword_25776D388);
            }

            else
            {
              OUTLINED_FUNCTION_5_47();
              v288 = v280;
              v289 = v358;
              sub_2576E3FC8(v288, v358, v290);
              swift_isUniquelyReferenced_nonNull_native();
              v386 = v1;
              sub_25765BDAC(v289, 1852399981, 0xE400000000000000);
              v1 = v386;
            }

            i &= i - 1;
            sub_25765B92C(v1);
            v296 = v295;
            v383 = v277;

            sub_2574695E4(v241, &qword_27F880730, &qword_25776D388);

            *(v276 + 8) = v296;
            v240 = v375;
            v237 = v376;
            v173 = v381;
            if (!i)
            {
              goto LABEL_91;
            }
          }

          __break(1u);
LABEL_138:
          __swift_storeEnumTagSinglePayload(v377, 1, 1, v373);
          __break(1u);
LABEL_139:
          sub_2577439B4();
          __break(1u);
LABEL_140:
          JUMPOUT(0);
        }

LABEL_91:
        while (1)
        {
          v242 = v235 + 1;
          if (__OFADD__(v235, 1))
          {
            break;
          }

          if (v242 >= v240)
          {

            OUTLINED_FUNCTION_1_72();
            v301 = v353;
            sub_2576E4024(v173, v353, v302);
            Model.outputs.getter();
            v304 = v303;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v342 = OUTLINED_FUNCTION_4_52();
              sub_25746A0C8(v342, v343, v344, v345);
              v304 = v346;
            }

            v305 = v361;
            v307 = *(v304 + 16);
            v306 = *(v304 + 24);
            if (v307 >= v306 >> 1)
            {
              OUTLINED_FUNCTION_174(v306);
              OUTLINED_FUNCTION_17_25();
              sub_25746A0C8(v347, v348, v349, v350);
              v304 = v351;
            }

            *(v304 + 16) = v307 + 1;
            OUTLINED_FUNCTION_193();
            OUTLINED_FUNCTION_0_90();
            sub_2576E3FC8(v301, v308, v309);
            Model.outputs.setter();
            OUTLINED_FUNCTION_14_23();
            sub_2576E3EA4(v305, v310);
            goto LABEL_127;
          }

          i = v237[v242];
          ++v235;
          if (i)
          {
            v235 = v242;
            goto LABEL_95;
          }
        }

        break;
      default:
        goto LABEL_140;
    }

    goto LABEL_134;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v132 = OUTLINED_FUNCTION_189();
    sub_2576E3FC8(v132, v380, v133);
    v134 = *(PipelineConfiguration.models.getter() + 16);

    LOBYTE(v77) = 0;
    if (v134)
    {
      v135 = 0;
      v377 = v134;
      do
      {
        if (v77)
        {
          LOBYTE(v77) = 1;
        }

        else
        {
          v379 = v135;
          v77 = *v380;
          v136 = *(*v380 + 16);
          v378 = *v380;
          if (v136)
          {
            v137 = OUTLINED_FUNCTION_25_22();
            sub_257483F38(v137, v138, v139);
            v140 = v388;
            v1 = v382;
            OUTLINED_FUNCTION_193();
            v77 += v141;
            v143 = *(v142 + 72);
            do
            {
              OUTLINED_FUNCTION_15_23();
              sub_2576E4024(v77, v58, v144);
              v388 = v140;
              v146 = *(v140 + 16);
              v145 = *(v140 + 24);
              v79 = v146 + 1;
              if (v146 >= v145 >> 1)
              {
                v148 = OUTLINED_FUNCTION_174(v145);
                sub_257483F38(v148, v146 + 1, 1);
                v1 = v382;
                v140 = v388;
              }

              *(v140 + 16) = v79;
              OUTLINED_FUNCTION_193();
              sub_2576E3FC8(v58, v140 + v147 + *(v1 + 72) * v146, type metadata accessor for Model);
              v77 += v143;
              --v136;
            }

            while (v136);
            v84 = MEMORY[0x277D84F90];
          }

          else
          {
            v140 = v84;
            v1 = v382;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A694(v140, v93, v94, v95);
            v140 = v163;
          }

          if (v379 >= *(v140 + 16))
          {
            goto LABEL_129;
          }

          OUTLINED_FUNCTION_193();
          v79 = v140 + v149;
          v150 = *(v1 + 72);
          v151 = sub_2576E050C(v381);
          LOBYTE(v77) = v151;
          v152 = *(v140 + 16);
          if (v152)
          {
            LODWORD(v367) = v151;
            v153 = OUTLINED_FUNCTION_25_22();
            sub_257484E38(v153, v154, v155);
            v156 = v388;
            do
            {
              sub_2576E4024(v79, v56, type metadata accessor for Model);
              OUTLINED_FUNCTION_15_23();
              sub_2576E4024(v56, i, v157);
              sub_2576E3EA4(v56, type metadata accessor for Model);
              v388 = v156;
              v159 = *(v156 + 16);
              v158 = *(v156 + 24);
              if (v159 >= v158 >> 1)
              {
                v162 = OUTLINED_FUNCTION_174(v158);
                sub_257484E38(v162, v159 + 1, 1);
                v156 = v388;
              }

              *(v156 + 16) = v159 + 1;
              OUTLINED_FUNCTION_193();
              sub_2576E3FC8(i, v156 + v160 + *(v161 + 72) * v159, type metadata accessor for Proto_Model);
              v79 += v150;
              --v152;
            }

            while (v152);

            LOBYTE(v77) = v367;
            v84 = MEMORY[0x277D84F90];
          }

          else
          {

            v156 = v84;
          }

          v135 = v379;
          *v380 = v156;
          v134 = v377;
        }

        ++v135;
      }

      while (v135 != v134);
    }

    v202 = v380;
    sub_2576E4024(v380, v375, type metadata accessor for PipelineConfiguration);
    v203 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_16(v203, v204, v205, v206, v207, v208, v209, v210, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
    type metadata accessor for Proto_Model.OneOf_Type(0);
    v211 = OUTLINED_FUNCTION_39_7();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
    OUTLINED_FUNCTION_28_26();
    sub_2574FE574();
    OUTLINED_FUNCTION_6_50();
    v215 = type metadata accessor for PipelineConfiguration;
    v216 = v202;
    goto LABEL_85;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v87 = v381;
    if (EnumCaseMultiPayload)
    {
      v176 = type metadata accessor for ModelKind;
LABEL_118:
      sub_2576E3EA4(v77, v176);
LABEL_119:
      LOBYTE(v77) = 0;
      return v77 & 1;
    }

    v88 = OUTLINED_FUNCTION_189();
    v79 = v362;
    sub_2576E3FC8(v88, v362, v89);
    PipelineClassifierConfiguration.models.getter();
    v91 = *(v90 + 16);

    v77 = 0;
    if (v91)
    {
      for (i = 0; i != v91; ++i)
      {
        if (v77)
        {
          v77 = 1;
        }

        else
        {
          v1 = v79;
          PipelineClassifierConfiguration.models.getter();
          v84 = v92;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A694(v84, v93, v94, v95);
            v84 = v96;
          }

          if (i >= *(v84 + 16))
          {
            goto LABEL_130;
          }

          OUTLINED_FUNCTION_2_60();
          v77 = sub_2576E050C(v87);
          PipelineClassifierConfiguration.models.setter(v84);
        }
      }
    }

    OUTLINED_FUNCTION_32_12();
    v217 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_16(v217, v218, v219, v220, v221, v222, v223, v224, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
    type metadata accessor for Proto_Model.OneOf_Type(0);
    v225 = OUTLINED_FUNCTION_39_7();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
    sub_2574FE574();
    OUTLINED_FUNCTION_6_50();
    v201 = type metadata accessor for PipelineClassifierConfiguration;
    goto LABEL_84;
  }

  v114 = OUTLINED_FUNCTION_189();
  v79 = v363;
  sub_2576E3FC8(v114, v363, v115);
  PipelineRegressorConfiguration.models.getter();
  v117 = *(v116 + 16);

  v118 = v381;
  v77 = 0;
  if (!v117)
  {
LABEL_81:
    OUTLINED_FUNCTION_32_12();
    v189 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_16(v189, v190, v191, v192, v193, v194, v195, v196, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
    type metadata accessor for Proto_Model.OneOf_Type(0);
    v197 = OUTLINED_FUNCTION_39_7();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
    sub_2574FE574();
    OUTLINED_FUNCTION_6_50();
    v201 = type metadata accessor for PipelineRegressorConfiguration;
LABEL_84:
    v215 = v201;
    v216 = v79;
LABEL_85:
    sub_2576E3EA4(v216, v215);
    return v77 & 1;
  }

  i = 0;
  while ((v77 & 1) != 0)
  {
    v77 = 1;
LABEL_39:
    if (v117 == ++i)
    {
      goto LABEL_81;
    }
  }

  v1 = v79;
  PipelineRegressorConfiguration.models.getter();
  v84 = v119;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25767A694(v84, v93, v94, v95);
    v84 = v120;
  }

  if (i < *(v84 + 16))
  {
    OUTLINED_FUNCTION_2_60();
    v77 = sub_2576E050C(v118);
    PipelineRegressorConfiguration.models.setter(v84);
    goto LABEL_39;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  sub_25767A6C4(v84, v93, v94, v95);
  v84 = v311;
LABEL_20:
  if ((v79 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v79 < *(v84 + 16))
  {
    OUTLINED_FUNCTION_2_60();
    sub_2576E4080(v100, v98 + v99 * v79);
    Model.outputs.setter();
    goto LABEL_23;
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  v312 = OUTLINED_FUNCTION_4_52();
  sub_25746A0C8(v312, v313, v314, v315);
  v128 = v316;
LABEL_43:
  OUTLINED_FUNCTION_21_28();
  if (v85)
  {
    OUTLINED_FUNCTION_174(v129);
    OUTLINED_FUNCTION_17_25();
    sub_25746A0C8(v317, v318, v319, v320);
    v128 = v321;
  }

  *(v128 + 16) = v1;
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_0_90();
  sub_2576E3FC8(i, v130, v131);
  OUTLINED_FUNCTION_28_26();
  Model.outputs.setter();
  v113 = type metadata accessor for NeuralNetworkRegressor;
LABEL_80:
  sub_2576E3EA4(v77, v113);
LABEL_23:
  LOBYTE(v77) = 1;
  return v77 & 1;
}

uint64_t sub_2576E1C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[2] = v10;

  LOBYTE(a3) = sub_257703248(a3, v9, v6);

  return a3 & 1;
}

void sub_2576E1CC4(uint64_t *a1)
{
  v141 = a1;
  v133 = type metadata accessor for Proto_FeatureType(0);
  MEMORY[0x28223BE20](v133);
  v132 = &v109 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FeatureDescription(0);
  v131 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v135 = (&v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &qword_27F879D40;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v109 - v6;
  v139 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v7 = MEMORY[0x28223BE20](v139);
  v134 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = &v109 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  MEMORY[0x28223BE20](v10 - 8);
  v144 = &v109 - v11;
  v12 = type metadata accessor for Proto_MILSpec_ValueType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1C8, &qword_2577457C0);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v109 - v16;
  v137 = type metadata accessor for FeatureType(0);
  v17 = MEMORY[0x28223BE20](v137);
  v129 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = &v109 - v19;
  v20 = type metadata accessor for MLProgram.NamedValueType(0);
  v143 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v119 = &v109 - v24;
  v25 = type metadata accessor for MLProgram.Operation(0);
  v124 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v109 - v29;
  v31 = type metadata accessor for MLProgram.Block(0);
  v114 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v112 = &v109 - v35;
  MLProgram.Function.blockSpecializations.getter();
  v37 = 0;
  v39 = v36 + 64;
  v38 = *(v36 + 64);
  v116 = v36;
  v40 = 1 << *(v36 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v38;
  v43 = (v40 + 63) >> 6;
  v145 = v12;
  v123 = v30;
  v111 = v36 + 64;
  v110 = v43;
  v128 = v14;
  v120 = v28;
  v113 = v34;
  v127 = v23;
  if ((v41 & v38) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v44 >= v43)
    {

      return;
    }

    v42 = *(v39 + 8 * v44);
    ++v37;
    if (v42)
    {
      v37 = v44;
      do
      {
LABEL_8:
        v117 = v42;
        v118 = v37;
        v45 = *(v116 + 56) + *(v114 + 72) * (__clz(__rbit64(v42)) | (v37 << 6));
        v46 = v112;
        sub_2576E4024(v45, v112, type metadata accessor for MLProgram.Block);
        sub_2576E3FC8(v46, v34, type metadata accessor for MLProgram.Block);
        v47 = *(v34 + 2);
        v48 = *(v47 + 16);
        if (v48)
        {
          v146 = MEMORY[0x277D84F90];
          sub_257484AD8(0, v48, 0);
          v49 = v146;
          v50 = *(type metadata accessor for Proto_MILSpec_Operation(0) - 8);
          v51 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v52 = *(v50 + 72);
          do
          {
            sub_2576E4024(v51, v28, type metadata accessor for Proto_MILSpec_Operation);
            v146 = v49;
            v54 = *(v49 + 16);
            v53 = *(v49 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_257484AD8(v53 > 1, v54 + 1, 1);
              v49 = v146;
            }

            *(v49 + 16) = v54 + 1;
            sub_2576E3FC8(v28, v49 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v54, type metadata accessor for MLProgram.Operation);
            v51 += v52;
            --v48;
          }

          while (v48);
          v4 = &qword_27F879D40;
          v30 = v123;
          v55 = v49;
        }

        else
        {
          v55 = MEMORY[0x277D84F90];
        }

        v125 = *(v55 + 16);
        if (v125)
        {
          v56 = 0;
          v57 = (*(v124 + 80) + 32) & ~*(v124 + 80);
          v115 = v55;
          v122 = v55 + v57;
          v121 = *(v124 + 72);
          do
          {
            v126 = v56;
            sub_2576E4024(v122 + v121 * v56, v30, type metadata accessor for MLProgram.Operation);
            v58 = *(v30 + 3);
            v59 = *(v58 + 16);
            if (v59)
            {
              v146 = MEMORY[0x277D84F90];
              sub_2574848C0(0, v59, 0);
              v60 = v146;
              v61 = *(type metadata accessor for Proto_MILSpec_NamedValueType(0) - 8);
              v62 = v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
              v63 = *(v61 + 72);
              v64 = v119;
              do
              {
                sub_2576E4024(v62, v64, type metadata accessor for Proto_MILSpec_NamedValueType);
                v146 = v60;
                v66 = *(v60 + 16);
                v65 = *(v60 + 24);
                if (v66 >= v65 >> 1)
                {
                  sub_2574848C0(v65 > 1, v66 + 1, 1);
                  v60 = v146;
                }

                *(v60 + 16) = v66 + 1;
                sub_2576E3FC8(v64, v60 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v66, type metadata accessor for MLProgram.NamedValueType);
                v62 += v63;
                --v59;
              }

              while (v59);
              v67 = &qword_27F879D40;
              v12 = v145;
            }

            else
            {
              v60 = MEMORY[0x277D84F90];
              v67 = v4;
            }

            v68 = *(v60 + 16);
            v69 = v144;
            if (v68)
            {
              v70 = v60 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
              v142 = *(v143 + 72);
              do
              {
                sub_2576E4024(v70, v23, type metadata accessor for MLProgram.NamedValueType);
                v71 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
                sub_2574AD5D8(v23 + *(v71 + 24), v69, &qword_27F879E10, &qword_257744730);
                if (__swift_getEnumTagSinglePayload(v69, 1, v12) == 1)
                {
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v72 = *(v12 + 20);
                  if (qword_27F878FF0 != -1)
                  {
                    swift_once();
                  }

                  *&v14[v72] = qword_27F87B038;
                  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v12);

                  if (EnumTagSinglePayload != 1)
                  {
                    sub_2574695E4(v144, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  sub_2576E3FC8(v69, v14, type metadata accessor for Proto_MILSpec_ValueType);
                }

                v74 = *&v14[*(v12 + 20)];
                v75 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                swift_beginAccess();
                v76 = v74 + v75;
                v77 = v140;
                sub_2574AD5D8(v76, v140, v67, &qword_257744660);
                if (__swift_getEnumTagSinglePayload(v77, 1, v139) == 1)
                {
                  sub_2574695E4(v77, v67, &qword_257744660);
                  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
                  v78 = swift_allocBox();
                  v80 = v79;
                  type metadata accessor for Proto_MILSpec_Value(0);
                  v81 = MEMORY[0x277D84F90];
                  *(v80 + 32) = sub_2577435D4();
                  type metadata accessor for Proto_MILSpec_TensorType(0);
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  *v80 = 6;
                  *(v80 + 8) = 1;
                  *(v80 + 16) = 0;
                  *(v80 + 24) = v81;
                  sub_2576E3EA4(v14, type metadata accessor for Proto_MILSpec_ValueType);
                  v12 = v145;
                  v82 = v138;
                }

                else
                {
                  sub_2576E3EA4(v14, type metadata accessor for Proto_MILSpec_ValueType);
                  v83 = v130;
                  sub_2576E3FC8(v77, v130, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
                  sub_2576E3FC8(v83, v134, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
                  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                  v12 = v145;
                  v82 = v138;
                  switch(EnumCaseMultiPayload)
                  {
                    case 1:
                      type metadata accessor for MLProgram.ValueType.ListParameters(0);
                      v105 = swift_allocBox();
                      sub_2576E3FC8(v134, v106, type metadata accessor for Proto_MILSpec_ListType);
                      v78 = v105 | 0x2000000000000000;
                      break;
                    case 2:
                      type metadata accessor for MLProgram.ValueType.TupleParameters(0);
                      v101 = swift_allocBox();
                      sub_2576E3FC8(v134, v102, type metadata accessor for Proto_MILSpec_TupleType);
                      v78 = v101 | 0x4000000000000000;
                      break;
                    case 3:
                      type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
                      v103 = swift_allocBox();
                      sub_2576E3FC8(v134, v104, type metadata accessor for Proto_MILSpec_DictionaryType);
                      v78 = v103 | 0x6000000000000000;
                      break;
                    case 4:
                      type metadata accessor for MLProgram.ValueType.StateParameters(0);
                      v99 = swift_allocBox();
                      sub_2576E3FC8(v134, v100, type metadata accessor for Proto_MILSpec_StateType);
                      v78 = v99 | 0x8000000000000000;
                      break;
                    default:
                      type metadata accessor for MLProgram.ValueType.TensorParameters(0);
                      v78 = swift_allocBox();
                      sub_2576E3FC8(v134, v85, type metadata accessor for Proto_MILSpec_TensorType);
                      break;
                  }
                }

                v146 = v78;
                FeatureType.init(_:)();
                if (__swift_getEnumTagSinglePayload(v82, 1, v137) == 1)
                {
                  sub_2576E3EA4(v23, type metadata accessor for MLProgram.NamedValueType);
                  sub_2574695E4(v82, &qword_27F87A1C8, &qword_2577457C0);
                }

                else
                {
                  v86 = v136;
                  sub_2576E3FC8(v82, v136, type metadata accessor for FeatureType);
                  v87 = *v23;
                  v88 = v23[1];
                  v89 = v86;
                  v90 = v129;
                  sub_2576E4024(v89, v129, type metadata accessor for FeatureType);
                  v91 = v135;
                  v135[2] = 0;
                  v91[3] = 0xE000000000000000;
                  v92 = type metadata accessor for Proto_FeatureDescription(0);

                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v93 = *(v92 + 28);
                  v94 = v133;
                  __swift_storeEnumTagSinglePayload(v91 + v93, 1, 1, v133);
                  *v91 = v87;
                  v91[1] = v88;
                  v95 = v132;
                  sub_25768E090();
                  sub_2576E3EA4(v90, type metadata accessor for FeatureType);
                  sub_2574695E4(v91 + v93, &qword_27F879C38, &qword_257744550);
                  sub_2576E3FC8(v95, v91 + v93, type metadata accessor for Proto_FeatureType);
                  __swift_storeEnumTagSinglePayload(v91 + v93, 0, 1, v94);
                  v91[2] = 0;
                  v91[3] = 0xE000000000000000;
                  v96 = *v141;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_25746A0C8(0, *(v96 + 16) + 1, 1, v96);
                    v96 = v107;
                  }

                  v98 = *(v96 + 16);
                  v97 = *(v96 + 24);
                  v12 = v145;
                  v14 = v128;
                  v23 = v127;
                  if (v98 >= v97 >> 1)
                  {
                    sub_25746A0C8(v97 > 1, v98 + 1, 1, v96);
                    v96 = v108;
                  }

                  sub_2576E3EA4(v136, type metadata accessor for FeatureType);
                  sub_2576E3EA4(v23, type metadata accessor for MLProgram.NamedValueType);
                  *(v96 + 16) = v98 + 1;
                  sub_2576E3FC8(v135, v96 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v98, type metadata accessor for FeatureDescription);
                  *v141 = v96;
                  v67 = &qword_27F879D40;
                }

                v69 = v144;
                v70 += v142;
                --v68;
              }

              while (v68);
            }

            v4 = v67;

            v56 = v126 + 1;
            v30 = v123;
            sub_2576E3EA4(v123, type metadata accessor for MLProgram.Operation);
            v28 = v120;
          }

          while (v56 != v125);
        }

        v42 = (v117 - 1) & v117;
        v34 = v113;
        sub_2576E3EA4(v113, type metadata accessor for MLProgram.Block);
        v39 = v111;
        v37 = v118;
        v43 = v110;
      }

      while (v42);
    }
  }

  __break(1u);
}

uint64_t sub_2576E2CFC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257743994() & 1;
  }
}

uint64_t Model.features.getter()
{
  Model.inputs.getter();
  v2 = v0;
  sub_2576E2D84(&v2);
  return v2;
}

uint64_t sub_2576E2D84(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v79 - v3;
  v4 = type metadata accessor for MLProgram(0);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NeuralNetwork(0);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NeuralNetworkRegressor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NeuralNetwork.Layer(0);
  v88 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  v19 = type metadata accessor for NeuralNetworkClassifier(0);
  MEMORY[0x28223BE20](v19 - 8);
  v82 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PipelineConfiguration(0);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PipelineRegressorConfiguration(0);
  MEMORY[0x28223BE20](v23 - 8);
  v80 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Model(0);
  v87 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v79 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v79 - v32;
  v34 = type metadata accessor for PipelineClassifierConfiguration(0);
  MEMORY[0x28223BE20](v34 - 8);
  v79 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ModelKind(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model.kind.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!v41 & v40)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v61 = v81;
      sub_2576E3FC8(v38, v81, type metadata accessor for PipelineConfiguration);
      v62 = PipelineConfiguration.models.getter();
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = v62 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v65 = *(v87 + 72);
        do
        {
          sub_2576E4024(v64, v28, type metadata accessor for Model);
          sub_2576E2D84(a1);
          sub_2576E3EA4(v28, type metadata accessor for Model);
          v64 += v65;
          --v63;
        }

        while (v63);
      }

      v46 = type metadata accessor for PipelineConfiguration;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v61 = v80;
      sub_2576E3FC8(v38, v80, type metadata accessor for PipelineRegressorConfiguration);
      PipelineRegressorConfiguration.models.getter();
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = v53 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v56 = *(v87 + 72);
        do
        {
          sub_2576E4024(v55, v31, type metadata accessor for Model);
          sub_2576E2D84(a1);
          sub_2576E3EA4(v31, type metadata accessor for Model);
          v55 += v56;
          --v54;
        }

        while (v54);
      }

      v46 = type metadata accessor for PipelineRegressorConfiguration;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        Model.outputs.getter();
        sub_25763D36C(v74);
        v66 = type metadata accessor for ModelKind;
        v67 = v38;
        return sub_2576E3EA4(v67, v66);
      }

      v61 = v79;
      sub_2576E3FC8(v38, v79, type metadata accessor for PipelineClassifierConfiguration);
      PipelineClassifierConfiguration.models.getter();
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v45 = *(v87 + 72);
        do
        {
          sub_2576E4024(v44, v33, type metadata accessor for Model);
          sub_2576E2D84(a1);
          sub_2576E3EA4(v33, type metadata accessor for Model);
          v44 += v45;
          --v43;
        }

        while (v43);
      }

      v46 = type metadata accessor for PipelineClassifierConfiguration;
    }

    v66 = v46;
    v67 = v61;
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 28:
        v47 = v85;
        sub_2576E3FC8(v38, v85, type metadata accessor for NeuralNetwork);
        v48 = NeuralNetwork.layers.getter();
        v49 = *(v48 + 16);
        if (v49)
        {
          v50 = v48 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
          v51 = *(v88 + 72);
          do
          {
            sub_2576E4024(v50, v13, type metadata accessor for NeuralNetwork.Layer);
            sub_2576E37BC(a1);
            sub_2576E3EA4(v13, type metadata accessor for NeuralNetwork.Layer);
            v50 += v51;
            --v49;
          }

          while (v49);
        }

        v52 = type metadata accessor for NeuralNetwork;
        goto LABEL_37;
      case 29:
        v47 = v82;
        sub_2576E3FC8(v38, v82, type metadata accessor for NeuralNetworkClassifier);
        v75 = NeuralNetworkClassifier.layers.getter();
        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = v75 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
          v78 = *(v88 + 72);
          do
          {
            sub_2576E4024(v77, v18, type metadata accessor for NeuralNetwork.Layer);
            sub_2576E37BC(a1);
            sub_2576E3EA4(v18, type metadata accessor for NeuralNetwork.Layer);
            v77 += v78;
            --v76;
          }

          while (v76);
        }

        v52 = type metadata accessor for NeuralNetworkClassifier;
        goto LABEL_37;
      case 30:
        v47 = v83;
        sub_2576E3FC8(v38, v83, type metadata accessor for NeuralNetworkRegressor);
        v57 = NeuralNetworkRegressor.layers.getter();
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = v57 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
          v60 = *(v88 + 72);
          do
          {
            sub_2576E4024(v59, v16, type metadata accessor for NeuralNetwork.Layer);
            sub_2576E37BC(a1);
            sub_2576E3EA4(v16, type metadata accessor for NeuralNetwork.Layer);
            v59 += v60;
            --v58;
          }

          while (v58);
        }

        v52 = type metadata accessor for NeuralNetworkRegressor;
LABEL_37:
        v66 = v52;
        v67 = v47;
        return sub_2576E3EA4(v67, v66);
      case 31:
        v68 = v38;
        v69 = v84;
        sub_2576E3FC8(v68, v84, type metadata accessor for MLProgram);
        MLProgram.functions.getter();
        v70 = v86;
        sub_257657BA8(1852399981, 0xE400000000000000, v71, v86);

        v72 = type metadata accessor for MLProgram.Function(0);
        if (__swift_getEnumTagSinglePayload(v70, 1, v72) == 1)
        {
          sub_2576E3EA4(v69, type metadata accessor for MLProgram);
          return sub_2574695E4(v70, &qword_27F880730, &qword_25776D388);
        }

        sub_2576E1CC4(a1);
        sub_2576E3EA4(v69, type metadata accessor for MLProgram);
        v66 = type metadata accessor for MLProgram.Function;
        v67 = v70;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return sub_2576E3EA4(v67, v66);
}

void sub_2576E37BC(uint64_t *a1)
{
  v66 = type metadata accessor for Proto_FeatureType(0);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FeatureType(0);
  MEMORY[0x28223BE20](v64);
  v72 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeatureDescription(0);
  v63 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v56 - v9);
  v11 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881498, &unk_257774CA0);
  MEMORY[0x28223BE20](v59);
  v58 = &v56 - v14;
  v15 = *(v1 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  swift_beginAccess();
  v16 = *(v15 + 40);

  NeuralNetwork.Layer.outputTensors.getter();
  v18 = 0;
  v68 = *(v16 + 16);
  v69 = v16;
  v56 = v16 + 32;
  v57 = v17;
  v67 = a1;
  v62 = v8;
  v60 = v13;
  while (1)
  {
    if (v18 == v68)
    {
LABEL_25:

      return;
    }

    if (v18 >= *(v69 + 16))
    {
      break;
    }

    v19 = *(v17 + 16);
    if (v18 == v19)
    {
      goto LABEL_25;
    }

    if (v18 >= v19)
    {
      goto LABEL_27;
    }

    v20 = (v56 + 16 * v18);
    v21 = v20[1];
    v71 = *v20;
    v22 = v58;
    v23 = *(v59 + 48);
    sub_2576E4024(v17 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v18, &v58[v23], type metadata accessor for NeuralNetwork.TensorDescriptor);
    sub_2576E3FC8(&v22[v23], v13, type metadata accessor for NeuralNetwork.TensorDescriptor);
    v24 = *(v13 + 1);
    v25 = *(v24 + 16);
    v70 = v21;
    if (v25)
    {
      v73 = MEMORY[0x277D84F90];

      sub_257483724(0, v25, 0);
      v26 = v73;
      v27 = (v24 + 32);
      v28 = *(v73 + 16);
      do
      {
        v30 = *v27++;
        v29 = v30;
        v73 = v26;
        v31 = *(v26 + 24);
        if (v28 >= v31 >> 1)
        {
          sub_257483724(v31 > 1, v28 + 1, 1);
          v26 = v73;
        }

        *(v26 + 16) = v28 + 1;
        *(v26 + 8 * v28++ + 32) = v29;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v32 = &v72[*(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20)];
    v33 = type metadata accessor for Proto_ArrayFeatureType(0);
    v34 = *(v33 + 24);
    v35 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    __swift_storeEnumTagSinglePayload(&v32[v34], 1, 1, v35);
    v36 = &v32[*(v33 + 28)];
    *v36 = 0;
    v36[8] = -1;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v37 = *(v26 + 16);
    if (v37)
    {
      v73 = MEMORY[0x277D84F90];
      sub_2574845B8(0, v37, 0);
      v38 = v73;
      v39 = *(v73 + 16);
      v40 = 32;
      do
      {
        v41 = *(v26 + v40);
        v73 = v38;
        v42 = *(v38 + 24);
        if (v39 >= v42 >> 1)
        {
          sub_2574845B8(v42 > 1, v39 + 1, 1);
          v38 = v73;
        }

        *(v38 + 16) = v39 + 1;
        *(v38 + 8 * v39 + 32) = v41;
        v40 += 8;
        ++v39;
        --v37;
      }

      while (v37);
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    *v32 = v38;
    *(v32 + 1) = 1;
    v32[16] = 1;
    v43 = v72;
    *v72 = 0;
    swift_storeEnumTagMultiPayload();
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v44 = type metadata accessor for Proto_FeatureDescription(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v45 = *(v44 + 28);
    v46 = v66;
    __swift_storeEnumTagSinglePayload(v10 + v45, 1, 1, v66);
    v47 = v70;
    *v10 = v71;
    v10[1] = v47;
    v48 = v65;
    sub_25768E090();
    sub_2576E3EA4(v43, type metadata accessor for FeatureType);
    sub_2574695E4(v10 + v45, &qword_27F879C38, &qword_257744550);
    sub_2576E3FC8(v48, v10 + v45, type metadata accessor for Proto_FeatureType);
    __swift_storeEnumTagSinglePayload(v10 + v45, 0, 1, v46);
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v49 = v62;
    sub_2576E4024(v10, v62, type metadata accessor for FeatureDescription);
    v50 = v67;
    v51 = *v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25746A0C8(0, *(v51 + 16) + 1, 1, v51);
      v51 = v54;
    }

    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_25746A0C8(v52 > 1, v53 + 1, 1, v51);
      v51 = v55;
    }

    ++v18;
    *(v51 + 16) = v53 + 1;
    sub_2576E3FC8(v49, v51 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, type metadata accessor for FeatureDescription);
    *v50 = v51;
    sub_2576E3EA4(v10, type metadata accessor for FeatureDescription);
    v13 = v60;
    sub_2576E3EA4(v60, type metadata accessor for NeuralNetwork.TensorDescriptor);
    v17 = v57;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_2576E3EA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576E3EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_257743994() & 1;
  }
}

uint64_t sub_2576E3FC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2576E4024(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2576E4080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return sub_2576E3EA4(v0, type metadata accessor for ModelKind);
}

void OUTLINED_FUNCTION_26_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_25746EEC4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  v4 = *(v2 - 216);

  return sub_2576E4024(v1, v4, v0);
}

void sub_2576E431C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Proto_MILSpec_Value(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v9;
  v10 = type metadata accessor for MLProgram.Value(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  type metadata accessor for Proto_MILSpec_ListValue(0);
  v28 = a2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(a1 + 16);
  v33 = MEMORY[0x277D84F90];
  sub_257484C58(0, v17, 0);
  v18 = v33;
  v30 = a1;
  if (v17)
  {
    v19 = 0;
    v20 = *(a1 + 16);
    v31 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v32 = v20;
    while (v32 != v19)
    {
      sub_2576E79A8(v31 + *(v11 + 72) * v19, v14, type metadata accessor for MLProgram.Value);
      sub_2576E79A8(v14, v8, type metadata accessor for Proto_MILSpec_Value);
      sub_2576E7950(v14, type metadata accessor for MLProgram.Value);
      v33 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_257484C58(v21 > 1, v22 + 1, 1);
        v18 = v33;
      }

      ++v19;
      *(v18 + 16) = v22 + 1;
      sub_2576E7A08(v8, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, type metadata accessor for Proto_MILSpec_Value);
      if (v17 == v19)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v23 = v29;
    v24 = v30;
    while (1)
    {
      v25 = *(v24 + 16);
      if (v17 == v25)
      {

        *v28 = v18;
        return;
      }

      if (v17 >= v25)
      {
        break;
      }

      sub_2576E79A8(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v16, type metadata accessor for MLProgram.Value);
      sub_2576E79A8(v16, v23, type metadata accessor for Proto_MILSpec_Value);
      sub_2576E7950(v16, type metadata accessor for MLProgram.Value);
      v33 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_257484C58(v26 > 1, v27 + 1, 1);
        v18 = v33;
      }

      *(v18 + 16) = v27 + 1;
      sub_2576E7A08(v23, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for Proto_MILSpec_Value);
      ++v17;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2576E46F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(type metadata accessor for FeatureDescription(0) - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    v10 = *v9 == a2 && v9[1] == a3;
    if (v10 || (sub_257743994() & 1) != 0)
    {
      v11 = v6;
      goto LABEL_11;
    }

    ++v6;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t sub_2576E47EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_257743994() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_2576E48A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v204 = a7;
  v206 = a6;
  v210 = a5;
  v205 = a4;
  v218 = a2;
  v219 = a3;
  v217 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  MEMORY[0x28223BE20](v9 - 8);
  v224 = &v185 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v223 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v222 = &v185 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v15 - 8);
  v229 = &v185 - v16;
  v228 = type metadata accessor for Proto_MILSpec_ValueType(0);
  MEMORY[0x28223BE20](v228);
  *&v230 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for MLProgram.Value.Representation(0);
  MEMORY[0x28223BE20](v227);
  v226 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v19 = MEMORY[0x28223BE20](v209);
  v221 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v225 = &v185 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v194 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v197 = &v185 - v25;
  v200 = type metadata accessor for MLProgram.Argument.Binding(0);
  MEMORY[0x28223BE20](v200);
  v199 = (&v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for MLProgram.Operation(0);
  v202 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v201 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v208 = &v185 - v30;
  v31 = type metadata accessor for MLProgram.Value(0);
  v220 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v207 = (&v185 - v35);
  v196 = type metadata accessor for MLProgram.Block(0);
  v192 = *(v196 - 8);
  v36 = MEMORY[0x28223BE20](v196);
  v193 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v185 - v39;
  MEMORY[0x28223BE20](v38);
  v211 = &v185 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880668, &unk_257774DB0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v45 = (&v185 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v47 = (&v185 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v198 = &v185 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v185 - v51;
  v53 = type metadata accessor for MLProgram.Function(0);
  MEMORY[0x28223BE20](v53);
  v55 = &v185 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLProgram.functions.getter();
  sub_257657BA8(1852399981, 0xE400000000000000, v56, v52);

  v195 = v53;
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_2574695E4(v52, &qword_27F880730, &qword_25776D388);
    sub_2576E6D44();
    swift_allocError();
    *v57 = 0;
    v57[1] = 0;
    return swift_willThrow();
  }

  sub_2576E7A08(v52, v55, type metadata accessor for MLProgram.Function);
  MLProgram.Function.blockSpecializations.getter();
  v60 = *(v59 + 16);

  if (v60 != 1)
  {
    goto LABEL_9;
  }

  MLProgram.Function.blockSpecializations.getter();
  sub_25763CD70(v61, v47);

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  if (__swift_getEnumTagSinglePayload(v47, 1, v62) != 1)
  {
    v190 = v8;
    v65 = *v47;
    v64 = v47[1];
    sub_2576E7950(v47 + *(v62 + 48), type metadata accessor for MLProgram.Block);
    MLProgram.Function.blockSpecializations.getter();
    sub_25763CD70(v66, v45);

    if (__swift_getEnumTagSinglePayload(v45, 1, v62) == 1)
    {

      v63 = v45;
      goto LABEL_8;
    }

    sub_2576E7A08(v45 + *(v62 + 48), v40, type metadata accessor for MLProgram.Block);
    v73 = v40;
    v74 = v211;
    sub_2576E7A08(v73, v211, type metadata accessor for MLProgram.Block);
    if ((sub_2576E6204() & 1) == 0)
    {

      sub_2576E7950(v74, type metadata accessor for MLProgram.Block);
      goto LABEL_9;
    }

    v187 = v65;
    v189 = v64;
    v75 = swift_allocBox();
    LOBYTE(v231) = 1;
    v76 = MEMORY[0x277D84F90];
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v77 = v217;
    v78 = *(v217 + 16);
    v188 = v55;
    if (v78)
    {
      v186 = v75;
      v232 = v76;
      sub_257484A40(0, v78, 0);
      v79 = (v77 + 40);
      v80 = v232;
      v191 = xmmword_2577442B0;
      v185 = v78;
      v81 = v230;
      v82 = v34;
      v84 = v225;
      v83 = v226;
      do
      {
        v216 = v78;
        v217 = v80;
        v86 = *(v79 - 1);
        v85 = *v79;
        v212 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
        v87 = swift_allocObject();
        *(v87 + 16) = v191;
        *(v87 + 32) = v86;
        *(v87 + 40) = v85;
        LOBYTE(v231) = 1;
        v213 = v85;
        swift_bridgeObjectRetain_n();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        *v83 = v87;
        *(v83 + 8) = 0x3000000000000000;
        *(v83 + 16) = 0;
        type metadata accessor for MLProgram.Value.ImmediateValue(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        *v82 = 0;
        v82[1] = 0xE000000000000000;
        v88 = type metadata accessor for Proto_MILSpec_Value(0);
        v89 = *(v88 + 20);
        v214 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        v215 = v89;
        __swift_storeEnumTagSinglePayload(v82 + v89, 1, 1, v214);

        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v90 = *(v88 + 28);
        v91 = v228;
        __swift_storeEnumTagSinglePayload(v82 + v90, 1, 1, v228);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v92 = *(v91 + 20);
        if (qword_27F878FF0 != -1)
        {
          swift_once();
        }

        *(v81 + v92) = qword_27F87B038;
        v93 = v221;
        sub_2576E79A8(v84, v221, type metadata accessor for MLProgram.ValueType.TensorParameters);
        v94 = v93;
        v95 = v229;
        sub_2576E7A08(v94, v229, type metadata accessor for Proto_MILSpec_TensorType);
        v96 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
        swift_storeEnumTagMultiPayload();
        v97 = v96;
        v81 = v230;
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v97);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2576E7950(v84, type metadata accessor for MLProgram.ValueType.TensorParameters);
          v98 = *(v81 + v92);
        }

        else
        {
          type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
          swift_allocObject();

          v98 = sub_2574E503C(v99);
          sub_2576E7950(v84, type metadata accessor for MLProgram.ValueType.TensorParameters);
          v81 = v230;

          *(v81 + v92) = v98;
        }

        v100 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
        swift_beginAccess();
        sub_2576E78F0(v229, v98 + v100, &qword_27F879D40, &qword_257744660);
        swift_endAccess();
        sub_2574695E4(v82 + v90, &qword_27F879E10, &qword_257744730);
        sub_2576E7A08(v81, v82 + v90, type metadata accessor for Proto_MILSpec_ValueType);
        __swift_storeEnumTagSinglePayload(v82 + v90, 0, 1, v228);
        v101 = v226;
        v102 = v222;
        sub_2576E79A8(v226, v222, type metadata accessor for MLProgram.Value.Representation);
        v103 = v227;
        __swift_storeEnumTagSinglePayload(v102, 0, 1, v227);
        v104 = v223;
        sub_2576E7880(v102, v223);
        if (__swift_getEnumTagSinglePayload(v104, 1, v103) == 1)
        {

          sub_2574695E4(v102, &qword_27F880A30, &qword_25776ED00);
          sub_2576E7950(v101, type metadata accessor for MLProgram.Value.Representation);
          sub_2574695E4(v104, &qword_27F880A30, &qword_25776ED00);
          v105 = 1;
          v106 = v224;
        }

        else
        {
          v106 = v224;
          sub_257661640();

          sub_2574695E4(v102, &qword_27F880A30, &qword_25776ED00);
          sub_2576E7950(v101, type metadata accessor for MLProgram.Value.Representation);
          sub_2576E7950(v104, type metadata accessor for MLProgram.Value.Representation);
          v105 = 0;
        }

        v83 = v101;
        __swift_storeEnumTagSinglePayload(v106, v105, 1, v214);
        sub_2576E78F0(v106, v82 + v215, &qword_27F879EA8, &unk_2577447D0);
        v107 = v216;
        v80 = v217;
        v232 = v217;
        v109 = *(v217 + 16);
        v108 = *(v217 + 24);
        v84 = v225;
        if (v109 >= v108 >> 1)
        {
          sub_257484A40(v108 > 1, v109 + 1, 1);
          v80 = v232;
        }

        *(v80 + 16) = v109 + 1;
        sub_2576E7A08(v82, v80 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v109, type metadata accessor for MLProgram.Value);
        v79 = v212 + 2;
        v78 = v107 - 1;
      }

      while (v78);
      v75 = v186;
      v78 = v185;
    }

    v110 = v207;
    sub_2576E6348(v75, v78, 0, v207);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814C0, &qword_257774DD0);
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814C8, &qword_257774DD8) - 8);
    v112 = *(v111 + 72);
    v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v114 = swift_allocObject();
    v230 = xmmword_257743FF0;
    *(v114 + 16) = xmmword_257743FF0;
    v115 = v114 + v113;
    strcpy(v115, "probabilities");
    *(v115 + 14) = -4864;
    v116 = v219;
    v117 = v199;
    *v199 = v218;
    *(v117 + 8) = v116;
    swift_storeEnumTagMultiPayload();

    MLProgram.Argument.init(binding:)(v117);
    v118 = (v115 + v112);
    *v118 = 0x73657373616C63;
    v118[1] = 0xE700000000000000;
    sub_2576E79A8(v110, v117, type metadata accessor for MLProgram.Value);
    swift_storeEnumTagMultiPayload();
    MLProgram.Argument.init(binding:)(v117);
    type metadata accessor for MLProgram.Argument(0);
    sub_2577435D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F48, &qword_257744870);
    v119 = *(type metadata accessor for MLProgram.NamedValueType(0) - 8);
    v120 = *(v119 + 72);
    v121 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = v230;
    v123 = (v122 + v121);
    v124 = swift_allocBox();
    LOBYTE(v231) = 1;
    v125 = v210;

    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v231 = v124;
    MLProgram.NamedValueType.init(name:type:)(v205, v125, &v231, v123);
    v126 = swift_allocBox();
    LOBYTE(v231) = 1;
    v127 = v204;

    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v128 = swift_allocBox();
    LOBYTE(v231) = 4;
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
    v129 = swift_allocBox();
    v231 = v126;
    v232 = v128;
    MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
    v231 = v129 | 0x6000000000000000;
    MLProgram.NamedValueType.init(name:type:)(v206, v127, &v231, (v123 + v120));
    v130 = v208;
    MLProgram.Operation.init(name:inputs:outputs:)();
    v131 = v201;
    sub_2576E79A8(v130, v201, type metadata accessor for MLProgram.Operation);
    v132 = v211;
    v133 = MLProgram.Block.operations.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v135 = *(v133 + 16);
      v134 = *(v133 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_257469E54(v134 > 1, v135 + 1, 1, v133);
        v133 = v180;
      }

      *(v133 + 16) = v135 + 1;
      sub_2576E7A08(v131, v133 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v135, type metadata accessor for MLProgram.Operation);
      MLProgram.Block.operations.setter();
      v136 = *(v132 + 8);
      v231 = v136;
      v137 = v219;
      swift_bridgeObjectRetain_n();

      v139 = v203;
      result = sub_2576E47EC(v138, v218, v137);
      *&v230 = v139;
      if (v140)
      {
        break;
      }

      v131 = result;
      v127 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      v142 = 16 * result;
      v141 = v136;
      v143 = v218;
      v144 = v219;
      while (1)
      {
        v133 = *(v141 + 16);
        if (v127 == v133)
        {
          v127 = v204;
          goto LABEL_51;
        }

        if (v127 >= v133)
        {
          break;
        }

        v145 = *(v141 + v142 + 48);
        v146 = *(v141 + v142 + 56);
        if (v145 != v143 || v146 != v144)
        {
          if (sub_257743994())
          {
            v143 = v218;
            v144 = v219;
          }

          else
          {
            if (v127 != v131)
            {
              if (v131 >= v133)
              {
                goto LABEL_67;
              }

              v148 = (v141 + 32 + 16 * v131);
              v133 = *v148;
              v132 = v148[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_25767A634(v141, v149, v150, v151);
                v141 = v154;
              }

              v152 = v141 + 16 * v131;
              *(v152 + 32) = v145;
              *(v152 + 40) = v146;

              if (v127 >= *(v141 + 16))
              {
                goto LABEL_68;
              }

              v153 = v141 + v142;
              *(v153 + 48) = v133;
              *(v153 + 56) = v132;

              v231 = v141;
              v132 = v211;
            }

            v143 = v218;
            v144 = v219;
            ++v131;
          }
        }

        ++v127;
        v142 += 16;
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_257469E54(0, *(v133 + 16) + 1, 1, v133);
      v133 = v179;
    }

    v131 = *(v136 + 16);
    v141 = v136;
LABEL_51:

    v155 = *(v141 + 16);
    if (v155 < v131)
    {
      __break(1u);
    }

    else
    {
      sub_2576E745C(v131, v155);

      v156 = v231;
      *(v132 + 8) = v231;

      v157 = v156;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_53:
        v158 = *(v157 + 16);
        if (v158 >= *(v157 + 24) >> 1)
        {
          sub_257469ED4();
          v157 = v182;
        }

        *(v157 + 16) = v158 + 1;
        v159 = v157 + 16 * v158;
        v160 = v210;
        *(v159 + 32) = v205;
        *(v159 + 40) = v160;

        *(v132 + 8) = v157;

        v161 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_257469ED4();
          v161 = v183;
        }

        v162 = *(v161 + 16);
        if (v162 >= *(v161 + 24) >> 1)
        {
          sub_257469ED4();
          v161 = v184;
        }

        *(v161 + 16) = v162 + 1;
        v163 = v161 + 16 * v162;
        *(v163 + 32) = v206;
        *(v163 + 40) = v127;

        *(v132 + 8) = v161;
        v164 = v197;
        sub_2576E79A8(v132, v197, type metadata accessor for MLProgram.Block);
        v165 = v196;
        __swift_storeEnumTagSinglePayload(v164, 0, 1, v196);
        v166 = v188;
        MLProgram.Function.blockSpecializations.getter();
        v168 = v167;
        if (__swift_getEnumTagSinglePayload(v164, 1, v165) == 1)
        {
          sub_2574695E4(v164, &qword_27F880698, &qword_25776CFE0);
          v169 = sub_25765368C(v187, v189);
          if (v170)
          {
            v171 = v169;
            swift_isUniquelyReferenced_nonNull_native();
            v231 = v168;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
            v166 = v188;
            sub_257743894();
            v168 = v231;

            v172 = v194;
            sub_2576E7A08(*(v168 + 56) + *(v192 + 72) * v171, v194, type metadata accessor for MLProgram.Block);
            sub_2577438B4();
            v173 = 0;
          }

          else
          {
            v173 = 1;
            v172 = v194;
          }

          __swift_storeEnumTagSinglePayload(v172, v173, 1, v165);

          sub_2574695E4(v172, &qword_27F880698, &qword_25776CFE0);
        }

        else
        {
          v174 = v164;
          v175 = v193;
          sub_2576E7A08(v174, v193, type metadata accessor for MLProgram.Block);
          swift_isUniquelyReferenced_nonNull_native();
          v231 = v168;
          sub_25765C2DC(v175, v187, v189);

          v168 = v231;
        }

        sub_257653AF8(v168);
        v177 = v176;

        *(v166 + 24) = v177;
        v178 = v198;
        sub_2576E79A8(v166, v198, type metadata accessor for MLProgram.Function);
        __swift_storeEnumTagSinglePayload(v178, 0, 1, v195);
        MLProgram.mainFunction.setter();
        sub_2576E7950(v208, type metadata accessor for MLProgram.Operation);
        sub_2576E7950(v207, type metadata accessor for MLProgram.Value);
        sub_2576E7950(v132, type metadata accessor for MLProgram.Block);
        v72 = v166;
        return sub_2576E7950(v72, type metadata accessor for MLProgram.Function);
      }
    }

    sub_257469ED4();
    v157 = v181;
    goto LABEL_53;
  }

  v63 = v47;
LABEL_8:
  sub_2574695E4(v63, &qword_27F880668, &unk_257774DB0);
LABEL_9:
  MLProgram.Function.blockSpecializations.getter();
  v231 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814A8, &unk_257774DC0);
  sub_2576E77C8();
  sub_2576E782C();
  v68 = sub_257743744();
  v70 = v69;

  sub_2576E6D44();
  swift_allocError();
  *v71 = v68;
  v71[1] = v70;
  swift_willThrow();
  v72 = v55;
  return sub_2576E7950(v72, type metadata accessor for MLProgram.Function);
}