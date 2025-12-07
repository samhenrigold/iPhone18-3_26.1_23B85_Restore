uint64_t sub_257627C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_2574AD5D8(a1 + *(v11 + 28), v7, &qword_27F880098, &unk_25776A1C0);
  v12 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F880098, &unk_25776A1C0);
  }

  sub_257628648(v7, v10, type metadata accessor for Proto_StringVector);
  sub_257628518(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  sub_257743574();
  return sub_2576285F0(v10, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification27TextClassifierConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800C8, &qword_25776A3B8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v14 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v14 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v15 = *(v24 + 28);
  v16 = *(v10 + 48);
  sub_2574AD5D8(a1 + v15, v13, &qword_27F880098, &unk_25776A1C0);
  sub_2574AD5D8(a2 + v15, &v13[v16], &qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_65(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_65(&v13[v16]);
    if (v14)
    {
      sub_2574695E4(v13, &qword_27F880098, &unk_25776A1C0);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_21();
      sub_257628518(v21, v22, MEMORY[0x277D216D0]);
      v18 = sub_257743644();
      return v18 & 1;
    }

    goto LABEL_16;
  }

  sub_2574AD5D8(v13, v9, &qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_65(&v13[v16]);
  if (v17)
  {
    sub_2576285F0(v9, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
LABEL_16:
    sub_2574695E4(v13, &qword_27F8800C8, &qword_25776A3B8);
    goto LABEL_17;
  }

  sub_257628648(&v13[v16], v6, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  v20 = sub_2576271CC(v9, v6);
  sub_2576285F0(v6, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  sub_2576285F0(v9, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  sub_2574695E4(v13, &qword_27F880098, &unk_25776A1C0);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_17:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25762819C()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257628518(&qword_27F8800A8, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A264);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257628274(uint64_t a1, uint64_t a2)
{
  v4 = sub_257628518(&qword_27F8800B8, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A2F4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576282F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879A30 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257628398(uint64_t a1)
{
  v2 = sub_257628518(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A32C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257628408(uint64_t a1, uint64_t a2)
{
  sub_257628518(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier, &unk_25776A32C);

  return sub_257743424();
}

uint64_t sub_257628518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576285F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_257628648(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2576286A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2576287D0(uint64_t a1)
{
  sub_2576288DC(319, &qword_2815377A8, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_2576288DC(319, &qword_281537780, type metadata accessor for Proto_TreeEnsembleParameters, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2576288DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2576289B8(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2576288DC(319, &qword_281537780, type metadata accessor for Proto_TreeEnsembleParameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257628AA4(uint64_t a1)
{
  sub_2576288DC(319, &qword_27F8800F0, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574CE5E4();
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

void sub_257628BC0(uint64_t a1)
{
  sub_2576288DC(319, &qword_27F880108, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257628CBC@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_24_8(a1);
  type metadata accessor for Proto_TreeEnsembleRegressor(v1);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  v2 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_257628D10@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_24_8(a1);
  v3 = *(type metadata accessor for Proto_TreeEnsembleClassifier(v2) + 20);
  v4 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  v5 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_257628DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762E35C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_257628ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762E460();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_257628F34()
{
  result = qword_27F880110;
  if (!qword_27F880110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880110);
  }

  return result;
}

unint64_t sub_257628FC0()
{
  result = qword_27F880128;
  if (!qword_27F880128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880128);
  }

  return result;
}

unint64_t sub_257629018()
{
  result = qword_27F880130;
  if (!qword_27F880130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880130);
  }

  return result;
}

unint64_t sub_2576290A4()
{
  result = qword_27F880148;
  if (!qword_27F880148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880148);
  }

  return result;
}

uint64_t sub_2576290F8@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762918C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = v2;
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576291D0(uint64_t a1, uint64_t a2)
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
  type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (v43 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880218, &qword_25776AE88);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v43 - v21;
  v23 = *(v20 + 56);
  sub_25762E4B4(a1, v43 - v21);
  sub_25762E4B4(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25762E4B4(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E408();
      if (sub_257487374())
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v24, v25, MEMORY[0x277D216D0]);
        v26 = sub_257743644();
        OUTLINED_FUNCTION_2_20();
        sub_25762E3B0(v7, v27);
        if (v26)
        {
          OUTLINED_FUNCTION_2_20();
          v29 = v15;
LABEL_13:
          sub_25762E3B0(v29, v28);
          OUTLINED_FUNCTION_3_20();
          sub_25762E3B0(v22, v36);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_20();
        sub_25762E3B0(v7, v38);
      }

      OUTLINED_FUNCTION_2_20();
      v40 = v15;
LABEL_18:
      sub_25762E3B0(v40, v39);
      OUTLINED_FUNCTION_3_20();
      sub_25762E3B0(v22, v42);
      return 0;
    }

    OUTLINED_FUNCTION_2_20();
    v31 = v15;
  }

  else
  {
    sub_25762E4B4(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25762E408();
      if (sub_257479C78(*v17, *v11))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v32, v33, MEMORY[0x277D216D0]);
        v34 = sub_257743644();
        OUTLINED_FUNCTION_1_22();
        sub_25762E3B0(v11, v35);
        if (v34)
        {
          OUTLINED_FUNCTION_1_22();
          v29 = v17;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_22();
        sub_25762E3B0(v11, v41);
      }

      OUTLINED_FUNCTION_1_22();
      v40 = v17;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_22();
    v31 = v17;
  }

  sub_25762E3B0(v31, v30);
  sub_2574695E4(v22, &qword_27F880218, &qword_25776AE88);
  return 0;
}

uint64_t sub_25762956C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA260);
  __swift_project_value_buffer(v0, qword_27F8EA260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NoTransform";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Classification_SoftMax";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Regression_Logistic";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Classification_SoftMaxWithZeroClassReference";
  *(v14 + 1) = 44;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576297D0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA278);
  __swift_project_value_buffer(v0, qword_27F8EA278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nodes";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numPredictionDimensions";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "basePredictionValue";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576299D8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_10_7();
        sub_257743334();
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_257629A58(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_257629A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, &unk_25776ACA8);
  return sub_2577433C4();
}

uint64_t sub_257629AF8()
{
  OUTLINED_FUNCTION_8_9();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0), sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, &unk_25776ACA8), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743494(), !v1))
      {
        type metadata accessor for Proto_TreeEnsembleParameters(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_257629BF4()
{
  OUTLINED_FUNCTION_267();
  sub_257481CB8();
  if ((v2 & 1) == 0 || *(v1 + 8) != *(v0 + 8) || (sub_257479D04(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_TreeEnsembleParameters(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  v5 = sub_25762DE04(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_257629CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801E0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AC48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257629D88(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257629E50(uint64_t a1, uint64_t a2)
{
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);

  return sub_257743424();
}

uint64_t sub_257629ED0()
{
  result = MEMORY[0x259C64E90](0x646F4E656572542ELL, 0xE900000000000065);
  qword_27F8EA290 = 0xD00000000000001CLL;
  *algn_27F8EA298 = 0x80000002577803C0;
  return result;
}

uint64_t sub_257629F40()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2A0);
  __swift_project_value_buffer(v0, qword_27F8EA2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25774B5E0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "treeId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "nodeId";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "nodeBehavior";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "branchFeatureIndex";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "branchFeatureValue";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "trueChildNodeId";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "falseChildNodeId";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "missingValueTracksTrueChild";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "evaluationInfo";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 30;
  *v24 = "relativeHitRate";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_25762A2F0()
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
      case 2:
      case 10:
      case 12:
      case 13:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_25762A3D8(v3, v4);
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        continue;
      case 11:
        goto LABEL_6;
      case 14:
        OUTLINED_FUNCTION_10_7();
        sub_257743274();
        break;
      case 20:
        v5 = OUTLINED_FUNCTION_6_8();
        sub_25762A440(v5, v6, v7, v8);
        break;
      default:
        if (result == 30)
        {
LABEL_6:
          OUTLINED_FUNCTION_10_7();
          sub_257743374();
        }

        break;
    }
  }
}

uint64_t sub_25762A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, &unk_25776AA00);
  return sub_2577433C4();
}

uint64_t sub_25762A4E0()
{
  v3 = v1;
  OUTLINED_FUNCTION_8_9();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
    {
      if (!*(v2 + 16) || (sub_25762E460(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v3 = v1) == 0))
      {
        if (!*(v2 + 32) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
        {
          if (!*(v2 + 40) || (v1 = v3, OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
          {
            if (!*(v2 + 48) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
            {
              if (!*(v2 + 56) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
              {
                if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), (v3 = v1) == 0))
                {
                  if (!*(*(v2 + 72) + 16) || (type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0), sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, &unk_25776AA00), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), (v3 = v1) == 0))
                  {
                    if (!*(v2 + 80) || (OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
                    {
                      type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
                      return OUTLINED_FUNCTION_7_5();
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

uint64_t _s20MLModelSpecification12TreeEnsembleV0C4NodeV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v4 + 8) == *(v5 + 8))
    {
      v6 = *(v3 + 16);
      v7 = *(v2 + 16);
      if (*(v2 + 24) == 1)
      {
        switch(v7)
        {
          case 1:
            if (v6 != 1)
            {
              return 0;
            }

            goto LABEL_8;
          case 2:
            if (v6 != 2)
            {
              return 0;
            }

            goto LABEL_8;
          case 3:
            if (v6 != 3)
            {
              return 0;
            }

            goto LABEL_8;
          case 4:
            if (v6 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v6 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v6 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            if (!v6)
            {
              goto LABEL_8;
            }

            return 0;
        }
      }

      if (v6 == v7)
      {
LABEL_8:
        if (*(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40) && *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56) && *(v3 + 64) == *(v2 + 64))
        {
          sub_257481FA8(*(v3 + 72), *(v2 + 72));
          if ((v8 & 1) != 0 && *(v3 + 80) == *(v2 + 80))
          {
            type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
            sub_2577431B4();
            OUTLINED_FUNCTION_0_32();
            v11 = sub_25762DE04(v9, v10, MEMORY[0x277D216D0]);
            return OUTLINED_FUNCTION_4_2(v11) & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_25762A8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F880200, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, &unk_25776AB58);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762A96C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, &unk_25776ACA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762AA34(uint64_t a1, uint64_t a2)
{
  sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, &unk_25776ACA8);

  return sub_257743424();
}

uint64_t sub_25762AAB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2B8);
  __swift_project_value_buffer(v0, qword_27F8EA2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BranchOnValueLessThanEqual";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BranchOnValueLessThan";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BranchOnValueGreaterThanEqual";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BranchOnValueGreaterThan";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "BranchOnValueEqual";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "BranchOnValueNotEqual";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LeafNode";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762ADD0()
{
  if (qword_27F879A48 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8EA290;
  v2 = *algn_27F8EA298;
  swift_bridgeObjectRetain_n();
  MEMORY[0x259C64E90](0x7461756C6176452ELL, 0xEF6F666E496E6F69);

  qword_27F8EA2D0 = v1;
  *algn_27F8EA2D8 = v2;
  return result;
}

uint64_t sub_25762AE80()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2E0);
  __swift_project_value_buffer(v0, qword_27F8EA2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "evaluationIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "evaluationValue";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762B048()
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
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433B4();
    }
  }

  return result;
}

uint64_t sub_25762B0B0()
{
  v3 = v1;
  OUTLINED_FUNCTION_8_9();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
    {
      type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25762B140(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  v6 = sub_25762DE04(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_25762B230(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F880210, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, &unk_25776A9C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762B2D0(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, &unk_25776AA00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762B398(uint64_t a1, uint64_t a2)
{
  sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, &unk_25776AA00);

  return sub_257743424();
}

uint64_t sub_25762B418()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2F8);
  __swift_project_value_buffer(v0, qword_27F8EA2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "treeEnsemble";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "postEvaluationTransform";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "stringClassLabels";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "int64ClassLabels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762B65C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 101:
        v13 = OUTLINED_FUNCTION_205();
        sub_25762BCB4(v13, v14, v2, v1);
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_6_8();
        sub_257458400(v9, v10);
        break;
      case 100:
        v11 = OUTLINED_FUNCTION_205();
        sub_25762B7B0(v11, v12, v2, v1);
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_6_8();
        sub_25762B6FC(v5, v6, v7, v8);
        break;
    }
  }

  return result;
}

uint64_t sub_25762B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_TreeEnsembleClassifier(0);
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);
  return sub_2577433D4();
}

uint64_t sub_25762B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    sub_25762E408();
    sub_25762E408();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E3B0(v14, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
      sub_25762E408();
      sub_25762E408();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_25762DE04(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_25762E408();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F8800E0, &qword_25776A3E8);
  sub_25762E408();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_25762BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    sub_25762E408();
    sub_25762E408();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
      sub_25762E408();
      sub_25762E408();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_25762E3B0(v14, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
    }
  }

  sub_25762DE04(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_25762E408();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F8800E0, &qword_25776A3E8);
  sub_25762E408();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_25762C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  OUTLINED_FUNCTION_18_9();
  result = sub_25762C360(v10, v11, v12, v13);
  if (!v4)
  {
    if (*v3)
    {
      v15 = *(v3 + 8);
      v27 = *v3;
      v28 = v15;
      sub_25762E35C();
      sub_2577434C4();
    }

    v16 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
    sub_257487308(v5 + *(v16 + 20));
    v17 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_18_9();
        sub_25762C760(v18, v19, v20, v21);
      }

      else
      {
        OUTLINED_FUNCTION_18_9();
        sub_25762C540(v22, v23, v24, v25);
      }

      OUTLINED_FUNCTION_3_20();
      sub_25762E3B0(v9, v26);
    }

    return sub_257743194();
  }

  return result;
}

uint64_t sub_25762C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_257487308(a1 + *(v11 + 28));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F8800E8, &unk_25776A3F0);
  }

  sub_25762E408();
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);
  sub_257743574();
  return sub_25762E3B0(v10, type metadata accessor for Proto_TreeEnsembleParameters);
}

uint64_t sub_25762C540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_257487308(a1 + *(v11 + 20));
  v12 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25762E408();
      sub_25762DE04(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
      sub_257743574();
      return sub_25762E3B0(v10, type metadata accessor for Proto_StringVector);
    }

    result = sub_25762E3B0(v7, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_25762C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_257487308(a1 + *(v11 + 20));
  v12 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E408();
      sub_25762DE04(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_25762E3B0(v10, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_25762E3B0(v7, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification35TreeEnsembleClassifierConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v57 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v54 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880220, &qword_25776AE90);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v58 = &v53 - v11;
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880228, &qword_25776AE98) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v59 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v60 = a1;
  v24 = *(v59 + 28);
  v25 = *(v20 + 56);
  sub_257487308(a1 + v24);
  sub_257487308(a2 + v24);
  OUTLINED_FUNCTION_42_0(v23);
  if (v28)
  {
    OUTLINED_FUNCTION_42_0(&v23[v25]);
    if (v28)
    {
      sub_2574695E4(v23, &qword_27F8800E8, &unk_25776A3F0);
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  sub_257487308(v23);
  OUTLINED_FUNCTION_42_0(&v23[v25]);
  if (v28)
  {
    OUTLINED_FUNCTION_16_4();
    sub_25762E3B0(v19, v29);
LABEL_13:
    v30 = &qword_27F880228;
    v31 = &qword_25776AE98;
LABEL_20:
    v37 = v23;
LABEL_21:
    sub_2574695E4(v37, v30, v31);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_14_5();
  sub_25762E408();
  sub_257481CB8();
  if ((v32 & 1) == 0 || *(v19 + 1) != *(v15 + 8) || (sub_257479D04(*(v19 + 2), *(v15 + 16)) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_5();
    sub_25762E3B0(v15, v36);
    sub_25762E3B0(v19, &unk_25776A3F0);
    v30 = &qword_27F8800E8;
    v31 = &unk_25776A3F0;
    goto LABEL_20;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  sub_25762DE04(v33, v34, MEMORY[0x277D216D0]);
  v35 = sub_257743644();
  sub_25762E3B0(v15, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_25762E3B0(v19, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_2574695E4(v23, &qword_27F8800E8, &unk_25776A3F0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v26 = *v60;
  v27 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v27)
    {
      case 1:
        if (v26 == 1)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 2:
        if (v26 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 3:
        if (v26 == 3)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      default:
        if (!v26)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }
  }

  if (v26 != v27)
  {
    goto LABEL_22;
  }

LABEL_25:
  v40 = v58;
  v41 = *(v59 + 20);
  v42 = *(v56 + 48);
  sub_257487308(v60 + v41);
  v43 = a2 + v41;
  v44 = v40;
  sub_257487308(v43);
  v45 = v57;
  if (__swift_getEnumTagSinglePayload(v40, 1, v57) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v40 + v42, 1, v45) == 1)
    {
      sub_2574695E4(v40, &qword_27F8800E0, &qword_25776A3E8);
LABEL_38:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_32();
      sub_25762DE04(v51, v52, MEMORY[0x277D216D0]);
      v38 = sub_257743644();
      return v38 & 1;
    }

    goto LABEL_30;
  }

  v46 = v40;
  v47 = v55;
  sub_257487308(v46);
  if (__swift_getEnumTagSinglePayload(v44 + v42, 1, v45) == 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_25762E3B0(v47, v48);
LABEL_30:
    v30 = &qword_27F880220;
    v31 = &qword_25776AE90;
    v37 = v44;
    goto LABEL_21;
  }

  v49 = v54;
  sub_25762E408();
  v50 = sub_2576291D0(v47, v49);
  sub_25762E3B0(v49, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  sub_25762E3B0(v47, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  sub_2574695E4(v44, &qword_27F8800E0, &qword_25776A3E8);
  if (v50)
  {
    goto LABEL_38;
  }

LABEL_22:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_25762CFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801F8, type metadata accessor for Proto_TreeEnsembleClassifier, &unk_25776A8D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762D05C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier, &unk_25776AD20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762D124(uint64_t a1, uint64_t a2)
{
  sub_25762DE04(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier, &unk_25776AD20);

  return sub_257743424();
}

uint64_t sub_25762D1A4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA310);
  __swift_project_value_buffer(v0, qword_27F8EA310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "treeEnsemble";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "postEvaluationTransform";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762D36C()
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
      v7 = OUTLINED_FUNCTION_6_8();
      sub_257458400(v7, v8);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_25762D3CC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_25762D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_TreeEnsembleRegressor(0);
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);
  return sub_2577433D4();
}

uint64_t sub_25762D480()
{
  OUTLINED_FUNCTION_8_9();
  result = sub_25762D528(v0, v5, v3, v2);
  if (!v1)
  {
    if (*v4)
    {
      sub_25762E35C();
      OUTLINED_FUNCTION_27_4();
      sub_2577434C4();
    }

    type metadata accessor for Proto_TreeEnsembleRegressor(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25762D528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  sub_257487308(a1 + *(v11 + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F8800E8, &unk_25776A3F0);
  }

  sub_25762E408();
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters, &unk_25776AE10);
  sub_257743574();
  return sub_25762E3B0(v10, type metadata accessor for Proto_TreeEnsembleParameters);
}

uint64_t _s20MLModelSpecification34TreeEnsembleRegressorConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880228, &qword_25776AE98) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v34 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v16 = *(v34 + 24);
  v17 = *(v12 + 56);
  v36 = a1;
  sub_257487308(a1 + v16);
  v35 = a2;
  sub_257487308(a2 + v16);
  OUTLINED_FUNCTION_42_0(v15);
  if (!v20)
  {
    sub_257487308(v15);
    OUTLINED_FUNCTION_42_0(&v15[v17]);
    if (!v20)
    {
      OUTLINED_FUNCTION_14_5();
      sub_25762E408();
      sub_257481CB8();
      if (v24 & 1) != 0 && *(v11 + 1) == *(v7 + 8) && (sub_257479D04(*(v11 + 2), *(v7 + 16)))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v25, v26, MEMORY[0x277D216D0]);
        v27 = sub_257743644();
        sub_25762E3B0(v7, type metadata accessor for Proto_TreeEnsembleParameters);
        sub_25762E3B0(v11, type metadata accessor for Proto_TreeEnsembleParameters);
        sub_2574695E4(v15, &qword_27F8800E8, &unk_25776A3F0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_6;
      }

      OUTLINED_FUNCTION_15_5();
      sub_25762E3B0(v7, v28);
      sub_25762E3B0(v11, a1);
      v22 = &qword_27F8800E8;
      v23 = &unk_25776A3F0;
LABEL_20:
      sub_2574695E4(v15, v22, v23);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_16_4();
    sub_25762E3B0(v11, v21);
LABEL_13:
    v22 = &qword_27F880228;
    v23 = &qword_25776AE98;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_42_0(&v15[v17]);
  if (!v20)
  {
    goto LABEL_13;
  }

  sub_2574695E4(v15, &qword_27F8800E8, &unk_25776A3F0);
LABEL_6:
  v18 = *v36;
  v19 = *v35;
  if (*(v35 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 == 1)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      case 2:
        if (v18 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      case 3:
        if (v18 == 3)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      default:
        if (!v18)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
    }
  }

  if (v18 == v19)
  {
LABEL_24:
    sub_2577431B4();
    OUTLINED_FUNCTION_0_32();
    sub_25762DE04(v31, v32, MEMORY[0x277D216D0]);
    v29 = sub_257743644();
    return v29 & 1;
  }

LABEL_21:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_25762DAB4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_25762DE04(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25762DB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801E8, type metadata accessor for Proto_TreeEnsembleRegressor, &unk_25776A7E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762DC2C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor, &unk_25776AD98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762DCF4(uint64_t a1, uint64_t a2)
{
  sub_25762DE04(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor, &unk_25776AD98);

  return sub_257743424();
}

uint64_t sub_25762DE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25762E35C()
{
  result = qword_27F8801F0;
  if (!qword_27F8801F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8801F0);
  }

  return result;
}

uint64_t sub_25762E3B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25762E408()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

unint64_t sub_25762E460()
{
  result = qword_27F880208;
  if (!qword_27F880208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880208);
  }

  return result;
}

uint64_t sub_25762E4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return 0;
}

void sub_25762E648(uint64_t a1)
{
  sub_25762E6CC(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25762E6CC(uint64_t a1)
{
  if (!qword_2815374B8)
  {
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2815374B8);
    }
  }
}

uint64_t sub_25762E744(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25762E820(uint64_t a1)
{
  sub_2575068A0();
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25762E8EC(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25762E978@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762E9C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762E9FC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762EA3C(uint64_t a1, uint64_t a2)
{
  v44[1] = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880308, &unk_25776B630);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v44 - v21;
  v23 = *(v20 + 56);
  sub_257631E50(a1, v44 - v21);
  sub_257631E50(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257631E50(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631D50();
      v24 = *v15;
      v25 = *v7;
      if (v15[8])
      {
        v24 = *v15 != 0;
      }

      if (*(v7 + 8) == 1)
      {
        if (v25)
        {
          if (v24 != 1)
          {
            goto LABEL_25;
          }
        }

        else if (v24)
        {
LABEL_25:
          OUTLINED_FUNCTION_4_13();
          sub_257631CF8(v7, v42);
          v36 = v15;
          v35 = v23;
          goto LABEL_26;
        }
      }

      else if (v24 != v25)
      {
        goto LABEL_25;
      }

      if ((sub_257479C78(*(v15 + 2), *(v7 + 16)) & 1) == 0)
      {
        goto LABEL_25;
      }

      v23 = sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      sub_2576319E0(v37, v38, MEMORY[0x277D216D0]);
      if ((sub_257743644() & 1) == 0)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_4_13();
      sub_257631CF8(v7, v39);
      v33 = v15;
      v32 = v23;
LABEL_24:
      sub_257631CF8(v33, v32);
      OUTLINED_FUNCTION_2_21();
      sub_257631CF8(v22, v40);
      return 1;
    }

    v26 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects;
    v27 = v15;
  }

  else
  {
    sub_257631E50(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257631D50();
      if (sub_257487360(*v17, v17[8], *v11))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_1_23();
        sub_2576319E0(v28, v29, MEMORY[0x277D216D0]);
        v30 = sub_257743644();
        OUTLINED_FUNCTION_0_33();
        sub_257631CF8(v11, v31);
        if (v30)
        {
          OUTLINED_FUNCTION_0_33();
          v33 = v17;
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_33();
        sub_257631CF8(v11, v34);
      }

      OUTLINED_FUNCTION_0_33();
      v36 = v17;
LABEL_26:
      sub_257631CF8(v36, v35);
      OUTLINED_FUNCTION_2_21();
      sub_257631CF8(v22, v43);
      return 0;
    }

    OUTLINED_FUNCTION_0_33();
    v27 = v17;
  }

  sub_257631CF8(v27, v26);
  sub_2574695E4(v22, &qword_27F880308, &unk_25776B630);
  return 0;
}

uint64_t sub_25762EE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_257631DA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_25762EEE4()
{
  result = qword_27F880230;
  if (!qword_27F880230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880230);
  }

  return result;
}

unint64_t sub_25762EF70()
{
  result = qword_27F880248;
  if (!qword_27F880248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880248);
  }

  return result;
}

uint64_t sub_25762F06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257631DFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_25762F0C8()
{
  result = qword_27F880250;
  if (!qword_27F880250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880250);
  }

  return result;
}

unint64_t sub_25762F154()
{
  result = qword_27F880268;
  if (!qword_27F880268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880268);
  }

  return result;
}

uint64_t sub_25762F1A8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA328);
  __swift_project_value_buffer(v0, qword_27F8EA328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 20;
  *v6 = "scene";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 21;
  *v10 = "objects";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762F374()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 21)
    {
      OUTLINED_FUNCTION_205();
      OUTLINED_FUNCTION_11_6();
      sub_25762F8DC(v7, v8, v9, v10);
    }

    else if (result == 20)
    {
      OUTLINED_FUNCTION_205();
      OUTLINED_FUNCTION_11_6();
      sub_25762F3E4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_25762F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8802D0, &qword_25776B618);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    sub_257631D50();
    sub_257631D50();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631CF8(v14, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F8802D0, &qword_25776B618);
      sub_257631D50();
      sub_257631D50();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B4A8);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F8802D0, &qword_25776B618);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F8802D0, &qword_25776B618);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F8802D0, &qword_25776B618);
  }

  sub_257631D50();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F8802D0, &qword_25776B618);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A068, &qword_2577449A0);
  sub_257631D50();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_25762F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8802D8, &qword_25776B620);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    sub_257631D50();
    sub_257631D50();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F8802D8, &qword_25776B620);
      sub_257631D50();
      sub_257631D50();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_257631CF8(v14, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
    }
  }

  sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B430);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F8802D8, &qword_25776B620);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F8802D8, &qword_25776B620);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F8802D8, &qword_25776B620);
  }

  sub_257631D50();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F8802D8, &qword_25776B620);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A068, &qword_2577449A0);
  sub_257631D50();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_25762FDD4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  sub_257487308(v1);
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_11_6();
    sub_257630128(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    sub_25762FF14(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_2_21();
  result = sub_257631CF8(v7, v17);
  if (!v2)
  {
LABEL_6:
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
    return OUTLINED_FUNCTION_37_2(a1);
  }

  return result;
}

uint64_t sub_25762FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257631D50();
      sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B4A8);
      sub_257743574();
      return sub_257631CF8(v10, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);
    }

    result = sub_257631CF8(v7, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  }

  __break(1u);
  return result;
}

uint64_t sub_257630128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631D50();
      sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B430);
      sub_257743574();
      return sub_257631CF8(v10, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);
    }

    result = sub_257631CF8(v7, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  }

  __break(1u);
  return result;
}

uint64_t sub_25763033C()
{
  OUTLINED_FUNCTION_267();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880300, &qword_25776B628);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(v12 + 56);
  sub_257487308(v1);
  sub_257487308(v0);
  OUTLINED_FUNCTION_65(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_65(&v14[v15]);
    if (v16)
    {
      sub_2574695E4(v14, &qword_27F87A068, &qword_2577449A0);
LABEL_12:
      type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      v22 = sub_2576319E0(v20, v21, MEMORY[0x277D216D0]);
      v18 = OUTLINED_FUNCTION_4_2(v22);
      return v18 & 1;
    }

    goto LABEL_9;
  }

  sub_257487308(v14);
  OUTLINED_FUNCTION_65(&v14[v15]);
  if (v16)
  {
    OUTLINED_FUNCTION_2_21();
    sub_257631CF8(v9, v17);
LABEL_9:
    sub_2574695E4(v14, &qword_27F880300, &qword_25776B628);
    goto LABEL_10;
  }

  sub_257631D50();
  v19 = sub_25762EA3C(v9, v5);
  sub_257631CF8(v5, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  sub_257631CF8(v9, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  sub_2574695E4(v14, &qword_27F87A068, &qword_2577449A0);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25763060C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802C8, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint, &unk_25776B3F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576306AC(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint, &unk_25776B520);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257630774(uint64_t a1, uint64_t a2)
{
  sub_2576319E0(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint, &unk_25776B520);

  return sub_257743424();
}

uint64_t sub_257630814()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA350);
  __swift_project_value_buffer(v0, qword_27F8EA350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "version";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_257630980()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_11_6();
      sub_2576309D8(v3, v4);
    }
  }

  return result;
}

uint64_t sub_257630A40()
{
  OUTLINED_FUNCTION_8_10();
  if (!v2 || (v10 = v2, v3 = sub_257631DA8(), result = OUTLINED_FUNCTION_10_15(v3, v4, &type metadata for Proto_CoreMLModels_VisionFeaturePrint.Scene.SceneVersion, v3, v5, v6, v7, v8, v10), !v0))
  {
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
    return OUTLINED_FUNCTION_37_2(v1);
  }

  return result;
}

uint64_t sub_257630AC4()
{
  OUTLINED_FUNCTION_267();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      v6 = sub_2576319E0(v4, v5, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_4_2(v6) & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_257630BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802E0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B308);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257630C78(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B4A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257630D40(uint64_t a1, uint64_t a2)
{
  sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B4A8);

  return sub_257743424();
}

uint64_t sub_257630DC0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA368);
  __swift_project_value_buffer(v0, qword_27F8EA368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SCENE_VERSION_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCENE_VERSION_1";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SCENE_VERSION_2";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257631008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x8000000257780680;
  return result;
}

uint64_t sub_257631074()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA390);
  __swift_project_value_buffer(v0, qword_27F8EA390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257631240()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      sub_257743344();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_11_6();
      sub_2576312B8(v3, v4);
    }
  }

  return result;
}

uint64_t sub_257631320()
{
  OUTLINED_FUNCTION_8_10();
  if (!v4 || (v12 = v4, v5 = sub_257631DFC(), result = OUTLINED_FUNCTION_10_15(v5, v6, &type metadata for Proto_CoreMLModels_VisionFeaturePrint.Objects.ObjectsVersion, v5, v7, v8, v9, v10, v12), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_11_6(), result = sub_257743514(), !v0))
    {
      type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
      return OUTLINED_FUNCTION_37_2(v3);
    }
  }

  return result;
}

uint64_t sub_2576313CC()
{
  OUTLINED_FUNCTION_267();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_257479C78(*(v1 + 16), *(v0 + 16)))
  {
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_23();
    v8 = sub_2576319E0(v6, v7, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_4_2(v8) & 1;
  }

  return 0;
}

uint64_t sub_257631498(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2576319E0(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25763157C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802F0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B230);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25763161C(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B430);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576316E4(uint64_t a1, uint64_t a2)
{
  sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B430);

  return sub_257743424();
}

uint64_t sub_257631764()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3A8);
  __swift_project_value_buffer(v0, qword_27F8EA3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OBJECTS_VERSION_INVALID";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OBJECTS_VERSION_1";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576319E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257631CF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_257631D50()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

unint64_t sub_257631DA8()
{
  result = qword_27F8802E8;
  if (!qword_27F8802E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8802E8);
  }

  return result;
}

unint64_t sub_257631DFC()
{
  result = qword_27F8802F8;
  if (!qword_27F8802F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8802F8);
  }

  return result;
}

uint64_t sub_257631E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2577434C4();
}

uint64_t type metadata accessor for Proto_CoreMLModels_WordEmbedding(uint64_t a1)
{
  result = qword_281537600;
  if (!qword_281537600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257631FCC(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257632060@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576320AC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3C0);
  __swift_project_value_buffer(v0, qword_27F8EA3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "revision";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "language";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "modelParameterData";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576322B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      case 100:
        OUTLINED_FUNCTION_10_7();
        sub_2577432D4();
        break;
      case 10:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433A4();
        break;
    }
  }

  return result;
}

uint64_t sub_257632350()
{
  if (!*v0 || (result = sub_257743544(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v1))
    {
      if (sub_2576FF394(*(v0 + 24), *(v0 + 32)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), !v1))
      {
        type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
        OUTLINED_FUNCTION_10_7();
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_257632444(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  sub_2577431B4();
  sub_257632930(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_257632524()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
  sub_257632930(&qword_27F880318, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B68C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576325FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257632930(&qword_27F880328, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B71C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257632678@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA3C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257632720(uint64_t a1)
{
  v2 = sub_257632930(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B754);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257632790(uint64_t a1, uint64_t a2)
{
  sub_257632930(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding, &unk_25776B754);

  return sub_257743424();
}

uint64_t sub_257632930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2576329C0(uint64_t a1)
{
  sub_257632A78(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257632A78(uint64_t a1)
{
  if (!qword_281537710)
  {
    type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281537710);
    }
  }
}

uint64_t sub_257632AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257458A04);
}

uint64_t sub_257632B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257458A7C);
}

uint64_t sub_257632BB0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_257632C38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880358, &qword_25776B9A8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(v11 + 56);
  sub_257634348(a1, &v21 - v12);
  sub_257634348(a2, &v13[v14]);
  sub_2576342EC(v13, v9, type metadata accessor for Proto_StringVector);
  sub_2576342EC(&v13[v14], v7, type metadata accessor for Proto_StringVector);
  if (sub_257479C78(*v9, *v7))
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_3_21();
    sub_2576341BC(v15, v16, MEMORY[0x277D216D0]);
    v17 = sub_257743644();
    sub_257634294(v7, type metadata accessor for Proto_StringVector);
    sub_257634294(v9, type metadata accessor for Proto_StringVector);
    if (v17)
    {
      return 1;
    }
  }

  else
  {
    sub_257634294(v7, type metadata accessor for Proto_StringVector);
    v19 = OUTLINED_FUNCTION_205();
    sub_257634294(v19, v20);
  }

  return 0;
}

uint64_t sub_257632E3C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3D8);
  __swift_project_value_buffer(v0, qword_27F8EA3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577503A0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "revision";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "language";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 20;
  *v11 = "tokensOutputFeatureName";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 21;
  *v13 = "tokenTagsOutputFeatureName";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 22;
  *v15 = "tokenLocationsOutputFeatureName";
  *(v15 + 1) = 31;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 23;
  *v17 = "tokenLengthsOutputFeatureName";
  *(v17 + 1) = 29;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 100;
  *v19 = "modelParameterData";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 200;
  *v21 = "stringTags";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_257743594();
}

uint64_t sub_25763317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v9 & 1) != 0)
    {
      return result;
    }

    if (!v7 & v6)
    {
      switch(result)
      {
        case 200:
          v10 = OUTLINED_FUNCTION_205();
          sub_257633280(v10, v11, a2, a3);
          break;
        case 10:
          goto LABEL_13;
        case 100:
          OUTLINED_FUNCTION_10_7();
          sub_2577432D4();
          break;
        case 1:
          OUTLINED_FUNCTION_10_7();
          sub_2577433A4();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 20:
        case 21:
        case 22:
        case 23:
          break;
        default:
          JUMPOUT(0);
      }

LABEL_13:
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }
}

uint64_t sub_257633280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v41 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  __swift_storeEnumTagSinglePayload(&v33 - v23, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_CoreMLModels_WordTagger(0) + 44);
  v36 = a1;
  v34 = v25;
  sub_2574AD5D8(a1 + v25, v12, &qword_27F880330, &unk_25776B7D0);
  v35 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F880330, &unk_25776B7D0);
  }

  else
  {
    sub_2576342EC(v12, v18, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
    sub_2576342EC(v18, v16, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    sub_2576342EC(v16, v9, type metadata accessor for Proto_StringVector);
    sub_2576342EC(v9, v24, type metadata accessor for Proto_StringVector);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
  }

  sub_2576341BC(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v24;
    return sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v28 = v22;
    return sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  }

  v30 = v37;
  sub_2576342EC(v22, v37, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v31 = v36;
  v32 = v34;
  sub_2574695E4(v36 + v34, &qword_27F880330, &unk_25776B7D0);
  sub_2576342EC(v30, v31 + v32, type metadata accessor for Proto_StringVector);
  return __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v35);
}

uint64_t sub_257633738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (result = sub_257743544(), !v4))
  {
    OUTLINED_FUNCTION_1_6();
    if (!v10 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_1_6();
      if (!v11 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_1_6();
        if (!v12 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_1_6();
          if (!v13 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
          {
            OUTLINED_FUNCTION_1_6();
            if (!v14 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
            {
              if (sub_2576FF394(*(v3 + 88), *(v3 + 96)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), (v5 = v4) == 0))
              {
                result = sub_2576338C0(v3, a1, a2, a3);
                if (!v5)
                {
                  type metadata accessor for Proto_CoreMLModels_WordTagger(0);
                  OUTLINED_FUNCTION_10_7();
                  return sub_257743194();
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

uint64_t sub_2576338C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_2574AD5D8(a1 + *(v11 + 44), v7, &qword_27F880330, &unk_25776B7D0);
  v12 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F880330, &unk_25776B7D0);
  }

  sub_2576342EC(v7, v10, type metadata accessor for Proto_StringVector);
  sub_2576341BC(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  sub_257743574();
  return sub_257634294(v10, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification23WordTaggerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880360, &unk_25776B9B0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_37;
  }

  v14 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v14 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v15 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v15 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v16 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v16 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v18 = *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80);
  if (!v18 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_37;
  }

  v28 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v19 = *(v28 + 44);
  v20 = *(v10 + 48);
  sub_2574AD5D8(a1 + v19, v13, &qword_27F880330, &unk_25776B7D0);
  sub_2574AD5D8(a2 + v19, &v13[v20], &qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_65(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_65(&v13[v20]);
    if (v14)
    {
      sub_2574695E4(v13, &qword_27F880330, &unk_25776B7D0);
LABEL_40:
      sub_2577431B4();
      OUTLINED_FUNCTION_3_21();
      sub_2576341BC(v25, v26, MEMORY[0x277D216D0]);
      v22 = sub_257743644();
      return v22 & 1;
    }

    goto LABEL_36;
  }

  sub_2574AD5D8(v13, v9, &qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_65(&v13[v20]);
  if (v21)
  {
    sub_257634294(v9, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
LABEL_36:
    sub_2574695E4(v13, &qword_27F880360, &unk_25776B9B0);
    goto LABEL_37;
  }

  sub_2576342EC(&v13[v20], v6, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  v24 = sub_257632C38(v9, v6);
  sub_257634294(v6, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  sub_257634294(v9, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  sub_2574695E4(v13, &qword_27F880330, &unk_25776B7D0);
  if (v24)
  {
    goto LABEL_40;
  }

LABEL_37:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_257633E40()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_2576341BC(&qword_27F880340, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B85C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257633F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576341BC(&qword_27F880350, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B8EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257633F94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25763403C(uint64_t a1)
{
  v2 = sub_2576341BC(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B924);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576340AC(uint64_t a1, uint64_t a2)
{
  sub_2576341BC(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger, &unk_25776B924);

  return sub_257743424();
}

uint64_t sub_2576341BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257634294(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576342EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_257634348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLProgram.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2577431D4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Proto_MILSpec_Program(0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_257486740(a1, a2);
  sub_2577431C4();
  sub_257634524();
  sub_257743404();
  result = sub_257486798(a1, a2);
  if (!v3)
  {
    return sub_25763457C(v10, a3);
  }

  return result;
}

unint64_t sub_257634524()
{
  result = qword_27F87B6B8;
  if (!qword_27F87B6B8)
  {
    type metadata accessor for Proto_MILSpec_Program(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B6B8);
  }

  return result;
}

uint64_t sub_25763457C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MILSpec_Program(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLProgram.serialized()()
{
  type metadata accessor for Proto_MILSpec_Program(0);
  sub_257634524();
  return sub_2577433F4();
}

uint64_t static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v26 = a5;
  v27 = a1;
  v28 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = swift_allocObject();
  v25 = xmmword_2577442B0;
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  *(v20 + 32) = v26;
  *(v20 + 40) = a6;
  *v18 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_TransposeLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.TransposeParameters.axes.setter(v21);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a8 + v22) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v14);
  v23 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v23);
  sub_25752846C();
  return sub_257634BB4(v18);
}

uint64_t static NeuralNetwork.Layer.Kind.transpose(axes:)@<X0>(void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_TransposeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.TransposeParameters.axes.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.TransposeParameters.init(axes:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_TransposeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  NeuralNetwork.Layer.TransposeParameters.axes.setter(a1);
}

uint64_t NeuralNetwork.Layer.TransposeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 1936029761;
  *(v0 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.TransposeParameters.axes.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.TransposeParameters.axes.getter()
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

void NeuralNetwork.Layer.TransposeParameters.axes.setter(uint64_t a1)
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

uint64_t sub_257634BB4(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NeuralNetwork.Layer.TransposeParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.TransposeParameters.axes.getter();
  return sub_257634C58;
}

void sub_257634C58(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.TransposeParameters.axes.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.TransposeParameters.axes.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.TransposeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_TransposeLayerParams(0);
    sub_2577431B4();
    sub_257635070(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.TransposeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257634FC4(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 1936029793;
  *(v12 + 40) = 0xE400000000000000;
  v13 = NeuralNetwork.Layer.TransposeParameters.axes.getter();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.TransposeParameters(uint64_t a1)
{
  result = qword_27F880368;
  if (!qword_27F880368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257634FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257635070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576350E0(uint64_t a1)
{
  result = type metadata accessor for Proto_TransposeLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeatureDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureDescription.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Proto_FeatureDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_FeatureType(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t FeatureDescription.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeatureDescription.type.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for Proto_FeatureType(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_25768E090();
  sub_257635540(v0);
  v8 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
  sub_25763559C(v1 + v8);
  sub_257635604(v7, v1 + v8);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
}

uint64_t sub_2576352CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FeatureDescription.name.setter(v1, v2);
}

uint64_t (*FeatureDescription.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void FeatureDescription.type.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_64();
  v5 = type metadata accessor for Proto_FeatureType(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_FeatureDescription(0);
  sub_257635668(v0 + *(v10 + 28), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
    *(v9 + *(v5 + 20)) = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v1, 1, v5) != 1)
    {
      sub_25763559C(v1);
    }
  }

  else
  {
    sub_257635604(v1, v9);
  }

  sub_25768DB44();
}

uint64_t sub_2576354A4(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_257635FA4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return FeatureDescription.type.setter();
}

uint64_t sub_257635540(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763559C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257635604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FeatureType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257635668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*FeatureDescription.type.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for Proto_FeatureType(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for FeatureType(0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  FeatureDescription.type.getter();
  return sub_2576357A0;
}

void sub_2576357A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_257635FA4((*a1)[4], v3);
    sub_25768E090();
    sub_257635540(v3);
    v8 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
    sub_25763559C(v7 + v8);
    sub_257635604(v5, v7 + v8);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
    sub_257635540(v4);
  }

  else
  {
    sub_25768E090();
    sub_257635540(v4);
    v12 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
    sub_25763559C(v7 + v12);
    sub_257635604(v5, v7 + v12);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v6);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t FeatureDescription.featureDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2576358F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FeatureDescription.featureDescription.setter(v1, v2);
}

uint64_t FeatureDescription.featureDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*FeatureDescription.featureDescription.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576359C0;
}

uint64_t sub_2576359C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  else
  {

    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
  }

  return result;
}

uint64_t FeatureDescription.init(name:type:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  a6[2] = 0;
  a6[3] = 0xE000000000000000;
  v17 = type metadata accessor for Proto_FeatureDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = *(v17 + 28);
  __swift_storeEnumTagSinglePayload(a6 + v18, 1, 1, v12);
  *a6 = a1;
  a6[1] = a2;
  sub_25768E090();
  sub_257635540(a3);
  sub_25763559C(a6 + v18);
  sub_257635604(v16, a6 + v18);
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v19, v20, v21, v12);
  a6[2] = a4;
  a6[3] = a5;
  return result;
}

uint64_t FeatureDescription.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_FeatureDescription(0);
  OUTLINED_FUNCTION_2_22();
  sub_257636090(v1, v2, &unk_2577501F4);

  return sub_2577435F4();
}

uint64_t FeatureDescription.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_FeatureDescription(0);
  OUTLINED_FUNCTION_2_22();
  sub_257636090(v0, v1, &unk_2577501F4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257635C34(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_FeatureDescription(0);
  sub_257636090(&qword_27F87BA38, type metadata accessor for Proto_FeatureDescription, &unk_2577501F4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t FeatureDescription.customMirror.getter()
{
  v24 = sub_257743A84();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for FeatureDescription(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257635FA4(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442C0;
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  v13 = v0[1];
  v14 = MEMORY[0x277D837D0];
  *(v12 + 48) = *v0;
  *(v12 + 56) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = 1701869940;
  *(v12 + 88) = 0xE400000000000000;
  *(v12 + 120) = type metadata accessor for FeatureType(0);
  __swift_allocate_boxed_opaque_existential_0((v12 + 96));

  FeatureDescription.type.getter();
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 136) = 0x8000000257780820;
  v15 = v0[2];
  v16 = v0[3];
  *(v12 + 168) = v14;
  *(v12 + 144) = v15;
  *(v12 + 152) = v16;
  v17 = *MEMORY[0x277D84C10];
  v18 = sub_257743A74();
  OUTLINED_FUNCTION_4();
  (*(v19 + 104))(v1, v17, v18);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v24);

  return sub_257743AA4();
}

uint64_t type metadata accessor for FeatureDescription(uint64_t a1)
{
  result = qword_281537E08;
  if (!qword_281537E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257635FA4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257636090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257636104(uint64_t a1)
{
  result = type metadata accessor for Proto_FeatureDescription(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.softmax(name:inputName:outputName:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = OUTLINED_FUNCTION_13_6(v18);
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = OUTLINED_FUNCTION_13_6(v18);
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a6 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v6);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.softmaxND(name:inputName:outputName:axis:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = OUTLINED_FUNCTION_13_6(v19);
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = OUTLINED_FUNCTION_13_6(v19);
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  type metadata accessor for Proto_SoftmaxNDLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v18 = a6;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a7 + v22) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v7);
  v23 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v23);
  return sub_257634BB4(v18);
}

uint64_t static NeuralNetwork.Layer.Kind.softmaxND(axis:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.init(axis:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

uint64_t static NeuralNetwork.Layer.SoftmaxParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_2_23();
  sub_2576366A4(v0, v1, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_2576366A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NeuralNetwork.Layer.SoftmaxParameters.customMirror.getter()
{
  v0 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_257636F4C();
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 1936291905;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = sub_257743974();
  *(v0 + 56) = v1;
  return v0;
}

uint64_t (*NeuralNetwork.Layer.SoftmaxNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

BOOL static NeuralNetwork.Layer.SoftmaxNDParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_0_0();
    type metadata accessor for Proto_SoftmaxNDLayerParams(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_23();
    sub_2576366A4(v3, v4, MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257636B34(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_17();

  return sub_2577435F4();
}

uint64_t sub_257636BE8(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_6_17();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257636CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_6_17();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.customMirror.getter()
{
  v1 = v0;
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
  v12 = &v18 - v11;
  type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257636F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442B0;
  *(v14 + 32) = 1936291937;
  *(v14 + 40) = 0xE400000000000000;
  v15 = *v1;
  *(v14 + 72) = MEMORY[0x277D83B88];
  *(v14 + 48) = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_257636F4C()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257637148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_2576366A4(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_25752846C();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return type metadata accessor for NeuralNetwork.Layer.Kind(0);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t static NeuralNetwork.Layer.clip(name:inputName:outputName:minimum:maximum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>)
{
  v29 = a1;
  v30 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = (v21 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = swift_allocObject();
  v28 = xmmword_2577442B0;
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  *(v22 + *(type metadata accessor for NeuralNetwork.Layer.ClipParameters(0) + 24)) = 0;
  type metadata accessor for Proto_ClipLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v22 = a8;
  v22[1] = a9;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v18);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.Kind.clip(minimum:maximum:)()
{
  v3 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_2_24(v3);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v2;
  v0[1] = v1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ClipParameters.init(minimum:maximum:)()
{
  v3 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_2_24(v3);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v2;
  v0[1] = v1;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ClipParameters(uint64_t a1)
{
  result = qword_27F8803B8;
  if (!qword_27F8803B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ClipParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257743FF0;
  *(v0 + 32) = 0x6D756D696E694DLL;
  *(v0 + 40) = 0xE700000000000000;
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x6D756D6978614DLL;
  *(v0 + 72) = 0xE700000000000000;
  *(v0 + 80) = sub_257743794();
  *(v0 + 88) = v2;
  return v0;
}

uint64_t static NeuralNetwork.Layer.ClipParameters.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1])
  {
    v4 = *(type metadata accessor for NeuralNetwork.Layer.ClipParameters(0) + 24);
    v5 = (a2 + v4);
    if (*(a1 + v4) == *v5 && *(a1 + v4 + 4) == v5[1])
    {
      type metadata accessor for Proto_ClipLayerParams(0);
      sub_2577431B4();
      sub_257637C28(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t NeuralNetwork.Layer.ClipParameters.hash(into:)(uint64_t a1)
{
  sub_257743A44();
  sub_257743A44();
  type metadata accessor for NeuralNetwork.Layer.ClipParameters(0);
  type metadata accessor for Proto_ClipLayerParams(0);
  sub_257637C28(&qword_27F87D688, type metadata accessor for Proto_ClipLayerParams, &unk_257766CB8);
  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.ClipParameters.hashValue.getter()
{
  sub_257743A14();
  NeuralNetwork.Layer.ClipParameters.hash(into:)(v1);
  return sub_257743A64();
}

uint64_t sub_2576378CC(uint64_t a1)
{
  sub_257743A14();
  NeuralNetwork.Layer.ClipParameters.hash(into:)(v2);
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.ClipParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NeuralNetwork.Layer.ClipParameters(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_257637B34(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  v14 = v1[1];
  *(v13 + 48) = *v1;
  *(v13 + 32) = 0x6D756D696E696DLL;
  *(v13 + 40) = 0xE700000000000000;
  v15 = MEMORY[0x277D83A90];
  *(v13 + 72) = MEMORY[0x277D83A90];
  *(v13 + 80) = 0x6D756D6978616DLL;
  *(v13 + 88) = 0xE700000000000000;
  *(v13 + 120) = v15;
  *(v13 + 96) = v14;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_257637B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ClipParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257637C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257637C9C(uint64_t a1)
{
  result = type metadata accessor for Proto_ClipLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return type metadata accessor for NeuralNetwork.Layer.ClipParameters(0);
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1)
{
  *(v1 + *(a1 + 24)) = 0;

  return type metadata accessor for Proto_ClipLayerParams(0);
}

uint64_t static NeuralNetwork.Layer.add(name:inputName:outputName:scalar:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, float a7@<S0>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = OUTLINED_FUNCTION_13_6(v18);
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = OUTLINED_FUNCTION_13_6(v18);
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  type metadata accessor for Proto_AddLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v8 = a7;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a6 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v7);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  return sub_257634BB4(v8);
}

uint64_t static NeuralNetwork.Layer.Kind.add(scalar:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    *a2 = 0;
    v6 = type metadata accessor for Proto_AddLayerParams(0);
    OUTLINED_FUNCTION_192_0(v6);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_30();
    v5 = type metadata accessor for Proto_AddLayerParams(v4);
    OUTLINED_FUNCTION_192_0(v5);
    *a2 = v2;
  }

  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.add(name:inputNames:outputName:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *(v14 + 16) = xmmword_2577442B0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *v6 = 0;
  type metadata accessor for Proto_AddLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a5 + v15) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v14);
  sub_2574897E0(v5);
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v16);
  return sub_257634BB4(v6);
}

uint64_t static NeuralNetwork.Layer.add(name:inputNames:outputName:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257743FF0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  v20 = OUTLINED_FUNCTION_13_6(v18);
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  *v9 = 0;
  type metadata accessor for Proto_AddLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a8 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v8);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  return sub_257634BB4(v9);
}

uint64_t NeuralNetwork.Layer.AddParameters.init(scalar:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  v4 = type metadata accessor for Proto_AddLayerParams(0);
  result = OUTLINED_FUNCTION_192_0(v4);
  *a1 = a2;
  return result;
}

uint64_t NeuralNetwork.Layer.AddParameters.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Proto_AddLayerParams(0);
  return OUTLINED_FUNCTION_192_0(v1);
}

uint64_t NeuralNetwork.Layer.AddParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_14_6(v0, 25427);
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v1;
  return v0;
}

float (*NeuralNetwork.Layer.AddParameters.scalar.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

BOOL static NeuralNetwork.Layer.AddParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    type metadata accessor for Proto_AddLayerParams(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_23();
    sub_257638550(v3, v4, MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257638550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NeuralNetwork.Layer.AddParameters.customMirror.getter()
{
  v2 = v0;
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
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for NeuralNetwork.Layer.AddParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257638D00(v2, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  v16 = OUTLINED_FUNCTION_14_6(v15, 25459);
  v17 = *v2;
  *(v16 + 72) = MEMORY[0x277D83A90];
  *(v16 + 48) = v17;
  v18 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v18);
  (*(v5 + 104))(v9, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t static NeuralNetwork.Layer.BroadcastableAddParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_3_23();
  sub_257638550(v2, v3, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_257638910(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_16();

  return sub_2577435F4();
}

uint64_t sub_2576389C4(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_10_16();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257638A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_10_16();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.BroadcastableAddParameters.customMirror.getter()
{
  v1 = v0;
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
  v12 = v18 - v11;
  type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257638D00(v1, v15 - v14);
  v18[1] = MEMORY[0x277D84F90];
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t sub_257638D00(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257638F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_257638550(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x72616C610000;
  *(result + 40) = 0xE600000000000000;
  return result;
}

uint64_t NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  v244 = v2;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_167();
  v243 = v4;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  v241 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_167();
  v238 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  v248 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_167();
  v235 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v247 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  v232 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  v246 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  v245 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v228 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v226 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v224 = v26;
  OUTLINED_FUNCTION_158();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v223 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v223 - v31;
  v33 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v242 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_167();
  v240 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  v237 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  v236 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  v234 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  v233 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  v231 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  v230 = v49;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  v229 = v51;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  v227 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_167();
  v225 = v55;
  OUTLINED_FUNCTION_158();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = (v223 - v58);
  v60 = MEMORY[0x28223BE20](v57);
  v62 = (v223 - v61);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = v223 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = (v223 - v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v68 = (*(*(v249 - 8) + 80) + 32) & ~*(*(v249 - 8) + 80);
  v251 = *(*(v249 - 8) + 72);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_257751110;
  v239 = v69;
  v70 = (v69 + v68);
  *v70 = 0x6147207475706E49;
  v70[1] = 0xEA00000000006574;
  v250 = v69 + v68;
  v71 = *(v223[1] + *(type metadata accessor for Proto_LSTMWeightParams(0) + 20));
  v72 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix, v266);
  sub_25749E8D0(v71 + v72, v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
  if (EnumTagSinglePayload == 1)
  {
    *v67 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(EnumTagSinglePayload, xmmword_257745740);
    v74 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v67 + v72, v75, v76, v74);
    OUTLINED_FUNCTION_34_0(v32);
    if (!v77)
    {
      sub_25749E940(v32);
    }
  }

  else
  {
    sub_25763A118(v32, v67);
  }

  v78 = v250;
  sub_2576FF45C(v67, (v250 + *(v249 + 48)));
  v79 = (v78 + v251);
  *v79 = 0x4720746567726F46;
  v79[1] = 0xEB00000000657461;
  v80 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix, v265);
  sub_25749E8D0(v71 + v80, v30);
  OUTLINED_FUNCTION_34_0(v30);
  if (v77)
  {
    *v65 = MEMORY[0x277D84F90];
    *(v65 + 8) = xmmword_257745740;
    *(v65 + 24) = xmmword_257745740;
    *(v65 + 40) = xmmword_257745740;
    v65[56] = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v81 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(&v65[v80], v82, v83, v81);
    OUTLINED_FUNCTION_34_0(v30);
    if (!v77)
    {
      sub_25749E940(v30);
    }
  }

  else
  {
    sub_25763A118(v30, v65);
  }

  v84 = v249;
  sub_2576FF45C(v65, (v79 + *(v249 + 48)));
  v85 = (v250 + 2 * v251);
  *v85 = 0x6E49206B636F6C42;
  v85[1] = 0xEB00000000747570;
  v86 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix, v264);
  v87 = v224;
  sub_25749E8D0(v71 + v86, v224);
  OUTLINED_FUNCTION_34_0(v87);
  if (v77)
  {
    *v62 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v88 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v62 + v86, v89, v90, v88);
    OUTLINED_FUNCTION_34_0(v87);
    v91 = v87;
    v92 = v232;
    if (!v77)
    {
      sub_25749E940(v91);
    }
  }

  else
  {
    sub_25763A118(v87, v62);
    v92 = v232;
  }

  sub_2576FF45C(v62, (v85 + *(v84 + 48)));
  v93 = (v250 + 3 * v251);
  *v93 = 0x472074757074754FLL;
  v93[1] = 0xEB00000000657461;
  v94 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, v263);
  v95 = v226;
  sub_25749E8D0(v71 + v94, v226);
  v96 = OUTLINED_FUNCTION_34_0(v95);
  if (v77)
  {
    *v59 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(v96, xmmword_257745740);
    v97 = *(v33 + 40);
    v98 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v59 + v97, v99, v100, v98);
    OUTLINED_FUNCTION_34_0(v95);
    if (!v77)
    {
      sub_25749E940(v95);
    }
  }

  else
  {
    sub_25763A118(v95, v59);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v59, v101);
  v102 = (v250 + 4 * v251);
  OUTLINED_FUNCTION_23_7();
  *v102 = 0xD000000000000014;
  v102[1] = v103;
  v104 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix, v262);
  v105 = v228;
  sub_25749E8D0(v71 + v104, v228);
  v106 = OUTLINED_FUNCTION_34_0(v105);
  if (v77)
  {
    v107 = v225;
    *v225 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(v106, xmmword_257745740);
    v108 = OUTLINED_FUNCTION_33_3();
    v109 = v107 + v104;
    v112 = v107;
    OUTLINED_FUNCTION_25_5(v109, v110, v111, v108);
    OUTLINED_FUNCTION_34_0(v105);
    v113 = v238;
    if (!v77)
    {
      sub_25749E940(v105);
    }
  }

  else
  {
    v112 = v225;
    sub_25763A118(v105, v225);
    v113 = v238;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v112, v114);
  v115 = (v250 + 5 * v251);
  OUTLINED_FUNCTION_23_7();
  *v115 = 0xD000000000000015;
  v115[1] = v116;
  v117 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix, v261);
  v118 = v71 + v117;
  v119 = v245;
  sub_25749E8D0(v118, v245);
  v120 = OUTLINED_FUNCTION_34_0(v119);
  if (v77)
  {
    v126 = v227;
    *v227 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(v120, xmmword_257745740);
    v121 = OUTLINED_FUNCTION_33_3();
    v122 = v126 + v119;
    v123 = v245;
    OUTLINED_FUNCTION_25_5(v122, v124, v125, v121);
    OUTLINED_FUNCTION_34_0(v123);
    if (!v77)
    {
      sub_25749E940(v123);
    }
  }

  else
  {
    v126 = v227;
    sub_25763A118(v119, v227);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v126, v127);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v115 = 0xD000000000000015;
  v115[1] = v128;
  v129 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix, v260);
  v130 = v71 + v129;
  v131 = v246;
  sub_25749E8D0(v130, v246);
  v132 = OUTLINED_FUNCTION_34_0(v131);
  if (v77)
  {
    v138 = v229;
    *v229 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(v132, xmmword_257745740);
    v133 = OUTLINED_FUNCTION_33_3();
    v134 = v138 + v131;
    v135 = v246;
    OUTLINED_FUNCTION_25_5(v134, v136, v137, v133);
    OUTLINED_FUNCTION_34_0(v135);
    if (!v77)
    {
      sub_25749E940(v135);
    }
  }

  else
  {
    v138 = v229;
    sub_25763A118(v131, v229);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v138, v139);
  v140 = (v250 - v251 + 8 * v251);
  OUTLINED_FUNCTION_23_7();
  *v140 = 0xD000000000000015;
  v140[1] = v141;
  v142 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, &v259);
  sub_25749E8D0(v71 + v142, v92);
  v143 = OUTLINED_FUNCTION_34_0(v92);
  if (v77)
  {
    v148 = v230;
    *v230 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(v143, xmmword_257745740);
    v144 = *(v33 + 40);
    v145 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v148 + v144, v146, v147, v145);
    OUTLINED_FUNCTION_34_0(v92);
    v149 = v113;
    if (!v77)
    {
      sub_25749E940(v92);
    }
  }

  else
  {
    v148 = v230;
    sub_25763A118(v92, v230);
    v149 = v113;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v148, v150);
  v151 = (v250 + 8 * v251);
  *v151 = 0x6147207475706E49;
  v151[1] = 0xEF73616942206574;
  v152 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector, &v258);
  v153 = v71 + v152;
  v154 = v247;
  sub_25749E8D0(v153, v247);
  v155 = OUTLINED_FUNCTION_34_0(v154);
  v156 = v235;
  if (v77)
  {
    v162 = v231;
    *v231 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(v155, xmmword_257745740);
    v157 = OUTLINED_FUNCTION_33_3();
    v158 = v162 + v154;
    v159 = v247;
    OUTLINED_FUNCTION_25_5(v158, v160, v161, v157);
    OUTLINED_FUNCTION_34_0(v159);
    if (!v77)
    {
      sub_25749E940(v159);
    }
  }

  else
  {
    v162 = v231;
    sub_25763A118(v154, v231);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v162, v163);
  v164 = (v250 + 9 * v251);
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000010;
  v164[1] = v165;
  v166 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector, &v257);
  sub_25749E8D0(v71 + v166, v156);
  v167 = OUTLINED_FUNCTION_34_0(v156);
  if (v77)
  {
    v172 = v233;
    *v233 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(v167, xmmword_257745740);
    v168 = *(v33 + 40);
    v169 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v172 + v168, v170, v171, v169);
    OUTLINED_FUNCTION_34_0(v156);
    v173 = v241;
    if (!v77)
    {
      sub_25749E940(v156);
    }
  }

  else
  {
    v172 = v233;
    sub_25763A118(v156, v233);
    v173 = v241;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v172, v174);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000010;
  v164[1] = v175;
  v176 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector, &v256);
  v177 = v71 + v176;
  v178 = v248;
  sub_25749E8D0(v177, v248);
  v179 = OUTLINED_FUNCTION_34_0(v178);
  if (v77)
  {
    v185 = v234;
    *v234 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(v179, xmmword_257745740);
    v180 = OUTLINED_FUNCTION_33_3();
    v181 = v185 + v178;
    v182 = v248;
    OUTLINED_FUNCTION_25_5(v181, v183, v184, v180);
    OUTLINED_FUNCTION_34_0(v182);
    if (!v77)
    {
      sub_25749E940(v182);
    }
  }

  else
  {
    v185 = v234;
    sub_25763A118(v178, v234);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v185, v186);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000010;
  v164[1] = v187;
  v188 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, &v255);
  sub_25749E8D0(v71 + v188, v149);
  v189 = OUTLINED_FUNCTION_34_0(v149);
  if (v77)
  {
    v193 = v236;
    *v236 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(v189, xmmword_257745740);
    v190 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v185 + v193, v191, v192, v190);
    OUTLINED_FUNCTION_34_0(v149);
    v194 = v243;
    if (!v77)
    {
      sub_25749E940(v149);
    }
  }

  else
  {
    v193 = v236;
    sub_25763A118(v149, v236);
    v194 = v243;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v193, v195);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000013;
  v164[1] = v196;
  v197 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector, &v254);
  sub_25749E8D0(v71 + v197, v173);
  v198 = OUTLINED_FUNCTION_34_0(v173);
  if (v77)
  {
    v202 = v237;
    *v237 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(v198, xmmword_257745740);
    v199 = OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_25_5(v202 + v197, v200, v201, v199);
    OUTLINED_FUNCTION_34_0(v173);
    if (!v77)
    {
      sub_25749E940(v173);
    }
  }

  else
  {
    v202 = v237;
    sub_25763A118(v173, v237);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v202, v203);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000014;
  v164[1] = v204;
  v205 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector, &v253);
  sub_25749E8D0(v71 + v205, v194);
  v206 = OUTLINED_FUNCTION_34_0(v194);
  if (v77)
  {
    v210 = v240;
    *v240 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(v206, xmmword_257745740);
    v207 = OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_25_5(v210 + v205, v208, v209, v207);
    OUTLINED_FUNCTION_34_0(v194);
    v211 = v244;
    if (!v77)
    {
      sub_25749E940(v194);
    }
  }

  else
  {
    v210 = v240;
    sub_25763A118(v194, v240);
    v211 = v244;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v210, v212);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_7();
  *v164 = 0xD000000000000014;
  v164[1] = v213;
  v214 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector;
  OUTLINED_FUNCTION_296(v71 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector, &v252);
  sub_25749E8D0(v71 + v214, v211);
  v215 = OUTLINED_FUNCTION_34_0(v211);
  if (v77)
  {
    v220 = v242;
    *v242 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(v215, xmmword_257745740);
    v216 = *(v33 + 40);
    v217 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v220 + v216, v218, v219, v217);
    OUTLINED_FUNCTION_34_0(v211);
    if (!v77)
    {
      sub_25749E940(v211);
    }
  }

  else
  {
    v220 = v242;
    sub_25763A118(v211, v242);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v220, v221);
  return v239;
}

uint64_t sub_257639FE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7 - 8];
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_206();
  v13 = *a1;
  OUTLINED_FUNCTION_296(v2 + v13, v19);
  sub_25749E8D0(v2 + v13, v8);
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  return sub_2576FF45C(v12, a2);
}

uint64_t sub_25763A118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_WeightParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25763A188(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763A1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25763A390(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25763A3FC(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  sub_25763A390(a1 + *(v15 + 20), v14, type metadata accessor for Proto_WeightParams);
  v16 = *(type metadata accessor for Proto_LSTMWeightParams(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_25763A188(a1);
    v17 = *(v2 + v16);
  }

  else
  {
    type metadata accessor for Proto_LSTMWeightParams._StorageClass(0);
    swift_allocObject();

    sub_2575C2590();
    v17 = v18;
    sub_25763A188(a1);

    *(v4 + v16) = v17;
  }

  sub_25763A118(v14, v9);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v19 = *a2;
  swift_beginAccess();
  sub_25763A1E4(v9, v17 + v19);
  return swift_endAccess();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInput.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInputRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInputBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25763B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  sub_25763A390(a1, v10 - v9, type metadata accessor for NeuralNetwork.WeightParameters);
  return a5(v11);
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_12_14(v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_17_8(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_12(v13);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v14)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6(v15);
    v16 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v16);
    if (!v14)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void sub_25763B82C()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 40);
  if (v7)
  {
    sub_25763A390(*(*v0 + 56), v3, type metadata accessor for NeuralNetwork.WeightParameters);
    v2(v3);
    sub_25763A188(v4);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v4);
  free(v3);
  free(v6);
  free(v5);
  OUTLINED_FUNCTION_434();

  free(v8);
}

uint64_t NeuralNetwork.Layer.LSTMWeightParameters.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_LSTMWeightParams(0) + 20);
  if (qword_27F879590 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27F87BF38;
}

unint64_t sub_25763B970()
{
  result = qword_27F87DEC8;
  if (!qword_27F87DEC8)
  {
    type metadata accessor for Proto_LSTMWeightParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DEC8);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(uint64_t a1)
{
  result = qword_27F8803F8;
  if (!qword_27F8803F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763BA3C(uint64_t a1)
{
  result = type metadata accessor for Proto_LSTMWeightParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_3_24(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  *(v1 + 56) = a1;

  return type metadata accessor for Proto_LSTMWeightParams(0);
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for NeuralNetwork.WeightParameters(0);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Proto_WeightParams(0);
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_25763A118(v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return type metadata accessor for Proto_QuantizationParams(0);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_2576FF45C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_25749E8D0(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return type metadata accessor for Proto_QuantizationParams(0);
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return type metadata accessor for Proto_QuantizationParams(0);
}

void static NeuralNetwork.Layer.bidirectionalLSTM(name:inputNames:outputNames:inputSize:outputSize:sequenceOutput:)()
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
  v11 = OUTLINED_FUNCTION_24_9();
  type metadata accessor for NeuralNetwork.Layer.Kind(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(v6, v4, v2, (v14 - v13));
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v8 + v16) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();

  sub_25752842C(v17);
  sub_2574897E0(v0);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_25752846C();
  sub_25763E764(v15, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.bidirectionalLSTM(inputSize:outputSize:sequenceOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(a1, a2, a3, a4);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = MEMORY[0x277D84F90];
  a4[2] = MEMORY[0x277D84F90];
  a4[3] = v14;
  a4[4] = v14;
  v15 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v15 + 40);
  __swift_storeEnumTagSinglePayload(a4 + v16, 1, 1, v12);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *a4 = a1;
  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  a4[1] = a2;
  sub_2574A172C(a4 + v16, v5, &qword_27F87CA40, &qword_257752538);
  v17 = OUTLINED_FUNCTION_26_0(v5);
  if (v18)
  {
    OUTLINED_FUNCTION_48_3(v17);
    OUTLINED_FUNCTION_26_0(v5);
    if (!v18)
    {
      sub_2574695E4(v5, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    v19 = OUTLINED_FUNCTION_222();
    sub_25763EB5C(v19, v20);
  }

  *v4 = a3 & 1;
  sub_2574695E4(a4 + v16, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_1_26();
  sub_25763EB5C(v4, a4 + v16);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F80, &qword_25776BFA0);
  type metadata accessor for NeuralNetwork.Layer.Activation(0);
  *(swift_allocObject() + 16) = xmmword_2577442C0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.setter();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.setter();
}

void *NeuralNetwork.Layer.BidirectionalLSTMParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 1) = xmmword_2577442C0;
  result[4] = 0x6953207475706E49;
  result[5] = 0xEA0000000000657ALL;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  result = sub_257743974();
  v2[6] = result;
  v2[7] = v3;
  v2[8] = 0x532074757074754FLL;
  v2[9] = 0xEB00000000657A69;
  if ((v0[1] & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2[10] = sub_257743974();
  v2[11] = v4;
  v2[12] = 0x65636E6575716553;
  v2[13] = 0xEF74757074754F20;
  v5 = NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter();
  v6 = 1702195828;
  if ((v5 & 1) == 0)
  {
    v6 = 0x65736C6166;
  }

  v7 = 0xE500000000000000;
  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  v2[14] = v6;
  v2[15] = v7;
  return v2;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  type metadata accessor for Proto_LSTMParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  sub_2574A172C(v0 + *(v7 + 40), v5, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_26_0(v5);
  if (v8)
  {
    *(v1 + 2) = 0;
    *v1 = 0;
    v1[4] = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v5);
    if (!v8)
    {
      sub_2574695E4(v5, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    sub_25763EB5C(v5, v1);
  }

  v9 = *v1;
  sub_25763E764(v1, type metadata accessor for Proto_LSTMParams);
  return v9;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_11();
  v69 = (v1 - v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_7();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v65 - v6);
  MEMORY[0x28223BE20](v5);
  v9 = (&v65 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880408, &qword_25776BFA8);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v72 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v26 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  sub_25763CBF4(v26, v17);

  v71 = v18;
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2574695E4(v17, &qword_27F880408, &qword_25776BFA8);
    v27 = v72;
  }

  else
  {
    v68 = v14;
    OUTLINED_FUNCTION_6_19();
    sub_25763EB5C(v17, v24);
    v28 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
    v29 = *(v28 + 16);
    if (v29)
    {
      v66 = v24;
      v67 = v0;
      v78 = v25;
      sub_2574847D0(0, v29, 0);
      v25 = v78;
      v30 = v70;
      OUTLINED_FUNCTION_193();
      v65 = v28;
      v74 = v31;
      v32 = v28 + v31;
      v73 = *(v30 + 72);
      do
      {
        sub_2574A172C(v32, v7, &qword_27F879B38, &qword_2577448C0);
        v33 = v75;
        v34 = *(v75 + 48);
        v76 = 0x2064726177726F46;
        v77 = 0xE800000000000000;
        MEMORY[0x259C64E90](*v7, v7[1]);
        v35 = v77;
        *v9 = v76;
        v9[1] = v35;
        OUTLINED_FUNCTION_40_6();

        v36 = OUTLINED_FUNCTION_16_6(*(v33 + 48));
        sub_25763EB5C(v36, v9 + v34);
        v37 = OUTLINED_FUNCTION_222();
        sub_2574695E4(v37, v38, &qword_2577448C0);
        v78 = v25;
        v40 = *(v25 + 16);
        v39 = *(v25 + 24);
        if (v40 >= v39 >> 1)
        {
          OUTLINED_FUNCTION_38_3(v39);
          v25 = v78;
        }

        *(v25 + 16) = v40 + 1;
        v41 = v73;
        sub_25749E9A8(v9, v25 + v74 + v40 * v73);
        v32 += v41;
        --v29;
      }

      while (v29);

      v27 = v72;
      v24 = v66;
    }

    else
    {

      v27 = v72;
    }

    sub_25763D02C(v25);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v24, v42);
    v14 = v68;
    v25 = MEMORY[0x277D84F90];
  }

  v43 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  sub_25763D480(1, v43, sub_25763E9FC);
  sub_25763CCAC(v44, v45, v46, v14);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v14, 1, v71) == 1)
  {
    sub_2574695E4(v14, &qword_27F880408, &qword_25776BFA8);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    sub_25763EB5C(v14, v27);
    v47 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
    v48 = *(v47 + 16);
    if (v48)
    {
      v78 = v25;
      sub_2574847D0(0, v48, 0);
      v49 = v78;
      OUTLINED_FUNCTION_193();
      v71 = v47;
      v74 = v50;
      v51 = v47 + v50;
      v73 = *(v52 + 72);
      v53 = v69;
      do
      {
        sub_2574A172C(v51, v7, &qword_27F879B38, &qword_2577448C0);
        v54 = v75;
        v55 = *(v75 + 48);
        v76 = 0x647261776B636142;
        v77 = 0xE900000000000020;
        MEMORY[0x259C64E90](*v7, v7[1]);
        v56 = v77;
        *v53 = v76;
        v53[1] = v56;
        OUTLINED_FUNCTION_40_6();

        v57 = OUTLINED_FUNCTION_16_6(*(v54 + 48));
        sub_25763EB5C(v57, v53 + v55);
        v58 = OUTLINED_FUNCTION_222();
        sub_2574695E4(v58, v59, &qword_2577448C0);
        v78 = v49;
        v61 = *(v49 + 16);
        v60 = *(v49 + 24);
        v62 = v53;
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_38_3(v60);
          v62 = v69;
          v49 = v78;
        }

        *(v49 + 16) = v61 + 1;
        v63 = v73;
        sub_25749E9A8(v62, v49 + v74 + v61 * v73);
        v51 += v63;
        --v48;
        v53 = v62;
      }

      while (v48);

      v27 = v72;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    sub_25763D02C(v49);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v27, v64);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter()
{
  v1 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = *(v0 + 32);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_257484778(0, v7, 0);
    v8 = v18;
    v9 = type metadata accessor for Proto_LSTMWeightParams(0);
    OUTLINED_FUNCTION_24(v9);
    v11 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      OUTLINED_FUNCTION_19_8();
      sub_25763E7BC(v11, v5);
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257484778(v14 > 1, v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_6_19();
      sub_25763EB5C(v5, v16);
      v11 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_25763CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  v6 = v5;
  if (v4)
  {
    sub_25763E7BC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_25763CCAC(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
    sub_25763E7BC(a1 + *(*(v10 - 8) + 72) * a2, a4);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t sub_25763CD70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  result = sub_25774107C();
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 + 48);
    sub_257653F04(&v7[v11], result, v9, 0, a1);
    *a2 = v12;
    a2[1] = v13;
    sub_25763EB5C(&v7[v11], a2 + *(v4 + 48));
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  }
}

void sub_25763CEB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469388);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B60, &unk_257744120);
  OUTLINED_FUNCTION_28_7(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763CF70(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469AE0);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B30, &unk_2577440F0);
  OUTLINED_FUNCTION_28_7(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25763D02C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(result, 1, sub_257469D34);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_25763D14C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_25746996C);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D200(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469ED4);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D2B0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469BAC);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B50, &unk_257744110);
  OUTLINED_FUNCTION_28_7(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D36C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_25746A0C8);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  type metadata accessor for FeatureDescription(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25763D480(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_25763EB10(0, result, v4);
    if (v5)
    {
      result = v4;
    }

    if (v4 >= result)
    {
      v6 = a3();

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t *sub_25763D564(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t *sub_25763D5CC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_24_9();
  v56 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_27_7();
  v10 = MEMORY[0x28223BE20](v9);
  v18 = OUTLINED_FUNCTION_39_4(v10, v11, v12, v13, v14, v15, v16, v17, v53[0]);
  v19 = OUTLINED_FUNCTION_24(v18);
  v21 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_47_4();
  v27 = OUTLINED_FUNCTION_10_17(v26);
  v55 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v53 - v33;
  v35 = *(v0 + 16);
  v36 = *(v35 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_36_2();
    v37 = v58;
    OUTLINED_FUNCTION_193();
    v39 = v35 + v38;
    v54 = *(v21 + 72);
    do
    {
      OUTLINED_FUNCTION_18_11();
      sub_25763E7BC(v39, v2);
      sub_25763E7BC(v2, v24);
      v40 = &unk_257752A20;
      sub_2574A172C(v24, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v56) == 1)
      {
        OUTLINED_FUNCTION_41_6();
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        sub_25763EB5C(v1, v53[1]);
        v44 = v53[2];
        OUTLINED_FUNCTION_41_6();
        sub_25763EB5C(v45, v46);
        v40 = v53[0];
        sub_2576B7CC8(v44, v53[0]);
        if (__swift_getEnumTagSinglePayload(v40, 1, v57) != 1)
        {
          OUTLINED_FUNCTION_20_6();
          v40 = v48;
          sub_25763E764(v24, v48);
          OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_0_35();
          sub_25763EB5C(v44, v31);
          goto LABEL_9;
        }

        v41 = v40;
        v42 = &qword_27F880410;
        v43 = &unk_25776BFB0;
      }

      sub_2574695E4(v41, v42, v43);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_21_8();
      sub_25763E764(v24, v47);
      OUTLINED_FUNCTION_49_1();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v31, v34);
      OUTLINED_FUNCTION_43_4();
      if (v50)
      {
        v52 = OUTLINED_FUNCTION_13_1(v49);
        sub_257484720(v52, v40, 1);
        v37 = v58;
      }

      *(v37 + 16) = v40;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v34, v51);
      v39 += v54;
      --v36;
    }

    while (v36);
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v7 = type metadata accessor for Proto_ActivationParams(0);
  v8 = OUTLINED_FUNCTION_10_17(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574846C8(v13, v12, 0);
    v14 = v25;
    OUTLINED_FUNCTION_193();
    v16 = v2 + v15;
    v17 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_22_8();
      v18 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_37_7(v18);
      sub_2574695E4(v11, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_44_3();
      if (v23)
      {
        v24 = OUTLINED_FUNCTION_13_1(v22);
        sub_2574846C8(v24, v2, 1);
        v14 = v25;
      }

      OUTLINED_FUNCTION_14_7();
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *(v0 + 16) = v14;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter();
  *a1 = v3;
  return sub_25763DBF0;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_24_9();
  v56 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_27_7();
  v10 = MEMORY[0x28223BE20](v9);
  v18 = OUTLINED_FUNCTION_39_4(v10, v11, v12, v13, v14, v15, v16, v17, v53[0]);
  v19 = OUTLINED_FUNCTION_24(v18);
  v21 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_47_4();
  v27 = OUTLINED_FUNCTION_10_17(v26);
  v55 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v53 - v33;
  v35 = *(v0 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_36_2();
    v37 = v58;
    OUTLINED_FUNCTION_193();
    v39 = v35 + v38;
    v54 = *(v21 + 72);
    do
    {
      OUTLINED_FUNCTION_18_11();
      sub_25763E7BC(v39, v2);
      sub_25763E7BC(v2, v24);
      v40 = &unk_257752A20;
      sub_2574A172C(v24, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v56) == 1)
      {
        OUTLINED_FUNCTION_41_6();
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        sub_25763EB5C(v1, v53[1]);
        v44 = v53[2];
        OUTLINED_FUNCTION_41_6();
        sub_25763EB5C(v45, v46);
        v40 = v53[0];
        sub_2576B7CC8(v44, v53[0]);
        if (__swift_getEnumTagSinglePayload(v40, 1, v57) != 1)
        {
          OUTLINED_FUNCTION_20_6();
          v40 = v48;
          sub_25763E764(v24, v48);
          OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_0_35();
          sub_25763EB5C(v44, v31);
          goto LABEL_9;
        }

        v41 = v40;
        v42 = &qword_27F880410;
        v43 = &unk_25776BFB0;
      }

      sub_2574695E4(v41, v42, v43);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_21_8();
      sub_25763E764(v24, v47);
      OUTLINED_FUNCTION_49_1();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v31, v34);
      OUTLINED_FUNCTION_43_4();
      if (v50)
      {
        v52 = OUTLINED_FUNCTION_13_1(v49);
        sub_257484720(v52, v40, 1);
        v37 = v58;
      }

      *(v37 + 16) = v40;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v34, v51);
      v39 += v54;
      --v36;
    }

    while (v36);
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v7 = type metadata accessor for Proto_ActivationParams(0);
  v8 = OUTLINED_FUNCTION_10_17(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574846C8(v13, v12, 0);
    v14 = v25;
    OUTLINED_FUNCTION_193();
    v16 = v2 + v15;
    v17 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_22_8();
      v18 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_37_7(v18);
      sub_2574695E4(v11, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_44_3();
      if (v23)
      {
        v24 = OUTLINED_FUNCTION_13_1(v22);
        sub_2574846C8(v24, v2, 1);
        v14 = v25;
      }

      OUTLINED_FUNCTION_14_7();
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *(v0 + 24) = v14;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.getter();
  *a1 = v3;
  return sub_25763E208;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.setter(char a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v9 = *(type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0) + 40);
  sub_2574A172C(v1 + v9, v3, &qword_27F87CA40, &qword_257752538);
  v10 = OUTLINED_FUNCTION_26_0(v3);
  if (v11)
  {
    OUTLINED_FUNCTION_48_3(v10);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v11)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    v12 = OUTLINED_FUNCTION_222();
    sub_25763EB5C(v12, v13);
  }

  *v2 = a1 & 1;
  sub_2574695E4(v1 + v9, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_1_26();
  sub_25763EB5C(v2, v1 + v9);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter() & 1;
  return sub_25763E3BC;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  v8 = type metadata accessor for Proto_LSTMWeightParams(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v3 + 16);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484810(v16, v15, 0);
    v17 = v26;
    OUTLINED_FUNCTION_193();
    v19 = v3 + v18;
    v20 = *(v7 + 72);
    do
    {
      sub_25763E7BC(v19, v1);
      OUTLINED_FUNCTION_19_8();
      sub_25763E7BC(v1, v14);
      OUTLINED_FUNCTION_5_19();
      sub_25763E764(v1, v21);
      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_13_1(v22);
        sub_257484810(v25, v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      OUTLINED_FUNCTION_193();
      sub_25763EB5C(v14, v26 + v24 + *(v11 + 72) * v23);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *(v0 + 32) = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  return sub_25763E65C;
}

uint64_t sub_25763E674(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = MEMORY[0x277D84F90];
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = v2;
  a1[4] = v2;
  v3 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v3 + 40);
  v5 = type metadata accessor for Proto_LSTMParams(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_25763E764(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25763E7BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25763E81C()
{
  result = qword_27F87DE98;
  if (!qword_27F87DE98)
  {
    type metadata accessor for Proto_BiDirectionalLSTMLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DE98);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters(uint64_t a1)
{
  result = qword_27F880418;
  if (!qword_27F880418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763E8E8(uint64_t a1)
{
  result = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25763E984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_25763E9FC(unint64_t result, uint64_t a2, uint64_t a3)
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
    type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_25763EAA4(unint64_t result, uint64_t a2, uint64_t a3)
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
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25763EB10(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_25763EB5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v4 + 16) = v0;
  v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;

  return sub_25763EB5C(v3, v6);
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_25763E7BC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_25763E764(v0, type metadata accessor for NeuralNetwork.Layer.Activation);
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_36_2()
{
  *(v3 - 144) = v2;
  *(v3 - 88) = v0;

  sub_257484720(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_38_3(unint64_t a1@<X8>)
{

  sub_2574847D0(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 136) = &a9 - v9;

  return type metadata accessor for Proto_ActivationParams(0);
}

uint64_t OUTLINED_FUNCTION_40_6()
{
  v5 = *(v3 - 128);

  return sub_2574A172C(v1, v5, v0, v2);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return type metadata accessor for Proto_LSTMParams(0);
}

uint64_t OUTLINED_FUNCTION_47_4()
{

  return type metadata accessor for NeuralNetwork.Layer.Activation(0);
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1)
{
  *(v1 + 8) = 0;
  *(v1 + 1) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_25763E764(v0, v1);
}

uint64_t sub_25763EF6C()
{
  v1 = v0;
  if (*(LinearRegressorConfiguration.weights.getter() + 16))
  {

    LinearRegressorConfiguration.weights.getter();

    v30 = sub_257743974();
    v31 = v2;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);

    v3 = sub_257743974();
    MEMORY[0x259C64E90](v3);

    sub_257469AE0();
    v5 = v4;
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_174(v6);
      sub_257469AE0();
      v5 = v27;
    }

    OUTLINED_FUNCTION_23_7();
    *(v5 + 16) = v7 + 1;
    v8 = v5 + 40 * v7;
    *(v8 + 32) = 0xD000000000000014;
    *(v8 + 40) = v9;
    *(v8 + 48) = v30;
    *(v8 + 56) = v31;
    *(v8 + 64) = 0;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  if (*(*(v1 + 8) + 16))
  {
    v10 = sub_257743674();
    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_25();
      v5 = v28;
    }

    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      OUTLINED_FUNCTION_174(v13);
      sub_257469AE0();
      v5 = v29;
    }

    OUTLINED_FUNCTION_23_7();
    *(v5 + 16) = v14 + 1;
    v15 = v5 + 40 * v14;
    *(v15 + 32) = 0xD000000000000012;
    *(v15 + 40) = v16;
    *(v15 + 48) = v10;
    *(v15 + 56) = v12;
    *(v15 + 64) = 0;
  }

  if (*(v1 + 24) == 1)
  {
    v17 = *(v1 + 16);
    v18 = *&aIdentitylogit[8 * v17];
    v19 = qword_25776C200[v17];
  }

  else
  {
    v19 = 0xE800000000000000;
    v18 = 0x797469746E656469;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_25();
    v5 = v25;
  }

  v21 = *(v5 + 16);
  v20 = *(v5 + 24);
  if (v21 >= v20 >> 1)
  {
    OUTLINED_FUNCTION_174(v20);
    sub_257469AE0();
    v5 = v26;
  }

  OUTLINED_FUNCTION_23_7();
  *(v5 + 16) = v21 + 1;
  v22 = v5 + 40 * v21;
  *(v22 + 32) = 0xD000000000000018;
  *(v22 + 40) = v23;
  *(v22 + 48) = v18;
  *(v22 + 56) = v19;
  *(v22 + 64) = 0;
  return sub_2576AACFC(v5);
}

uint64_t LinearRegressorConfiguration.weights.getter()
{
  v1 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2574840F8(0, v7, 0);
    v8 = v16;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_25763FF0C(v9, v5, type metadata accessor for Proto_GLMRegressor.DoubleArray);
      v11 = *v5;

      sub_25763FE00(v5);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_174(v12);
        sub_2574840F8(v14, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      *(v16 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t LinearRegressorConfiguration.weights.setter(uint64_t a1)
{
  type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = *(a1 + 16);
  if (v9)
  {
    v17 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_257484868(0, v9, 0);
    v10 = 32;
    v11 = v18;
    do
    {
      v12 = *(a1 + v10);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v12;
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = OUTLINED_FUNCTION_174(v13);
        sub_257484868(v15, v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      sub_25763FE5C(v8, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v10 += 8;
      --v9;
    }

    while (v9);

    v1 = v17;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *v1 = v11;
  return result;
}

uint64_t (*LinearRegressorConfiguration.weights.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = LinearRegressorConfiguration.weights.getter();
  return sub_25763F590;
}

uint64_t sub_25763F590(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return LinearRegressorConfiguration.weights.setter(*a1);
  }

  LinearRegressorConfiguration.weights.setter(v2);
}

uint64_t LinearRegressorConfiguration.offset.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*LinearRegressorConfiguration.offset.modify(void *a1))()
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

uint64_t sub_25763F698(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 8) = v3;
  }

  else
  {

    *(v2 + 8) = v3;
  }

  return result;
}

void LinearRegressorConfiguration.postEvaluationFunction.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *LinearRegressorConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*LinearRegressorConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25763F7F4;
}

uint64_t *sub_25763F7F4(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 8);
  *(v1 + 24) = 1;
  return result;
}

uint64_t LinearRegressorConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Proto_GLMRegressor(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t LinearRegressorConfiguration.init(weights:offset:postEvaluationFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = *a3;
  *a4 = MEMORY[0x277D84F90];
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  type metadata accessor for Proto_GLMRegressor(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  result = LinearRegressorConfiguration.weights.setter(a1);
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  *(a4 + 24) = 1;
  return result;
}

BOOL static LinearRegressorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_257480000(*a1);
  result = 0;
  if ((v4 & 1) != 0 && (sub_257479D04(*(a1 + 8), *(a2 + 8)) & 1) != 0 && sub_257487360(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    type metadata accessor for Proto_GLMRegressor(0);
    sub_2577431B4();
    sub_257640004(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t LinearRegressorConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_GLMRegressor(0);
  OUTLINED_FUNCTION_0_36();
  sub_257640004(v1, v2, &unk_25774B418);

  return sub_2577435F4();
}

uint64_t LinearRegressorConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_GLMRegressor(0);
  OUTLINED_FUNCTION_0_36();
  sub_257640004(v0, v1, &unk_25774B418);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25763FAA0(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_GLMRegressor(0);
  sub_257640004(&qword_27F87AE30, type metadata accessor for Proto_GLMRegressor, &unk_25774B418);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t LinearRegressorConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for LinearRegressorConfiguration(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25763FF0C(v0, v13 - v12, type metadata accessor for LinearRegressorConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442C0;
  *(v14 + 32) = 0x73746867696577;
  *(v14 + 40) = 0xE700000000000000;
  v15 = LinearRegressorConfiguration.weights.getter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880430, &unk_25776C040);
  *(v14 + 48) = v15;
  *(v14 + 72) = v16;
  *(v14 + 80) = 0x74657366666FLL;
  *(v14 + 88) = 0xE600000000000000;
  v17 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
  *(v14 + 96) = v17;
  OUTLINED_FUNCTION_23_7();
  *(v14 + 120) = v18;
  *(v14 + 128) = 0xD000000000000016;
  *(v14 + 136) = v19;
  *(v14 + 168) = &type metadata for LinearRegressorConfiguration.PostEvaluationFunction;
  LinearRegressorConfiguration.postEvaluationFunction.getter((v14 + 144));
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);

  return sub_257743AA4();
}

MLModelSpecification::LinearRegressorConfiguration::PostEvaluationFunction_optional __swiftcall LinearRegressorConfiguration.PostEvaluationFunction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25763FDD8@<X0>(uint64_t *a1@<X8>)
{
  result = LinearRegressorConfiguration.PostEvaluationFunction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25763FE00(uint64_t a1)
{
  v2 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763FE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LinearRegressorConfiguration(uint64_t a1)
{
  result = qword_281537820;
  if (!qword_281537820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763FF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257640004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257640050()
{
  result = qword_27F880440;
  if (!qword_27F880440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880440);
  }

  return result;
}

uint64_t sub_2576400CC(uint64_t a1)
{
  result = type metadata accessor for Proto_GLMRegressor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinearRegressorConfiguration.PostEvaluationFunction(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_3_25()
{

  sub_257469AE0();
}

BOOL sub_2576402C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = 0;
  if ((sub_257487374() & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9))
  {
    a3(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_27();
    v8 = sub_25764134C(v6, v7, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v8))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV18ReduceL1ParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 1936029761;
  *(v1 + 40) = 0xE400000000000000;
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D84A28]);
  *(v1 + 56) = v2;
  *(v1 + 64) = 0xD000000000000010;
  *(v1 + 72) = 0x8000000257780A00;
  v3 = 1702195828;
  if (*(v0 + 8))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = 0x4120656375646552;
  *(v1 + 104) = 0xEA00000000006C6CLL;
  if (*(v0 + 9))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0x65736C6166;
    v6 = 0xE500000000000000;
  }

  *(v1 + 112) = v3;
  *(v1 + 120) = v6;
  return v1;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV13MaxParametersV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  OUTLINED_FUNCTION_1_27();
  sub_25764134C(v2, v3, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.ReduceParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = 0xE300000000000000;
    v2 = 7173491;
    switch(*v0)
    {
      case 1:
        v2 = 6780513;
        break;
      case 2:
        v1 = 0xE400000000000000;
        v2 = 1685025392;
        break;
      case 3:
        v1 = 0xE600000000000000;
        v2 = 0x6D7573676F6CLL;
        break;
      case 4:
        v1 = 0xE900000000000065;
        v2 = 0x72617571736D7573;
        break;
      case 5:
        v1 = 0xE200000000000000;
        v2 = 12652;
        break;
      case 6:
        v1 = 0xE200000000000000;
        v2 = 12908;
        break;
      case 7:
        v2 = 7889261;
        break;
      case 8:
        v2 = 7235949;
        break;
      case 9:
        v1 = 0xE600000000000000;
        v2 = 0x78616D677261;
        break;
      default:
        break;
    }
  }

  else
  {
    v1 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E55;
  }

  if (*(v0 + 24) == 1)
  {
    v3 = 0xE300000000000000;
    v4 = 5720131;
    switch(*(v0 + 16))
    {
      case 1:
        v3 = 0xE200000000000000;
        v4 = 22344;
        break;
      case 2:
        v3 = 0xE100000000000000;
        v4 = 67;
        break;
      case 3:
        v3 = 0xE100000000000000;
        v4 = 72;
        break;
      case 4:
        v3 = 0xE100000000000000;
        v4 = 87;
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
    v3 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2577442C0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  *(v5 + 64) = 0x6E6F6C69737045;
  *(v5 + 72) = 0xE700000000000000;
  *(v5 + 80) = sub_257743794();
  *(v5 + 88) = v6;
  *(v5 + 96) = 1936291905;
  *(v5 + 104) = 0xE400000000000000;
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;
  return v5;
}

uint64_t NeuralNetwork.Layer.ReduceParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Proto_ReduceLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

__n128 *sub_2576409B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v1, xmmword_257743FF0);
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v2;
  OUTLINED_FUNCTION_7_13(0x8000000257780A20);
  v5 = v4 | 0x65750000u;
  if (v3)
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (!v3)
  {
    v6 = v0;
  }

  v1[5].n128_u64[0] = v5;
  v1[5].n128_u64[1] = v6;
  return v1;
}

uint64_t sub_257640A88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_257640AE4(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_6_20();
    if (v3)
    {
      v2(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_27();
      v6 = sub_25764134C(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *NeuralNetwork.Layer.CumulativeSumParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  OUTLINED_FUNCTION_7_13(0x8000000257780A40);
  v6 = v5 | 0x65750000u;
  if (v4)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = v6;
  }

  if (v4)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = v1;
  }

  v2[5].n128_u64[0] = v7;
  v2[5].n128_u64[1] = v8;
  v2[6].n128_u64[0] = 0x65737265766552;
  v2[6].n128_u64[1] = 0xE700000000000000;
  if (*(v0 + 9))
  {
    v9 = v1;
  }

  else
  {
    v6 = 0x65736C6166;
    v9 = 0xE500000000000000;
  }

  v2[7].n128_u64[0] = v6;
  v2[7].n128_u64[1] = v9;
  return v2;
}