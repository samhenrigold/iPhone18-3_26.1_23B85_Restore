uint64_t sub_2574DD7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2574DD6E0(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_2574DD824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2574DD6E0(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_2574DD85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2574DD7C0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_2574DD898(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FD7E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2574DD90C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_MILSpec_Function(0);
  OUTLINED_FUNCTION_288();
  a1[1] = sub_2577435D4();
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_288();
  a1[4] = sub_2577435D4();
  v2 = type metadata accessor for Proto_MILSpec_Program(0);
  return OUTLINED_FUNCTION_190_0(v2);
}

uint64_t sub_2574DD994@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Proto_MILSpec_Block(0);
  OUTLINED_FUNCTION_288();
  a1[3] = sub_2577435D4();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_288();
  a1[4] = sub_2577435D4();
  v2 = type metadata accessor for Proto_MILSpec_Function(0);
  return OUTLINED_FUNCTION_190_0(v2);
}

uint64_t sub_2574DDA1C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  OUTLINED_FUNCTION_158_0();
  a1[3] = sub_2577435D4();
  v3 = type metadata accessor for Proto_MILSpec_Block(0);
  return OUTLINED_FUNCTION_190_0(v3);
}

uint64_t sub_2574DDA78@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  type metadata accessor for Proto_MILSpec_Value(0);
  type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_MILSpec_ValueType(0);
  v5 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_2574DDAF4()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_125_0();
  v4 = type metadata accessor for Proto_MILSpec_Value(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_134_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E68, &qword_257744790);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_2();
  v14 = (v0 + *(v13 + 56));
  sub_2574FD8CC();
  sub_2574FD8CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574FD8CC();
    OUTLINED_FUNCTION_322();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_41_3();
      sub_2574FD78C();
      _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
      sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_Value);
      sub_2574FD734(v1, type metadata accessor for Proto_MILSpec_Value);
      OUTLINED_FUNCTION_5_14();
      sub_2574FD734(v0, v15);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_83_0();
    sub_2574FD734(v1, v18);
LABEL_7:
    sub_2574695E4(v0, &qword_27F879E68, &qword_257744790);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_39_2();
  sub_2574FD8CC();
  v17 = *v2;
  v16 = v2[1];
  OUTLINED_FUNCTION_322();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v17 != *v14 || v16 != v14[1])
  {
    sub_257743994();
  }

  OUTLINED_FUNCTION_5_14();
  sub_2574FD734(v0, v20);
LABEL_14:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574DDD9C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  type metadata accessor for Proto_MILSpec_Argument(0);
  v2 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_288();
  v1[2] = sub_2577435D4();
  v1[3] = v2;
  v1[4] = v2;
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_288();
  v1[5] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Operation(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574DDE24@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  OUTLINED_FUNCTION_158_0();
  *(a1 + 32) = sub_2577435D4();
  v3 = type metadata accessor for Proto_MILSpec_TensorType(0);
  return OUTLINED_FUNCTION_190_0(v3);
}

uint64_t sub_2574DDE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_111_0();
  v8 = v7;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = *(v6(0) + 20);
  if (*v5 != -1)
  {
    swift_once();
  }

  *(v8 + v9) = *v4;
}

uint64_t sub_2574DDF08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  return OUTLINED_FUNCTION_192_0(v3);
}

void sub_2574DDF3C()
{
  OUTLINED_FUNCTION_31();
  v72 = type metadata accessor for Proto_MILSpec_StateType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v74 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v69 = type metadata accessor for Proto_MILSpec_DictionaryType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v73 = v9;
  v10 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_MILSpec_TupleType(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v70 = v12;
  v13 = OUTLINED_FUNCTION_153();
  v68 = type metadata accessor for Proto_MILSpec_ListType(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v71 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v17 = type metadata accessor for Proto_MILSpec_TensorType(v16);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_181_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_180_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_290();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B920, &unk_25774F308);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40_2();
  sub_2574FD8CC();
  sub_2574FD8CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_9_8();
      sub_2574FD8CC();
      OUTLINED_FUNCTION_132_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v32 = type metadata accessor for Proto_MILSpec_ListType;
        v33 = v2;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_121_0();
      sub_2574FD78C();
      v53 = *(v68 + 20);
      v35 = *(v2 + v53);
      if (v35 == *(v71 + v53) || (, , OUTLINED_FUNCTION_288(), sub_2574E9844(), v55 = v54, , , (v55 & 1) != 0))
      {
        v35 = sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v56, v57, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_120_0();
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_90_0();
          sub_2574FD734(v71, v58);
          v41 = v2;
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_90_0();
      sub_2574FD734(v71, v66);
      v41 = v2;
      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_9_8();
      sub_2574FD8CC();
      OUTLINED_FUNCTION_132_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        OUTLINED_FUNCTION_13_3();
        v33 = v3;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_121_0();
      sub_2574FD78C();
      sub_2574796A0();
      if (v42)
      {
        OUTLINED_FUNCTION_169_0();
        OUTLINED_FUNCTION_0_22();
        v45 = sub_2574FB49C(v43, v44, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_186_0(v45);
      }

      OUTLINED_FUNCTION_13_3();
      sub_2574FD734(v70, v46);
      OUTLINED_FUNCTION_13_3();
      v41 = v3;
      goto LABEL_34;
    case 3u:
      OUTLINED_FUNCTION_9_8();
      sub_2574FD8CC();
      OUTLINED_FUNCTION_132_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v32 = type metadata accessor for Proto_MILSpec_DictionaryType;
        v33 = v4;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_121_0();
      sub_2574FD78C();
      v47 = *(v69 + 20);
      v35 = *(v4 + v47);
      if (v35 == *(v73 + v47) || (, , OUTLINED_FUNCTION_288(), sub_2574EA9B4(), v49 = v48, , , (v49 & 1) != 0))
      {
        v35 = sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v50, v51, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_120_0();
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_91_1();
          sub_2574FD734(v73, v52);
          v41 = v4;
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_91_1();
      sub_2574FD734(v73, v65);
      v41 = v4;
      goto LABEL_32;
    case 4u:
      OUTLINED_FUNCTION_9_8();
      sub_2574FD8CC();
      OUTLINED_FUNCTION_132_0();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v32 = type metadata accessor for Proto_MILSpec_StateType;
        v33 = v25;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_121_0();
      sub_2574FD78C();
      v34 = *(v72 + 20);
      v35 = *(v25 + v34);
      if (v35 == *(v74 + v34) || (, , OUTLINED_FUNCTION_288(), sub_2574EDA64(), v37 = v36, , , (v37)) && (v35 = sub_2577431B4(), OUTLINED_FUNCTION_0_22(), sub_2574FB49C(v38, v39, MEMORY[0x277D216D0]), OUTLINED_FUNCTION_120_0(), (sub_257743644()))
      {
        OUTLINED_FUNCTION_95_1();
        sub_2574FD734(v74, v40);
        v41 = v25;
LABEL_22:
        v59 = v35;
      }

      else
      {
        OUTLINED_FUNCTION_95_1();
        sub_2574FD734(v74, v64);
        v41 = v25;
LABEL_32:
        v59 = v35;
      }

LABEL_34:
      sub_2574FD734(v41, v59);
      OUTLINED_FUNCTION_22_4();
      sub_2574FD734(v0, v67);
      break;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_2574FD8CC();
      OUTLINED_FUNCTION_132_0();
      if (swift_getEnumCaseMultiPayload())
      {
        v32 = type metadata accessor for Proto_MILSpec_TensorType;
        v33 = v1;
LABEL_27:
        sub_2574FD734(v33, v32);
        sub_2574695E4(v0, &qword_27F87B920, &unk_25774F308);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        sub_2574FD78C();
        v60 = OUTLINED_FUNCTION_294();
        sub_2574E8694(v60);
        sub_2574FD734(v21, type metadata accessor for Proto_MILSpec_TensorType);
        v61 = OUTLINED_FUNCTION_229();
        sub_2574FD734(v61, v62);
        OUTLINED_FUNCTION_22_4();
        sub_2574FD734(v0, v63);
      }

      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574DE6A8()
{
  OUTLINED_FUNCTION_149_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Proto_MILSpec_ListType(0);
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_ListType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_71_0();
    v4 = sub_2574E8FC0(v3);
    OUTLINED_FUNCTION_157(v4);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_167_0();
  v5 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_75_1(v5);
  v6 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_168_0(v6, v7, &qword_27F879E10, &qword_257744730);
  return swift_endAccess();
}

uint64_t sub_2574DE788(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  a2(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574DE7E0()
{
  OUTLINED_FUNCTION_149_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Proto_MILSpec_ListType(0);
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_ListType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_71_0();
    v4 = sub_2574E8FC0(v3);
    OUTLINED_FUNCTION_157(v4);
  }

  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_167_0();
  v5 = type metadata accessor for Proto_MILSpec_Dimension(0);
  OUTLINED_FUNCTION_75_1(v5);
  v6 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_168_0(v6, v7, &qword_27F87B8D0, &qword_2577755A0);
  return swift_endAccess();
}

uint64_t sub_2574DE8C0()
{
  OUTLINED_FUNCTION_149_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Proto_MILSpec_DictionaryType(0);
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_DictionaryType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_71_0();
    v4 = sub_2574EA47C(v3);
    OUTLINED_FUNCTION_157(v4);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_167_0();
  v5 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_75_1(v5);
  v6 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_168_0(v6, v7, &qword_27F879E10, &qword_257744730);
  return swift_endAccess();
}

uint64_t sub_2574DE9A0()
{
  OUTLINED_FUNCTION_149_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Proto_MILSpec_DictionaryType(0);
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_DictionaryType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_71_0();
    v4 = sub_2574EA47C(v3);
    OUTLINED_FUNCTION_157(v4);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_167_0();
  v5 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_75_1(v5);
  v6 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_168_0(v6, v7, &qword_27F879E10, &qword_257744730);
  return swift_endAccess();
}

uint64_t sub_2574DEA80()
{
  OUTLINED_FUNCTION_149_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Proto_MILSpec_StateType(0);
  if ((OUTLINED_FUNCTION_172(v2) & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_StateType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_87_0();
    v8 = sub_2574EB4A4(v3, v4, v5, v6, v7);
    OUTLINED_FUNCTION_157(v8);
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_167_0();
  v9 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_75_1(v9);
  v10 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_168_0(v10, v11, &qword_27F879E10, &qword_257744730);
  return swift_endAccess();
}

uint64_t sub_2574DEB84@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  return OUTLINED_FUNCTION_192_0(v1);
}

void sub_2574DEBB4()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_106_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B928, &qword_25774F318);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40_2();
  sub_2574FD8CC();
  sub_2574FD8CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574FD8CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      if (*v11 == *v1)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        v23 = sub_2574FB49C(v21, v22, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_185_0(v23);
      }

      OUTLINED_FUNCTION_12_9();
      sub_2574FD734(v1, v15);
      OUTLINED_FUNCTION_12_9();
      v25 = v11;
LABEL_14:
      sub_2574FD734(v25, v24);
      OUTLINED_FUNCTION_21_5();
      sub_2574FD734(v0, v26);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_12_9();
    v17 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574FD8CC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574FD78C();
      if (*v2 == *v7)
      {
        OUTLINED_FUNCTION_169_0();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v18, v19, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_11_8();
      sub_2574FD734(v7, v20);
      OUTLINED_FUNCTION_11_8();
      v25 = v2;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_11_8();
    v17 = v2;
  }

  sub_2574FD734(v17, v16);
  sub_2574695E4(v0, &qword_27F87B928, &qword_25774F318);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574DEF50@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574DEF88()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v4 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_290();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9A0, &qword_25774F348);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_40_2();
  sub_2574FD8CC();
  sub_2574FD8CC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574FD8CC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_121_0();
      sub_2574FD78C();
      OUTLINED_FUNCTION_294();
      sub_2574F3B14();
      sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_Value.ImmediateValue);
      v22 = OUTLINED_FUNCTION_229();
      sub_2574FD734(v22, v23);
      OUTLINED_FUNCTION_10_11();
      sub_2574FD734(v0, v24);
      goto LABEL_16;
    }

    v20 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue;
    v21 = v2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_39_2();
  sub_2574FD8CC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = type metadata accessor for Proto_MILSpec_Value.BlobFileValue;
    v21 = v12;
LABEL_13:
    sub_2574FD734(v21, v20);
    sub_2574695E4(v0, &qword_27F87B9A0, &qword_25774F348);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_121_0();
  sub_2574FD78C();
  v16 = *v12 == *v1 && v12[1] == v1[1];
  if (v16 || (sub_257743994()) && v12[2] == v1[2])
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_0_22();
    v19 = sub_2574FB49C(v17, v18, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_185_0(v19);
  }

  OUTLINED_FUNCTION_85_0();
  sub_2574FD734(v1, v25);
  v26 = OUTLINED_FUNCTION_131_0();
  sub_2574FD734(v26, v27);
  OUTLINED_FUNCTION_10_11();
  sub_2574FD734(v0, v28);
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574DF8B8@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_257745740;
  v1 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  return OUTLINED_FUNCTION_192_0(v1);
}

void sub_2574DF8F0()
{
  OUTLINED_FUNCTION_31();
  v100 = v5;
  v101 = v6;
  v91[7] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v98 = v8;
  v9 = OUTLINED_FUNCTION_153();
  v91[6] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v97 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v91[5] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v96 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v91[4] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v95 = v17;
  v18 = OUTLINED_FUNCTION_153();
  v91[3] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v94 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v91[2] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(v21);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  v93 = v23;
  v24 = OUTLINED_FUNCTION_153();
  v91[1] = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v92 = v26;
  v27 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v99 = v29;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_181_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_179();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (v91 - v36);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_106_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B958, &qword_25774F338);
  OUTLINED_FUNCTION_13(v38);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v41 = v91 - v40;
  sub_2574FD8CC();
  sub_2574FD8CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 1)
      {
        v84 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts;
        v85 = v37;
        goto LABEL_35;
      }

      v62 = v93;
      sub_2574FD78C();
      if (sub_257479BB4(*v37, *v62))
      {
        OUTLINED_FUNCTION_169_0();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v63, v64, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_93_1();
      sub_2574FD734(v62, v65);
      v66 = OUTLINED_FUNCTION_205();
      sub_2574FD734(v66, v67);
      OUTLINED_FUNCTION_7_10();
      v69 = v41;
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 2)
      {
        v84 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools;
        v85 = v2;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_128_0();
      v48 = v94;
      sub_2574FD78C();
      if (sub_257479C08(*v2, *v48))
      {
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_0_22();
        v51 = sub_2574FB49C(v49, v50, MEMORY[0x277D216D0]);
        v41 = v0;
        OUTLINED_FUNCTION_170_0(v37 + v2, v52, v53, v51);
      }

      OUTLINED_FUNCTION_96_1();
      sub_2574FD734(v48, v54);
      v47 = v2;
      goto LABEL_47;
    case 3u:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 3)
      {
        v84 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings;
        v85 = v4;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_128_0();
      v55 = v95;
      sub_2574FD78C();
      if (sub_257479C78(*v4, *v55))
      {
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_0_22();
        v58 = sub_2574FB49C(v56, v57, MEMORY[0x277D216D0]);
        v41 = v0;
        OUTLINED_FUNCTION_170_0(v37 + v4, v59, v60, v58);
      }

      OUTLINED_FUNCTION_94_1();
      sub_2574FD734(v55, v61);
      v47 = v4;
      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 4)
      {
        v84 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts;
        v85 = v0;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_128_0();
      v43 = v96;
      sub_2574FD78C();
      if (sub_257487374())
      {
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v44, v45, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_98_0();
      sub_2574FD734(v43, v46);
      v47 = v0;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 5)
      {
        v84 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles;
        v85 = v3;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_128_0();
      v70 = v97;
      sub_2574FD78C();
      if (sub_257479D04(*v3, *v70))
      {
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_0_22();
        v73 = sub_2574FB49C(v71, v72, MEMORY[0x277D216D0]);
        v41 = v0;
        OUTLINED_FUNCTION_170_0(v37 + v3, v74, v75, v73);
      }

      OUTLINED_FUNCTION_92_0();
      sub_2574FD734(v70, v76);
      v47 = v3;
      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_2_13();
      v1 = v99;
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0() != 6)
      {
        v42 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_128_0();
      v77 = v98;
      sub_2574FD78C();
      if (MEMORY[0x259C648D0](*v1, v1[1], *v77, v77[1]) & 1) != 0 && (OUTLINED_FUNCTION_164_0(), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_0_22(), v80 = sub_2574FB49C(v78, v79, MEMORY[0x277D216D0]), v41 = v0, (OUTLINED_FUNCTION_170_0(v37 + v1, v81, v82, v80)))
      {
        v83 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes;
      }

      else
      {
        v83 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes;
      }

      goto LABEL_46;
    default:
      OUTLINED_FUNCTION_2_13();
      sub_2574FD8CC();
      if (OUTLINED_FUNCTION_160_0())
      {
        v42 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats;
LABEL_34:
        v84 = v42;
        v85 = v1;
LABEL_35:
        sub_2574FD734(v85, v84);
        sub_2574695E4(v41, &qword_27F87B958, &qword_25774F338);
      }

      else
      {
        OUTLINED_FUNCTION_128_0();
        v77 = v92;
        sub_2574FD78C();
        if (sub_257479B60(*v1, *v77) & 1) != 0 && (OUTLINED_FUNCTION_164_0(), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_0_22(), v88 = sub_2574FB49C(v86, v87, MEMORY[0x277D216D0]), v41 = v0, (OUTLINED_FUNCTION_170_0(v37 + v1, v89, v90, v88)))
        {
          v83 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats;
        }

        else
        {
          v83 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats;
        }

LABEL_46:
        v37 = v83;
        sub_2574FD734(v77, v83);
        v47 = v1;
LABEL_47:
        sub_2574FD734(v47, v37);
        OUTLINED_FUNCTION_7_10();
        v69 = v41;
LABEL_48:
        sub_2574FD734(v69, v68);
      }

      OUTLINED_FUNCTION_35();
      return;
  }
}

uint64_t sub_2574E029C(uint64_t a1)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  v1 = OUTLINED_FUNCTION_95_0();
  v2 = type metadata accessor for Proto_MILSpec_Value(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

uint64_t sub_2574E0310()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E84F0);
  __swift_project_value_buffer(v0, qword_27F8E84F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25774C0A0;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 0;
  *v4 = "UNUSED_TYPE";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 1;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "STRING";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "FLOAT16";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "FLOAT32";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "FLOAT64";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "BFLOAT16";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 21;
  *v20 = "INT8";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 22;
  *v22 = "INT16";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 23;
  *v24 = "INT32";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 24;
  *v26 = "INT64";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "INT4";
  *(v28 + 1) = 4;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 31;
  *v30 = "UINT8";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 32;
  *v32 = "UINT16";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 33;
  *v34 = "UINT32";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 34;
  *v36 = "UINT64";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 35;
  *v38 = "UINT4";
  *(v38 + 1) = 5;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 36;
  *v40 = "UINT2";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 37;
  *v42 = "UINT1";
  *(v42 + 1) = 5;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 38;
  *v44 = "UINT6";
  *(v44 + 1) = 5;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 39;
  *v46 = "UINT3";
  *(v46 + 1) = 5;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 40;
  *v48 = "FLOAT8E4M3FN";
  *(v48 + 1) = 12;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 41;
  *v50 = "FLOAT8E5M2";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2574E09F8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8508);
  __swift_project_value_buffer(v0, qword_27F8E8508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "functions";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "docString";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E0C38()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743324();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2574E0CDC(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574E8434(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574E0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_MILSpec_Function(0);
  sub_2574FB49C(&qword_27F87B6A0, type metadata accessor for Proto_MILSpec_Function, &unk_25774ED70);
  sub_2574FB49C(&qword_27F87B6A8, type metadata accessor for Proto_MILSpec_Function, &unk_25774E410);
  return sub_257743214();
}

uint64_t sub_2574E0FAC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_25747793C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_173_0();
  sub_257476DC8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_MILSpec_Program(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_0_22();
  v9 = sub_2574FB49C(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2574E10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B7C8, type metadata accessor for Proto_MILSpec_Program, &unk_25774E590);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E1158(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program, &unk_25774F198);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E1220(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program, &unk_25774F198);

  return sub_257743424();
}

uint64_t sub_2574E12A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8520);
  __swift_project_value_buffer(v0, qword_27F8E8520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inputs";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "opset";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "block_specializations";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E14EC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_84_1();
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574FA050(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 3:
        v8 = OUTLINED_FUNCTION_6_8();
        sub_2574E15D0(v8, v9, v10, v11);
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_6_8();
        sub_2574E8434(v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574E15D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_MILSpec_Block(0);
  sub_2574FB49C(&qword_27F87B688, type metadata accessor for Proto_MILSpec_Block, &unk_25774E9B0);
  sub_2574FB49C(&qword_27F87B690, type metadata accessor for Proto_MILSpec_Block, &unk_25774E320);
  return sub_257743214();
}

void sub_2574E16C8()
{
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v2 || (type metadata accessor for Proto_MILSpec_NamedValueType(0), OUTLINED_FUNCTION_40_3(), sub_2574FB49C(v3, v4, &unk_25774EE60), OUTLINED_FUNCTION_25_2(), !v0))
  {
    OUTLINED_FUNCTION_1_6();
    if (!v5 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v0))
    {
      OUTLINED_FUNCTION_183_0();
      if (!v6 || (sub_257743184(), v7 = OUTLINED_FUNCTION_118_0(), type metadata accessor for Proto_MILSpec_Block(v7), v1 = type metadata accessor for Proto_MILSpec_Block, sub_2574FB49C(&qword_27F87B688, type metadata accessor for Proto_MILSpec_Block, &unk_25774E9B0), sub_2574FB49C(&qword_27F87B690, type metadata accessor for Proto_MILSpec_Block, &unk_25774E320), OUTLINED_FUNCTION_176_0(), OUTLINED_FUNCTION_145_0(), OUTLINED_FUNCTION_9_5(), sub_257743434(), !v0))
      {
        OUTLINED_FUNCTION_174_0();
        if (!v8 || (sub_257743184(), v9 = OUTLINED_FUNCTION_118_0(), type metadata accessor for Proto_MILSpec_Value(v9), OUTLINED_FUNCTION_42_1(), sub_2574FB49C(v10, v1, &unk_25774E5F0), OUTLINED_FUNCTION_6_12(), sub_2574FB49C(v11, v1, v12), OUTLINED_FUNCTION_176_0(), OUTLINED_FUNCTION_150_0(), OUTLINED_FUNCTION_145_0(), OUTLINED_FUNCTION_9_5(), sub_257743434(), !v0))
        {
          type metadata accessor for Proto_MILSpec_Function(0);
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_141_0();
}

uint64_t sub_2574E19A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B7E0, type metadata accessor for Proto_MILSpec_Function, &unk_25774E4A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E1A48(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B6A0, type metadata accessor for Proto_MILSpec_Function, &unk_25774ED70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E1B10(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B6A0, type metadata accessor for Proto_MILSpec_Function, &unk_25774ED70);

  return sub_257743424();
}

uint64_t sub_2574E1B90()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8538);
  __swift_project_value_buffer(v0, qword_27F8E8538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inputs";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputs";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "operations";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E1DD0()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_84_1();
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574FA050(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_257743344();
        break;
      case 3:
        v8 = OUTLINED_FUNCTION_6_8();
        sub_2574E1EB4(v8, v9, v10, v11);
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_6_8();
        sub_2574E1F54(v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574E1EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_Operation(0);
  sub_2574FB49C(&qword_27F87B640, type metadata accessor for Proto_MILSpec_Operation, &unk_25774EDE8);
  return sub_2577433C4();
}

uint64_t sub_2574E1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  sub_2574FB49C(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value, &unk_25774F018);
  return sub_257743214();
}

void sub_2574E204C()
{
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v3 || (type metadata accessor for Proto_MILSpec_NamedValueType(0), OUTLINED_FUNCTION_40_3(), sub_2574FB49C(v4, v5, &unk_25774EE60), OUTLINED_FUNCTION_25_2(), !v0))
  {
    if (!*(*(v1 + 8) + 16) || (OUTLINED_FUNCTION_12_8(), sub_257743514(), !v0))
    {
      if (!*(*(v1 + 16) + 16) || (type metadata accessor for Proto_MILSpec_Operation(0), sub_2574FB49C(&qword_27F87B640, type metadata accessor for Proto_MILSpec_Operation, &unk_25774EDE8), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v0))
      {
        OUTLINED_FUNCTION_183_0();
        if (!v6 || (sub_257743184(), v7 = OUTLINED_FUNCTION_118_0(), type metadata accessor for Proto_MILSpec_Value(v7), OUTLINED_FUNCTION_42_1(), sub_2574FB49C(v8, v2, &unk_25774E5F0), OUTLINED_FUNCTION_6_12(), sub_2574FB49C(v9, v2, v10), OUTLINED_FUNCTION_176_0(), OUTLINED_FUNCTION_150_0(), OUTLINED_FUNCTION_145_0(), OUTLINED_FUNCTION_9_5(), sub_257743434(), !v0))
        {
          type metadata accessor for Proto_MILSpec_Block(0);
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_141_0();
}

uint64_t sub_2574E22DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B878, type metadata accessor for Proto_MILSpec_Block, &unk_25774E3B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E237C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B688, type metadata accessor for Proto_MILSpec_Block, &unk_25774E9B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E2444(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B688, type metadata accessor for Proto_MILSpec_Block, &unk_25774E9B0);

  return sub_257743424();
}

void sub_2574E24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v4 || (type metadata accessor for Proto_MILSpec_Argument.Binding(0), sub_2574FB49C(&qword_27F87B658, type metadata accessor for Proto_MILSpec_Argument.Binding, &unk_25774E1D0), OUTLINED_FUNCTION_25_2(), !v3))
  {
    type metadata accessor for Proto_MILSpec_Argument(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574E2638(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B870, type metadata accessor for Proto_MILSpec_Argument, &unk_25774E2C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E26D8(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B670, type metadata accessor for Proto_MILSpec_Argument, &unk_25774EA28);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E27A0(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B670, type metadata accessor for Proto_MILSpec_Argument, &unk_25774EA28);

  return sub_257743424();
}

uint64_t sub_2574E2860()
{
  result = MEMORY[0x259C64E90](0x676E69646E69422ELL, 0xE800000000000000);
  qword_27F8E8568 = 0xD000000000000016;
  qword_27F8E8570 = 0x800000025777B2D0;
  return result;
}

uint64_t sub_2574E28CC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8578);
  __swift_project_value_buffer(v0, qword_27F8E8578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574E2A94()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2574E2C9C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574E2AF8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574E2AF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_257743384();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_2574FD880(a2, v8, &qword_27F879E70, &qword_257744798);
    v11 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_2574695E4(v8, &qword_27F879E70, &qword_257744798);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F879E70, &qword_257744798);
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_2574E2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Value(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F879E70, &qword_257744798);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879E70, &qword_257744798);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F879EB8, &unk_2577447E0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding);
    }
  }

  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD880(v20, v18, &qword_27F879EB8, &unk_2577447E0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F879EB8, &unk_2577447E0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F879EB8, &unk_2577447E0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879E70, &qword_257744798);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574E3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_2574FD880(a1, &v10 - v6, &qword_27F879E70, &qword_257744798);
  v8 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879E70, &qword_257744798);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257743534();
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F879E70, &qword_257744798);
  v11 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879E70, &qword_257744798);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Value);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E388C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B918, type metadata accessor for Proto_MILSpec_Argument.Binding, &unk_25774E198);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E392C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B658, type metadata accessor for Proto_MILSpec_Argument.Binding, &unk_25774E1D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E39F4(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B658, type metadata accessor for Proto_MILSpec_Argument.Binding, &unk_25774E1D0);

  return sub_257743424();
}

uint64_t sub_2574E3A74()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8590);
  __swift_project_value_buffer(v0, qword_27F8E8590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inputs";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "outputs";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "blocks";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "attributes";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E3CF4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743394();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574E3DF4(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2574E83E0();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2574E3EEC(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574E3F8C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574E3DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_MILSpec_Argument(0);
  sub_2574FB49C(&qword_27F87B670, type metadata accessor for Proto_MILSpec_Argument, &unk_25774EA28);
  sub_2574FB49C(&qword_27F87B678, type metadata accessor for Proto_MILSpec_Argument, &unk_25774F058);
  return sub_257743214();
}

uint64_t sub_2574E3EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_Block(0);
  sub_2574FB49C(&qword_27F87B688, type metadata accessor for Proto_MILSpec_Block, &unk_25774E9B0);
  return sub_2577433C4();
}

uint64_t sub_2574E3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  sub_2574FB49C(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value, &unk_25774F018);
  return sub_257743214();
}

uint64_t sub_2574E4428(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B7D8, type metadata accessor for Proto_MILSpec_Operation, &unk_25774E0A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E44C8(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B640, type metadata accessor for Proto_MILSpec_Operation, &unk_25774EDE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E4590(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B640, type metadata accessor for Proto_MILSpec_Operation, &unk_25774EDE8);

  return sub_257743424();
}

uint64_t sub_2574E4610()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E85A8);
  __swift_project_value_buffer(v0, qword_27F8E85A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574E47D8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574E483C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2574E483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  type metadata accessor for Proto_MILSpec_ValueType(0);
  sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);
  return sub_2577433D4();
}

uint64_t sub_2574E48F0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v0))
  {
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_15_1();
    result = sub_2574E4968(v3, v4, v5, v6);
    if (!v0)
    {
      type metadata accessor for Proto_MILSpec_NamedValueType(0);
      return OUTLINED_FUNCTION_28_3();
    }
  }

  return result;
}

uint64_t sub_2574E4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_ValueType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  sub_2574FD880(a1 + *(v11 + 24), v7, &qword_27F879E10, &qword_257744730);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879E10, &qword_257744730);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);
  sub_257743574();
  return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_ValueType);
}

uint64_t sub_2574E4B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B7D0, type metadata accessor for Proto_MILSpec_NamedValueType, &unk_25774DFB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E4C38(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87A1D8, type metadata accessor for Proto_MILSpec_NamedValueType, &unk_25774EE60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E4D00(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87A1D8, type metadata accessor for Proto_MILSpec_NamedValueType, &unk_25774EE60);

  return sub_257743424();
}

uint64_t sub_2574E4D80()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E85C0);
  __swift_project_value_buffer(v0, qword_27F8E85C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tensorType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "listType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tupleType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dictionaryType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "stateType";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E50F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  v4 = v3;
  OUTLINED_FUNCTION_5_8();
  v5 = *(type metadata accessor for Proto_MILSpec_ValueType(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    *(v4 + v5) = sub_2574EB4A4(v7, &qword_27F879D40, &qword_257744660, &OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  v8 = OUTLINED_FUNCTION_5_10();
  sub_2574E51A4(v8, v9, v10, v11);
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574E51A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2574E52A0(a1, a2, a3, a4);
        break;
      case 2:
        sub_2574E57F4(a1, a2, a3, a4);
        break;
      case 3:
        sub_2574E5D64(a1, a2, a3, a4);
        break;
      case 4:
        sub_2574E62D4(a1, a2, a3, a4);
        break;
      case 5:
        sub_2574E6844(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574E52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B888, &qword_25774F2B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  __swift_storeEnumTagSinglePayload(&v32 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  v34 = a1;
  v32 = v24;
  sub_2574FD880(a1 + v24, v13, &qword_27F879D40, &qword_257744660);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
    }

    else
    {
      sub_2574695E4(v23, &qword_27F87B888, &qword_25774F2B0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }
  }

  sub_2574FB49C(&qword_27F87B610, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774E8C0);
  v26 = v37;
  sub_2577433D4();
  if (v26)
  {
    v27 = v23;
    return sub_2574695E4(v27, &qword_27F87B888, &qword_25774F2B0);
  }

  sub_2574FD880(v23, v21, &qword_27F87B888, &qword_25774F2B0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_2574695E4(v23, &qword_27F87B888, &qword_25774F2B0);
    v27 = v21;
    return sub_2574695E4(v27, &qword_27F87B888, &qword_25774F2B0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v23, &qword_27F87B888, &qword_25774F2B0);
  v29 = v33;
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v14);
  v30 = v34;
  v31 = v32;
  swift_beginAccess();
  sub_2574FD834(v29, v30 + v31, &qword_27F879D40, &qword_257744660);
  return swift_endAccess();
}

uint64_t sub_2574E57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MILSpec_ListType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B890, &qword_25774F2B8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  __swift_storeEnumTagSinglePayload(&v31 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  v32 = v24;
  sub_2574FD880(a1 + v24, v13, &qword_27F879D40, &qword_257744660);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v35 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    v31 = a1;
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v23, &qword_27F87B890, &qword_25774F2B8);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
    }

    a1 = v31;
  }

  sub_2574FB49C(&qword_27F87B5F0, type metadata accessor for Proto_MILSpec_ListType, &unk_25774E7D0);
  v25 = v38;
  sub_2577433D4();
  if (v25)
  {
    v26 = v23;
    return sub_2574695E4(v26, &qword_27F87B890, &qword_25774F2B8);
  }

  sub_2574FD880(v23, v21, &qword_27F87B890, &qword_25774F2B8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_2574695E4(v23, &qword_27F87B890, &qword_25774F2B8);
    v26 = v21;
    return sub_2574695E4(v26, &qword_27F87B890, &qword_25774F2B8);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v35;
  sub_2574695E4(v23, &qword_27F87B890, &qword_25774F2B8);
  v29 = v33;
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
  v30 = v32;
  swift_beginAccess();
  sub_2574FD834(v29, a1 + v30, &qword_27F879D40, &qword_257744660);
  return swift_endAccess();
}

uint64_t sub_2574E5D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TupleType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B898, &qword_25774F2C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  __swift_storeEnumTagSinglePayload(&v31 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  v32 = v24;
  sub_2574FD880(a1 + v24, v13, &qword_27F879D40, &qword_257744660);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v35 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    v31 = a1;
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v23, &qword_27F87B898, &qword_25774F2C0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
    }

    a1 = v31;
  }

  sub_2574FB49C(&qword_27F87B600, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774E848);
  v25 = v38;
  sub_2577433D4();
  if (v25)
  {
    v26 = v23;
    return sub_2574695E4(v26, &qword_27F87B898, &qword_25774F2C0);
  }

  sub_2574FD880(v23, v21, &qword_27F87B898, &qword_25774F2C0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_2574695E4(v23, &qword_27F87B898, &qword_25774F2C0);
    v26 = v21;
    return sub_2574695E4(v26, &qword_27F87B898, &qword_25774F2C0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v35;
  sub_2574695E4(v23, &qword_27F87B898, &qword_25774F2C0);
  v29 = v33;
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
  v30 = v32;
  swift_beginAccess();
  sub_2574FD834(v29, a1 + v30, &qword_27F879D40, &qword_257744660);
  return swift_endAccess();
}

uint64_t sub_2574E62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MILSpec_DictionaryType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8A0, &qword_25774F2C8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  __swift_storeEnumTagSinglePayload(&v31 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  v32 = v24;
  sub_2574FD880(a1 + v24, v13, &qword_27F879D40, &qword_257744660);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v35 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    v31 = a1;
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v23, &qword_27F87B8A0, &qword_25774F2C8);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
    }

    a1 = v31;
  }

  sub_2574FB49C(&qword_27F87B5E0, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774E758);
  v25 = v38;
  sub_2577433D4();
  if (v25)
  {
    v26 = v23;
    return sub_2574695E4(v26, &qword_27F87B8A0, &qword_25774F2C8);
  }

  sub_2574FD880(v23, v21, &qword_27F87B8A0, &qword_25774F2C8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_2574695E4(v23, &qword_27F87B8A0, &qword_25774F2C8);
    v26 = v21;
    return sub_2574695E4(v26, &qword_27F87B8A0, &qword_25774F2C8);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v35;
  sub_2574695E4(v23, &qword_27F87B8A0, &qword_25774F2C8);
  v29 = v33;
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
  v30 = v32;
  swift_beginAccess();
  sub_2574FD834(v29, a1 + v30, &qword_27F879D40, &qword_257744660);
  return swift_endAccess();
}

uint64_t sub_2574E6844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MILSpec_StateType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8A8, &unk_25774F2D0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  __swift_storeEnumTagSinglePayload(&v31 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  v32 = v24;
  sub_2574FD880(a1 + v24, v13, &qword_27F879D40, &qword_257744660);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v35 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    v31 = a1;
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v23, &qword_27F87B8A8, &unk_25774F2D0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
    }

    a1 = v31;
  }

  sub_2574FB49C(&qword_27F87B5D0, type metadata accessor for Proto_MILSpec_StateType, &unk_25774E6E0);
  v25 = v38;
  sub_2577433D4();
  if (v25)
  {
    v26 = v23;
    return sub_2574695E4(v26, &qword_27F87B8A8, &unk_25774F2D0);
  }

  sub_2574FD880(v23, v21, &qword_27F87B8A8, &unk_25774F2D0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_2574695E4(v23, &qword_27F87B8A8, &unk_25774F2D0);
    v26 = v21;
    return sub_2574695E4(v26, &qword_27F87B8A8, &unk_25774F2D0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v35;
  sub_2574695E4(v23, &qword_27F87B8A8, &unk_25774F2D0);
  v29 = v33;
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
  v30 = v32;
  swift_beginAccess();
  sub_2574FD834(v29, a1 + v30, &qword_27F879D40, &qword_257744660);
  return swift_endAccess();
}

uint64_t sub_2574E6DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v10, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v12);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2574E71C0(a1, a2, a3, a4);
        break;
      case 2u:
        sub_2574E73F4(a1, a2, a3, a4);
        break;
      case 3u:
        sub_2574E7628(a1, a2, a3, a4);
        break;
      case 4u:
        sub_2574E785C(a1, a2, a3, a4);
        break;
      default:
        sub_2574E6F90(a1, a2, a3, a4);
        break;
    }

    return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  return result;
}

uint64_t sub_2574E6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B610, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774E8C0);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorType);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_ListType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B5F0, type metadata accessor for Proto_MILSpec_ListType, &unk_25774E7D0);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_ListType);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E73F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TupleType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B600, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774E848);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TupleType);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_DictionaryType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B5E0, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774E758);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_DictionaryType);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574E785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_StateType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F879D40, &qword_257744660);
  v12 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D40, &qword_257744660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B5D0, type metadata accessor for Proto_MILSpec_StateType, &unk_25774E6E0);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_StateType);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
  }

  __break(1u);
  return result;
}

void sub_2574E7A90()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_125_0();
  v6 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_40_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v25 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_106_0();
  v15 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_161_0(v2 + v15, v1);
  v16 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v17 = *(v9 + 56);
  OUTLINED_FUNCTION_161_0(v1, v0);
  OUTLINED_FUNCTION_161_0(v4 + v16, v0 + v17);
  OUTLINED_FUNCTION_155(v0, 1, v6);
  if (!v18)
  {
    sub_2574FD880(v0, v25, &qword_27F879D40, &qword_257744660);
    OUTLINED_FUNCTION_155(v0 + v17, 1, v6);
    if (!v18)
    {
      sub_2574FD78C();
      OUTLINED_FUNCTION_131_0();
      sub_2574DDF3C();
      sub_2574FD734(v24, type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type);
      sub_2574695E4(v1, &qword_27F879D40, &qword_257744660);
      v20 = OUTLINED_FUNCTION_264();
      sub_2574FD734(v20, v21);
      v22 = OUTLINED_FUNCTION_205();
      sub_2574695E4(v22, v23, &qword_257744660);
      goto LABEL_10;
    }

    sub_2574695E4(v1, &qword_27F879D40, &qword_257744660);
    OUTLINED_FUNCTION_22_4();
    sub_2574FD734(v25, v19);
LABEL_9:
    sub_2574695E4(v0, &qword_27F879D38, &qword_25774F300);
    goto LABEL_10;
  }

  sub_2574695E4(v1, &qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_155(v0 + v17, 1, v6);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v0, &qword_27F879D40, &qword_257744660);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574E7E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B880, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774DF08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E7EBC(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E7F84(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);

  return sub_257743424();
}

uint64_t sub_2574E8044()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E85D8);
  __swift_project_value_buffer(v0, qword_27F8E85D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dataType";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dimensions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2574E8284()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574E8378(v3, v4);
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_257743324();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2574E83E0();
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_6_8();
        sub_2574E8434(v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

void sub_2574E83E0()
{
  OUTLINED_FUNCTION_165_0();
  v2 = OUTLINED_FUNCTION_108_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_131_0();
  v6 = sub_2574FB49C(v4, v5, v0);
  OUTLINED_FUNCTION_162_0(v1 + 24, v7, v6);
  OUTLINED_FUNCTION_166_0();
}

void sub_2574E8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_147_0();
  sub_257743184();
  v5 = OUTLINED_FUNCTION_125_0();
  type metadata accessor for Proto_MILSpec_Value(v5);
  OUTLINED_FUNCTION_43_1();
  sub_2574FB49C(v6, v4, &unk_25774E5F0);
  OUTLINED_FUNCTION_6_12();
  sub_2574FB49C(v7, v4, v8);
  sub_257743214();
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2574E84E8()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (sub_2574FD7E0(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743504(), !v1))
    {
      OUTLINED_FUNCTION_183_0();
      if (!v5 || (type metadata accessor for Proto_MILSpec_Dimension(0), sub_2574FB49C(&qword_27F87B5C0, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774E668), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
      {
        OUTLINED_FUNCTION_174_0();
        if (!v6 || (sub_257743184(), type metadata accessor for Proto_MILSpec_Value(0), OUTLINED_FUNCTION_42_1(), sub_2574FB49C(v7, v3, &unk_25774E5F0), OUTLINED_FUNCTION_6_12(), sub_2574FB49C(v8, v3, v9), OUTLINED_FUNCTION_176_0(), OUTLINED_FUNCTION_150_0(), OUTLINED_FUNCTION_9_5(), result = sub_257743434(), !v1))
        {
          type metadata accessor for Proto_MILSpec_TensorType(0);
          return OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2574E8694(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_1(a1);
  if (!sub_257476914(v3, *(v2 + 8), *v1, *(v1 + 8)))
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_182_0();
  sub_25747C000();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_173_0();
  sub_257476DC8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_MILSpec_TensorType(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_0_22();
  v8 = sub_2574FB49C(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2574E878C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8B0, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774DE18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E882C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B610, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774E8C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E88F4(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B610, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774E8C0);

  return sub_257743424();
}

void sub_2574E898C()
{
  OUTLINED_FUNCTION_102_0();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  while (1)
  {
    v11 = sub_257743234();
    if (v1 || (v12 & 1) != 0)
    {
      break;
    }

    if (v11 == 1)
    {
      sub_2574FA050(v10, v4, v8, v6, v3);
    }
  }

  OUTLINED_FUNCTION_103_0();
}

void sub_2574E8A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v4 || (type metadata accessor for Proto_MILSpec_ValueType(0), OUTLINED_FUNCTION_39_3(), sub_2574FB49C(v5, v6, &unk_25774E938), OUTLINED_FUNCTION_25_2(), !v3))
  {
    type metadata accessor for Proto_MILSpec_TupleType(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574E8B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8C0, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774DD68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574E8C08(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B600, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774E848);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574E8CD0(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B600, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774E848);

  return sub_257743424();
}

uint64_t sub_2574E8D90()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8608);
  __swift_project_value_buffer(v0, qword_27F8E8608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574E8F58()
{
  type metadata accessor for Proto_MILSpec_ListType._StorageClass(0);
  OUTLINED_FUNCTION_89_1();
  v0 = swift_allocObject();
  type metadata accessor for Proto_MILSpec_ValueType(0);
  v1 = OUTLINED_FUNCTION_17_4();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Proto_MILSpec_Dimension(0);
  v5 = OUTLINED_FUNCTION_17_4();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  qword_27F87B040 = v0;
  return result;
}

uint64_t sub_2574E8FC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  v10 = type metadata accessor for Proto_MILSpec_ValueType(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  v12 = type metadata accessor for Proto_MILSpec_Dimension(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_2574FD880(a1 + v13, v8, &qword_27F879E10, &qword_257744730);
  swift_beginAccess();
  sub_2574FD834(v8, v1 + v9, &qword_27F879E10, &qword_257744730);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  swift_beginAccess();
  sub_2574FD880(a1 + v14, v5, &qword_27F87B8D0, &qword_2577755A0);

  swift_beginAccess();
  sub_2574FD834(v5, v1 + v11, &qword_27F87B8D0, &qword_2577755A0);
  swift_endAccess();
  return v1;
}

void sub_2574E9210(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B098, type metadata accessor for Proto_MILSpec_ValueType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2574E9338(319, &qword_27F87B0A0, type metadata accessor for Proto_MILSpec_Dimension, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2574E9338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2574E93DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_2574E947C(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_2574ED6A0(a2);
    }
  }

  return result;
}

uint64_t sub_2574E947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_MILSpec_Dimension(0);
  sub_2574FB49C(&qword_27F87B5C0, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774E668);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2574E9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_111_0();
  v7(0);
  OUTLINED_FUNCTION_10_7();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

void sub_2574E95C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2574ED7C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type);
  if (!v4)
  {
    sub_2574E9624(a1, a2, a3, a4);
  }
}

uint64_t sub_2574E9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Dimension(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  swift_beginAccess();
  sub_2574FD880(a1 + v11, v7, &qword_27F87B8D0, &qword_2577755A0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87B8D0, &qword_2577755A0);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B5C0, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774E668);
  sub_257743574();
  return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Dimension);
}

void sub_2574E9844()
{
  OUTLINED_FUNCTION_31();
  v83 = v2;
  v3 = OUTLINED_FUNCTION_125_0();
  v81 = type metadata accessor for Proto_MILSpec_Dimension(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v76 = v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9A8, &unk_25774F350);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v82 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v77 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  v80 = &v75 - v12;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for Proto_MILSpec_ValueType(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v78 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v27 = v83;
  OUTLINED_FUNCTION_179_0();
  sub_2574FD880(v28, v29, v30, v31);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v32 = *(v17 + 56);
  OUTLINED_FUNCTION_179_0();
  sub_2574FD880(v33, v34, v35, v36);
  OUTLINED_FUNCTION_179_0();
  sub_2574FD880(v37, v38, v39, v40);
  OUTLINED_FUNCTION_42_0(v20);
  if (!v42)
  {
    v41 = v1;
    sub_2574FD880(v20, v25, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_42_0(&v20[v32]);
    if (!v42)
    {
      OUTLINED_FUNCTION_1_13();
      v44 = v78;
      sub_2574FD78C();
      v45 = *(v14 + 20);
      v46 = *(v25 + v45);
      v47 = *(v44 + v45);

      if (v46 == v47 || (, , sub_2574E7A90(), v49 = v48, , , (v49 & 1) != 0))
      {
        v50 = sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v51, v52, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_144_0();
        sub_257743644();
        OUTLINED_FUNCTION_23_5();
        sub_2574FD734(v44, v53);
        v54 = OUTLINED_FUNCTION_280();
        sub_2574695E4(v54, v55, &qword_257744730);
        v56 = OUTLINED_FUNCTION_222();
        sub_2574FD734(v56, v57);
        sub_2574695E4(v20, &qword_27F879E10, &qword_257744730);
        v1 = v41;
        if (v50)
        {
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_97_1();
        sub_2574FD734(v44, v72);
        v73 = OUTLINED_FUNCTION_322();
        sub_2574695E4(v73, v74, &qword_257744730);
        sub_2574FD734(v25, v46);
        sub_2574695E4(v20, &qword_27F879E10, &qword_257744730);
      }

LABEL_10:

      goto LABEL_23;
    }

    sub_2574695E4(v0, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v25, v43);
LABEL_9:
    sub_2574695E4(v20, &qword_27F879E18, &qword_257744738);
    goto LABEL_10;
  }

  sub_2574695E4(v0, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_42_0(&v20[v32]);
  if (!v42)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v20, &qword_27F879E10, &qword_257744730);
LABEL_14:
  v58 = v27;
  v59 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v60 = v1 + v59;
  v61 = v58;
  v62 = v80;
  OUTLINED_FUNCTION_171_0(v60, v80);
  v63 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v64 = *(v79 + 48);
  v65 = v82;
  OUTLINED_FUNCTION_171_0(v62, v82);
  OUTLINED_FUNCTION_171_0(v61 + v63, v65 + v64);
  v66 = v81;
  OUTLINED_FUNCTION_155(v65, 1, v81);
  if (!v42)
  {
    v67 = v77;
    sub_2574FD880(v65, v77, &qword_27F87B8D0, &qword_2577755A0);
    OUTLINED_FUNCTION_155(v65 + v64, 1, v66);
    if (!v68)
    {
      OUTLINED_FUNCTION_88_1();
      v69 = v76;
      sub_2574FD78C();
      sub_2574EF1B8();

      sub_2574FD734(v69, type metadata accessor for Proto_MILSpec_Dimension);
      sub_2574695E4(v62, &qword_27F87B8D0, &qword_2577755A0);
      sub_2574FD734(v67, type metadata accessor for Proto_MILSpec_Dimension);
      v70 = OUTLINED_FUNCTION_229();
      sub_2574695E4(v70, v71, &qword_2577755A0);
      goto LABEL_23;
    }

    sub_2574695E4(v62, &qword_27F87B8D0, &qword_2577755A0);
    sub_2574FD734(v67, type metadata accessor for Proto_MILSpec_Dimension);
LABEL_22:
    sub_2574695E4(v65, &qword_27F87B9A8, &unk_25774F350);
    goto LABEL_23;
  }

  sub_2574695E4(v62, &qword_27F87B8D0, &qword_2577755A0);
  OUTLINED_FUNCTION_155(v65 + v64, 1, v66);
  if (!v42)
  {
    goto LABEL_22;
  }

  sub_2574695E4(v65, &qword_27F87B8D0, &qword_2577755A0);
LABEL_23:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574EA010(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8C8, type metadata accessor for Proto_MILSpec_ListType, &unk_25774DCB8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EA0B0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B5F0, type metadata accessor for Proto_MILSpec_ListType, &unk_25774E7D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EA178(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B5F0, type metadata accessor for Proto_MILSpec_ListType, &unk_25774E7D0);

  return sub_257743424();
}

uint64_t sub_2574EA238()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8620);
  __swift_project_value_buffer(v0, qword_27F8E8620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keyType";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "valueType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574EA400()
{
  type metadata accessor for Proto_MILSpec_DictionaryType._StorageClass(0);
  OUTLINED_FUNCTION_89_1();
  v0 = swift_allocObject();
  v1 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_44();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  qword_27F87B048 = v0;
  return result;
}

uint64_t sub_2574EA47C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__keyType;
  v7 = type metadata accessor for Proto_MILSpec_ValueType(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__keyType;
  swift_beginAccess();
  sub_2574FD880(a1 + v9, v5, &qword_27F879E10, &qword_257744730);
  swift_beginAccess();
  sub_2574FD834(v5, v1 + v6, &qword_27F879E10, &qword_257744730);
  swift_endAccess();
  v10 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType;
  swift_beginAccess();
  sub_2574FD880(a1 + v10, v5, &qword_27F879E10, &qword_257744730);

  swift_beginAccess();
  sub_2574FD834(v5, v1 + v8, &qword_27F879E10, &qword_257744730);
  swift_endAccess();
  return v1;
}

uint64_t sub_2574EA644(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  sub_2574695E4(v4 + *a1, &qword_27F879E10, &qword_257744730);
  sub_2574695E4(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v8, v9);
}

void sub_2574EA70C(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B098, type metadata accessor for Proto_MILSpec_ValueType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2574EA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_165_0();
  v8 = v7;
  v23 = v9;
  v11 = v10;
  v12 = v5;
  v14 = v13;
  v16 = v15;
  v17 = OUTLINED_FUNCTION_125_0();
  v19 = *(v18(v17) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + v19);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v22 = OUTLINED_FUNCTION_71_0();
    v21 = v23(v22);
    *(v12 + v19) = v21;
  }

  v8(v21, v6, v16, v14);
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2574EA87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v7 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v8 = a2;
LABEL_7:
      sub_2574ED6A0(v8);
    }

    else if (result == 1)
    {
      v8 = a2;
      goto LABEL_7;
    }
  }
}

void sub_2574EA920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2574ED7C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__keyType);
  if (!v4)
  {
    sub_2574ED7C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType);
  }
}

void sub_2574EA9B4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v101 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  v95 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v97 = &v93[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v99 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  v14 = &v93[-v13];
  v15 = OUTLINED_FUNCTION_288();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v96 = v19;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v20);
  v100 = &v93[-v21];
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v23);
  v25 = &v93[-v24];
  v26 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__keyType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_163_0(v4 + v26, v25);
  v27 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__keyType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v98 = v9;
  v28 = *(v9 + 48);
  v29 = v101;
  OUTLINED_FUNCTION_163_0(v25, v14);
  v30 = v2 + v27;
  v31 = v2;
  OUTLINED_FUNCTION_163_0(v30, &v14[v28]);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v32, v33, v34);
  if (!v42)
  {
    sub_2574FD880(v14, v0, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_155(v39, v40, v41);
    if (!v42)
    {
      OUTLINED_FUNCTION_1_13();
      v47 = v97;
      sub_2574FD78C();
      v48 = *(v29 + 20);
      v49 = *(v0 + v48);
      v50 = *(v47 + v48);
      v38 = v4;

      if (v49 == v50 || (, , OUTLINED_FUNCTION_288(), sub_2574E7A90(), v52 = v51, , , (v52 & 1) != 0))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v53, v54, MEMORY[0x277D216D0]);
        v94 = sub_257743644();
        sub_2574FD734(v47, type metadata accessor for Proto_MILSpec_ValueType);
        OUTLINED_FUNCTION_120_0();
        sub_2574695E4(v55, v56, v57);
        v58 = OUTLINED_FUNCTION_229();
        sub_2574FD734(v58, v59);
        OUTLINED_FUNCTION_120_0();
        sub_2574695E4(v60, v61, v62);
        if (v94)
        {
          goto LABEL_15;
        }

LABEL_11:

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_97_1();
      sub_2574FD734(v47, v91);
      sub_2574695E4(v25, &qword_27F879E10, &qword_257744730);
      sub_2574FD734(v0, v49);
      v46 = v14;
      v44 = &qword_27F879E10;
      v45 = &qword_257744730;
LABEL_10:
      sub_2574695E4(v46, v44, v45);
      goto LABEL_11;
    }

    sub_2574695E4(v25, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v0, v43);
LABEL_9:
    v44 = &qword_27F879E18;
    v45 = &qword_257744738;
    v46 = v14;
    goto LABEL_10;
  }

  sub_2574695E4(v25, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v35, v36, v37);
  v38 = v4;
  if (!v42)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v14, &qword_27F879E10, &qword_257744730);
LABEL_15:
  v63 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v64 = v100;
  OUTLINED_FUNCTION_163_0(v38 + v63, v100);
  v65 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_MILSpec_DictionaryTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__valueType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v66 = v99;
  v67 = *(v98 + 48);
  OUTLINED_FUNCTION_163_0(v64, v99);
  OUTLINED_FUNCTION_163_0(v31 + v65, v67 + v66);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v68, v69, v70);
  if (!v42)
  {
    v74 = v96;
    sub_2574FD880(v66, v96, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_155(v75, v76, v77);
    if (!v78)
    {
      OUTLINED_FUNCTION_1_13();
      v83 = v95;
      sub_2574FD78C();
      if (*(v74 + *(v29 + 20)) == *(v83 + *(v29 + 20)) || (, , OUTLINED_FUNCTION_288(), sub_2574E7A90(), v85 = v84, , , (v85 & 1) != 0))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v86, v87, MEMORY[0x277D216D0]);
        sub_257743644();

        OUTLINED_FUNCTION_24_6();
        sub_2574FD734(v83, v88);
        sub_2574695E4(v100, &qword_27F879E10, &qword_257744730);
        sub_2574FD734(v74, v67);
        v89 = OUTLINED_FUNCTION_229();
        sub_2574695E4(v89, v90, &qword_257744730);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_24_6();
      sub_2574FD734(v83, v92);
      sub_2574695E4(v100, &qword_27F879E10, &qword_257744730);
      sub_2574FD734(v74, v67);
      v82 = v66;
      v80 = &qword_27F879E10;
      v81 = &qword_257744730;
      goto LABEL_24;
    }

    sub_2574695E4(v64, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v74, v79);
LABEL_23:
    v80 = &qword_27F879E18;
    v81 = &qword_257744738;
    v82 = v66;
LABEL_24:
    sub_2574695E4(v82, v80, v81);
    goto LABEL_25;
  }

  sub_2574695E4(v64, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v71, v72, v73);
  if (!v42)
  {
    goto LABEL_23;
  }

  sub_2574695E4(v66, &qword_27F879E10, &qword_257744730);
LABEL_25:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574EB1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8D8, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774DC08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EB25C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B5E0, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774E758);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EB324(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B5E0, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774E758);

  return sub_257743424();
}

uint64_t sub_2574EB438(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  a2(0);
  OUTLINED_FUNCTION_89_1();
  v7 = swift_allocObject();
  a4(0);
  OUTLINED_FUNCTION_44();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *a5 = v7;
  return result;
}

uint64_t sub_2574EB4A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  v15 = *a4;
  a5(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *a4;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_2574FD880(a1 + v20, v14, a2, a3);

  swift_beginAccess();
  sub_2574FD834(v14, v5 + v15, a2, a3);
  swift_endAccess();
  return v5;
}

uint64_t sub_2574EB5D0(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_2574695E4(v3 + *a1, a2, a3);
  v4 = *(*v3 + 48);
  v5 = *(*v3 + 52);

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

void sub_2574EB678()
{
  OUTLINED_FUNCTION_137_0();
  sub_2574E9338(319, v0, v1, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2574EB7B8(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(319);
              if (v8 <= 0x3F)
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

  return result;
}

void sub_2574EB9E0()
{
  OUTLINED_FUNCTION_137_0();
  sub_2574B0924(319, v0, v1);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_136_0();
    v3 = sub_2577431B4();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12), v13, v14);
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_2574EBC00(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_TensorValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_MILSpec_TupleValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_MILSpec_ListValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_MILSpec_DictionaryValue(319);
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

uint64_t sub_2574EBDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_2577431B4();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_17_5(result, v5, v6, v7, v8, v9, v10, v11, v12, *v13, *&v13[4], 0, v14, a4, v16);
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_18_3();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_2577431B4();
    v7 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1)
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_18_3();
  if (*(v4 + 84) == v1)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2574EC05C(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2574EC200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_2574EC2C4(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574E9338(319, &qword_27F87B290, type metadata accessor for Proto_MILSpec_Value, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574EC3E8(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B2B8, type metadata accessor for Proto_MILSpec_NamedValueType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574EC54C(319, &qword_27F87B2C0, type metadata accessor for Proto_MILSpec_Block);
    if (v2 <= 0x3F)
    {
      sub_2574EC54C(319, &qword_27F87B2C8, type metadata accessor for Proto_MILSpec_Value);
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

void sub_2574EC54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2577435E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2574EC5F8(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B2E0, type metadata accessor for Proto_MILSpec_Dimension, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574EC54C(319, &qword_27F87B2C8, type metadata accessor for Proto_MILSpec_Value);
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

void sub_2574EC8EC(uint64_t a1)
{
  sub_2574EC54C(319, &qword_27F87B340, type metadata accessor for Proto_MILSpec_Argument);
  if (v1 <= 0x3F)
  {
    sub_2574E9338(319, &qword_27F87B2B8, type metadata accessor for Proto_MILSpec_NamedValueType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2574E9338(319, &qword_27F87B348, type metadata accessor for Proto_MILSpec_Block, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2574EC54C(319, &qword_27F87B2C8, type metadata accessor for Proto_MILSpec_Value);
        if (v4 <= 0x3F)
        {
          sub_2577431B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2574ECAA8(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B360, type metadata accessor for Proto_MILSpec_Value.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_2574E9338(319, &qword_27F87B098, type metadata accessor for Proto_MILSpec_ValueType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_246Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_247Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v4 = OUTLINED_FUNCTION_48_1(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2574ECCA0(uint64_t a1)
{
  sub_2574E9338(319, &qword_27F87B2B8, type metadata accessor for Proto_MILSpec_NamedValueType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574B0924(319, &qword_27F87A680, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2574E9338(319, &qword_27F87B378, type metadata accessor for Proto_MILSpec_Operation, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2574EC54C(319, &qword_27F87B2C8, type metadata accessor for Proto_MILSpec_Value);
        if (v4 <= 0x3F)
        {
          sub_2577431B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_66Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_117_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_67Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2574ECF14()
{
  OUTLINED_FUNCTION_137_0();
  sub_2574E9338(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_136_0();
    v4 = sub_2577431B4();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13), v14, v15);
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_2574ECFB8(uint64_t a1)
{
  sub_2574EC54C(319, &qword_27F87B398, type metadata accessor for Proto_MILSpec_Function);
  if (v1 <= 0x3F)
  {
    sub_2574EC54C(319, &qword_27F87B2C8, type metadata accessor for Proto_MILSpec_Value);
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

uint64_t sub_2574ED0A4(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_TensorType(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_MILSpec_ListType(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_MILSpec_TupleType(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_MILSpec_DictionaryType(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_MILSpec_StateType(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2574ED17C(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574E9338(319, &qword_27F87B098, type metadata accessor for Proto_MILSpec_ValueType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_268Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_7_7(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void __swift_store_extra_inhabitant_index_269Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v5 + 84) == v4)
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v2 + *(v3 + 20)) = (v1 - 1);
  }
}

uint64_t sub_2574ED3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_2577431B4();
  if (v6 <= 0x3F)
  {
    v7 = OUTLINED_FUNCTION_136_0();
    result = a4(v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5(result, v8, v9, v10, v11, v12, v13, v14, v15, v16, SWORD2(v16), SBYTE6(v16), SHIBYTE(v16), v17, v18);
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

unint64_t sub_2574ED414()
{
  result = qword_27F87B3D0;
  if (!qword_27F87B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B3D0);
  }

  return result;
}

unint64_t sub_2574ED46C()
{
  result = qword_27F87B3D8;
  if (!qword_27F87B3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87B3E0, qword_25774C540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B3D8);
  }

  return result;
}

unint64_t sub_2574ED4D4()
{
  result = qword_27F87B3E8;
  if (!qword_27F87B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B3E8);
  }

  return result;
}

unint64_t sub_2574ED52C()
{
  result = qword_27F87B3F0;
  if (!qword_27F87B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B3F0);
  }

  return result;
}

void sub_2574ED580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_5_8();
  v4 = *(type metadata accessor for Proto_MILSpec_StateType(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_MILSpec_StateType._StorageClass(0);
    OUTLINED_FUNCTION_89_1();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_87_0();
    *(v3 + v4) = sub_2574EB4A4(v5, v6, v7, v8, v9);
  }

  v10 = OUTLINED_FUNCTION_5_10();
  sub_2574ED624(v10, v11, v12, v13);
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574ED624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574ED6A0(a2);
    }
  }

  return result;
}

uint64_t sub_2574ED6A0(uint64_t a1)
{
  OUTLINED_FUNCTION_147_0();
  swift_beginAccess();
  type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_39_3();
  sub_2574FB49C(v1, v2, &unk_25774E938);
  sub_2577433D4();
  return swift_endAccess();
}

void sub_2574ED758()
{
  OUTLINED_FUNCTION_111_0();
  type metadata accessor for Proto_MILSpec_StateType(0);
  OUTLINED_FUNCTION_10_7();
  sub_2574ED7C0(v2, v3, v4, v0, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_222();
    sub_257743194();
  }
}

void sub_2574ED7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_165_0();
  v26[1] = v6;
  v26[2] = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *v8;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_2574FD880(v10 + v19, v14, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_91_0();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_2574695E4(v14, &qword_27F879E10, &qword_257744730);
  }

  else
  {
    sub_2574FD78C();
    OUTLINED_FUNCTION_39_3();
    sub_2574FB49C(v23, v24, &unk_25774E938);
    sub_257743574();
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v18, v25);
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2574ED990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_0_0();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_277();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  sub_2574FB49C(v12, v13, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_55_0();
  return sub_257743644() & 1;
}

void sub_2574EDA64()
{
  OUTLINED_FUNCTION_31();
  v36 = v4;
  v5 = OUTLINED_FUNCTION_125_0();
  v6 = type metadata accessor for Proto_MILSpec_ValueType(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v35 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_40_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_106_0();
  v14 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_161_0(v3 + v14, v1);
  v15 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v16 = *(v9 + 56);
  OUTLINED_FUNCTION_161_0(v1, v0);
  OUTLINED_FUNCTION_161_0(v36 + v15, v0 + v16);
  OUTLINED_FUNCTION_42_0(v0);
  if (!v17)
  {
    sub_2574FD880(v0, v2, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_42_0(v0 + v16);
    if (!v17)
    {
      sub_2574FD78C();
      if (*(v2 + *(v6 + 20)) == *(v35 + *(v6 + 20)) || (, , sub_2574E7A90(), v23 = v22, , , (v23 & 1) != 0))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_22();
        sub_2574FB49C(v24, v25, MEMORY[0x277D216D0]);
        sub_257743644();
        OUTLINED_FUNCTION_23_5();
        sub_2574FD734(v35, v26);
        v27 = OUTLINED_FUNCTION_360();
        sub_2574695E4(v27, v28, &qword_257744730);
        v29 = OUTLINED_FUNCTION_264();
        sub_2574FD734(v29, v30);
        sub_2574695E4(v0, &qword_27F879E10, &qword_257744730);
        goto LABEL_14;
      }

      sub_2574FD734(v35, type metadata accessor for Proto_MILSpec_ValueType);
      v31 = OUTLINED_FUNCTION_360();
      sub_2574695E4(v31, v32, &qword_257744730);
      v33 = OUTLINED_FUNCTION_131_0();
      sub_2574FD734(v33, v34);
      v21 = v0;
      v19 = &qword_27F879E10;
      v20 = &qword_257744730;
      goto LABEL_10;
    }

    sub_2574695E4(v1, &qword_27F879E10, &qword_257744730);
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v2, v18);
LABEL_9:
    v19 = &qword_27F879E18;
    v20 = &qword_257744738;
    v21 = v0;
LABEL_10:
    sub_2574695E4(v21, v19, v20);
    goto LABEL_14;
  }

  sub_2574695E4(v1, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_42_0(v0 + v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v0, &qword_27F879E10, &qword_257744730);
LABEL_14:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574EDE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8E0, type metadata accessor for Proto_MILSpec_StateType, &unk_25774DB58);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EDF18(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B5D0, type metadata accessor for Proto_MILSpec_StateType, &unk_25774E6E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EDFE0(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B5D0, type metadata accessor for Proto_MILSpec_StateType, &unk_25774E6E0);

  return sub_257743424();
}

uint64_t sub_2574EE0A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8650);
  __swift_project_value_buffer(v0, qword_27F8E8650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "constant";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unknown";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574EE268()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2574EE7C4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2574EE2CC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574EE2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8F0, &qword_25774F2E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F879D28, &qword_257744648);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879D28, &qword_257744648);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87B8F0, &qword_25774F2E0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574FB49C(&qword_27F87B5A0, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension, &unk_25774D978);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B8F0, &qword_25774F2E0);
  }

  sub_2574FD880(v20, v18, &qword_27F87B8F0, &qword_25774F2E0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B8F0, &qword_25774F2E0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B8F0, &qword_25774F2E0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B8F0, &qword_25774F2E0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879D28, &qword_257744648);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574EE7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8F8, &qword_25774F2E8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F879D28, &qword_257744648);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879D28, &qword_257744648);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87B8F8, &qword_25774F2E8);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
    }
  }

  sub_2574FB49C(&qword_27F87B580, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension, &unk_25774D810);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B8F8, &qword_25774F2E8);
  }

  sub_2574FD880(v20, v18, &qword_27F87B8F8, &qword_25774F2E8);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B8F8, &qword_25774F2E8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B8F8, &qword_25774F2E8);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B8F8, &qword_25774F2E8);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879D28, &qword_257744648);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574EED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F879D28, &qword_257744648);
  v11 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D28, &qword_257744648);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B5A0, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension, &unk_25774D978);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574EEFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F879D28, &qword_257744648);
  v11 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879D28, &qword_257744648);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B580, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension, &unk_25774D810);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574EF450(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B8E8, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774DAA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EF4F0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B5C0, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774E668);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EF5B8(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B5C0, type metadata accessor for Proto_MILSpec_Dimension, &unk_25774E668);

  return sub_257743424();
}

uint64_t sub_2574EF638()
{
  result = MEMORY[0x259C64E90](0xD000000000000012, 0x800000025777B5A0);
  qword_27F8E8668 = 0xD000000000000017;
  qword_27F8E8670 = 0x800000025777B3D0;
  return result;
}

uint64_t sub_2574EF6C8()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v1))
  {
    type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
    return OUTLINED_FUNCTION_28_3();
  }

  return result;
}

uint64_t sub_2574EF728(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(v2);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  v5 = sub_2574FB49C(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_2574EF840(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B930, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension, &unk_25774D940);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EF8E0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B5A0, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension, &unk_25774D978);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EF9A8(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B5A0, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension, &unk_25774D978);

  return sub_257743424();
}

uint64_t sub_2574EFA28()
{
  result = MEMORY[0x259C64E90](0xD000000000000011, 0x800000025777B5C0);
  qword_27F8E8690 = 0xD000000000000017;
  *algn_27F8E8698 = 0x800000025777B3D0;
  return result;
}

uint64_t sub_2574EFAB4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_257743274();
    }
  }

  return result;
}

uint64_t sub_2574EFB00()
{
  OUTLINED_FUNCTION_2_7();
  if (*v0 != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
  {
    type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
    return OUTLINED_FUNCTION_28_3();
  }

  return result;
}

uint64_t sub_2574EFB68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(v3);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  v6 = sub_2574FB49C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2574EFC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B938, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension, &unk_25774D7D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574EFCE0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B580, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension, &unk_25774D810);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574EFDA8(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B580, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension, &unk_25774D810);

  return sub_257743424();
}

uint64_t sub_2574EFE28()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E86B8);
  __swift_project_value_buffer(v0, qword_27F8E86B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "docString";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "immediateValue";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "blobFileValue";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574F006C()
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
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743394();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574F010C(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574F01C0(v3, v4, v5, v6);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574F06C4(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574F010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_Value(0);
  type metadata accessor for Proto_MILSpec_ValueType(0);
  sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);
  return sub_2577433D4();
}

uint64_t sub_2574F01C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B908, &qword_25774F2F0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
  v28 = a1;
  sub_2574FD880(a1 + v27, v10, &qword_27F879EA8, &unk_2577447D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879EA8, &unk_2577447D0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87B908, &qword_25774F2F0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574FB49C(&qword_27F87B558, type metadata accessor for Proto_MILSpec_Value.ImmediateValue, &unk_25774ECF8);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B908, &qword_25774F2F0);
  }

  sub_2574FD880(v20, v18, &qword_27F87B908, &qword_25774F2F0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B908, &qword_25774F2F0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B908, &qword_25774F2F0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87B908, &qword_25774F2F0);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F879EA8, &unk_2577447D0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574F06C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B910, &qword_25774F2F8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
  v28 = a1;
  sub_2574FD880(a1 + v27, v10, &qword_27F879EA8, &unk_2577447D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879EA8, &unk_2577447D0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87B910, &qword_25774F2F8);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B540, type metadata accessor for Proto_MILSpec_Value.BlobFileValue, &unk_25774EC80);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B910, &qword_25774F2F8);
  }

  sub_2574FD880(v20, v18, &qword_27F87B910, &qword_25774F2F8);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B910, &qword_25774F2F8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B910, &qword_25774F2F8);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87B910, &qword_25774F2F8);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F879EA8, &unk_2577447D0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

void sub_2574F0BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_102_0();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_2_7();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &a9 - v24;
  OUTLINED_FUNCTION_1_6();
  if (!v26 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v18))
  {
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_15_1();
    sub_2574F0D10(v27, v28, v29, v30);
    if (!v18)
    {
      v31 = type metadata accessor for Proto_MILSpec_Value(0);
      sub_2574FD880(v19 + *(v31 + 20), v25, &qword_27F879EA8, &unk_2577447D0);
      v32 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
      if (__swift_getEnumTagSinglePayload(v25, 1, v32) != 1)
      {
        OUTLINED_FUNCTION_311();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_280();
          OUTLINED_FUNCTION_15_1();
          sub_2574F1110(v33, v34, v35, v36);
        }

        else
        {
          OUTLINED_FUNCTION_280();
          OUTLINED_FUNCTION_15_1();
          sub_2574F0EF0(v37, v38, v39, v40);
        }

        OUTLINED_FUNCTION_10_11();
        sub_2574FD734(v25, v41);
      }

      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574F0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_ValueType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FD880(a1 + *(v11 + 28), v7, &qword_27F879E10, &qword_257744730);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879E10, &qword_257744730);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B628, type metadata accessor for Proto_MILSpec_ValueType, &unk_25774E938);
  sub_257743574();
  return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_ValueType);
}

uint64_t sub_2574F0EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FD880(a1 + *(v11 + 20), v7, &qword_27F879EA8, &unk_2577447D0);
  v12 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879EA8, &unk_2577447D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B558, type metadata accessor for Proto_MILSpec_Value.ImmediateValue, &unk_25774ECF8);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Value.ImmediateValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FD880(a1 + *(v11 + 20), v7, &qword_27F879EA8, &unk_2577447D0);
  v12 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879EA8, &unk_2577447D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B540, type metadata accessor for Proto_MILSpec_Value.BlobFileValue, &unk_25774EC80);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Value.BlobFileValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v67 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB0, &unk_25774F360);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75_0();
  v14 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v27 = *v4;
  v28 = v4[1];
  v29 = *v2;
  v30 = v2[1];
  v68 = v2;
  v31 = v27 == v29 && v28 == v30;
  if (!v31 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_29;
  }

  v63 = v8;
  v64 = v12;
  v65 = type metadata accessor for Proto_MILSpec_Value(0);
  v32 = *(v65 + 28);
  v33 = *(v23 + 48);
  sub_2574FD880(v32 + v4, v26, &qword_27F879E10, &qword_257744730);
  sub_2574FD880(v32 + v68, &v26[v33], &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_42_0(v26);
  if (v31)
  {
    OUTLINED_FUNCTION_42_0(&v26[v33]);
    if (v31)
    {
      sub_2574695E4(v26, &qword_27F879E10, &qword_257744730);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_2574FD880(v26, v22, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_42_0(&v26[v33]);
  if (v34)
  {
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v22, v35);
LABEL_14:
    v36 = &qword_27F879E18;
    v37 = &qword_257744738;
LABEL_15:
    v38 = v26;
LABEL_28:
    sub_2574695E4(v38, v36, v37);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_1_13();
  sub_2574FD78C();
  if (*&v22[*(v14 + 20)] != *(v18 + *(v14 + 20)))
  {

    sub_2574E7A90();
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_6();
      sub_2574FD734(v18, v62);
      sub_2574FD734(v22, v32);
      v36 = &qword_27F879E10;
      v37 = &qword_257744730;
      goto LABEL_15;
    }
  }

  v41 = sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  sub_2574FB49C(v42, v43, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_322();
  sub_257743644();
  OUTLINED_FUNCTION_23_5();
  sub_2574FD734(v18, v44);
  v45 = OUTLINED_FUNCTION_280();
  sub_2574FD734(v45, v46);
  sub_2574695E4(v26, &qword_27F879E10, &qword_257744730);
  if ((v41 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v47 = *(v65 + 20);
  v48 = *(v66 + 48);
  OUTLINED_FUNCTION_120_0();
  sub_2574FD880(v49, v50, v51, &unk_2577447D0);
  OUTLINED_FUNCTION_171_0(v68 + v47, v0 + v48);
  v52 = v67;
  OUTLINED_FUNCTION_155(v0, 1, v67);
  if (v31)
  {
    OUTLINED_FUNCTION_155(v0 + v48, 1, v52);
    if (v31)
    {
      sub_2574695E4(v0, &qword_27F879EA8, &unk_2577447D0);
LABEL_32:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_22();
      sub_2574FB49C(v60, v61, MEMORY[0x277D216D0]);
      v56 = sub_257743644();
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v53 = v64;
  sub_2574FD880(v0, v64, &qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_155(v0 + v48, 1, v52);
  if (v54)
  {
    OUTLINED_FUNCTION_10_11();
    sub_2574FD734(v53, v55);
LABEL_27:
    v36 = &qword_27F879EB0;
    v37 = &unk_25774F360;
    v38 = v0;
    goto LABEL_28;
  }

  v57 = v63;
  sub_2574FD78C();
  sub_2574DEF88();
  v59 = v58;
  sub_2574FD734(v57, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
  sub_2574FD734(v53, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
  sub_2574695E4(v0, &qword_27F879EA8, &unk_2577447D0);
  if (v59)
  {
    goto LABEL_32;
  }

LABEL_29:
  v56 = 0;
LABEL_30:
  OUTLINED_FUNCTION_65_0(v56);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574F18E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B900, type metadata accessor for Proto_MILSpec_Value, &unk_25774D6E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F1988(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F1A50(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);

  return sub_257743424();
}

uint64_t sub_2574F1B00()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E86E0);
  __swift_project_value_buffer(v0, qword_27F8E86E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tensor";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tuple";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "list";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dictionary";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574F1D40()
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
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574F1DE0(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_2574F22D8(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574F27D0(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_2574F2CC8(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574F1DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B7F0, &qword_25774F250);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B190, &qword_25774C170);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87B7F0, &qword_25774F250);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue, &unk_25774EC08);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B7F0, &qword_25774F250);
  }

  sub_2574FD880(v20, v18, &qword_27F87B7F0, &qword_25774F250);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B7F0, &qword_25774F250);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B7F0, &qword_25774F250);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B7F0, &qword_25774F250);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B190, &qword_25774C170);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TupleValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B7F8, &qword_25774F258);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B190, &qword_25774C170);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87B7F8, &qword_25774F258);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue, &unk_25774EB90);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B7F8, &qword_25774F258);
  }

  sub_2574FD880(v20, v18, &qword_27F87B7F8, &qword_25774F258);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B7F8, &qword_25774F258);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B7F8, &qword_25774F258);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B7F8, &qword_25774F258);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B190, &qword_25774C170);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F27D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_ListValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B800, &qword_25774F260);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B190, &qword_25774C170);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v20, &qword_27F87B800, &qword_25774F260);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue, &unk_25774EB18);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B800, &qword_25774F260);
  }

  sub_2574FD880(v20, v18, &qword_27F87B800, &qword_25774F260);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B800, &qword_25774F260);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B800, &qword_25774F260);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B800, &qword_25774F260);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B190, &qword_25774C170);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F2CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_DictionaryValue(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B808, &qword_25774F268);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B190, &qword_25774C170);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v20, &qword_27F87B808, &qword_25774F268);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue, &unk_25774EAA0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B808, &qword_25774F268);
  }

  sub_2574FD880(v20, v18, &qword_27F87B808, &qword_25774F268);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B808, &qword_25774F268);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B808, &qword_25774F268);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B808, &qword_25774F268);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B190, &qword_25774C170);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F32C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B190, &qword_25774C170);
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue, &unk_25774EC08);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F34D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TupleValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B190, &qword_25774C170);
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue, &unk_25774EB90);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TupleValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F36EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_ListValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B190, &qword_25774C170);
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue, &unk_25774EB18);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_ListValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_DictionaryValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B190, &qword_25774C170);
  v11 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B190, &qword_25774C170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue, &unk_25774EAA0);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_DictionaryValue);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F3DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B7E8, type metadata accessor for Proto_MILSpec_Value.ImmediateValue, &unk_25774D638);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F3E58(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B558, type metadata accessor for Proto_MILSpec_Value.ImmediateValue, &unk_25774ECF8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F3F20(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B558, type metadata accessor for Proto_MILSpec_Value.ImmediateValue, &unk_25774ECF8);

  return sub_257743424();
}

uint64_t sub_2574F3FD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD000000000000013;
  *a5 = 0x800000025777B230;
  return result;
}

uint64_t sub_2574F403C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8708);
  __swift_project_value_buffer(v0, qword_27F8E8708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fileName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574F4204()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433B4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2574F426C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v0))
    {
      type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574F42F0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_1(a1) == *v1 && *(v2 + 8) == v1[1];
  if (!v3 && (sub_257743994() & 1) == 0 || *(v2 + 16) != v1[2])
  {
    return 0;
  }

  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  v6 = sub_2574FB49C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2574F43F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B810, type metadata accessor for Proto_MILSpec_Value.BlobFileValue, &unk_25774D548);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F4490(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B540, type metadata accessor for Proto_MILSpec_Value.BlobFileValue, &unk_25774EC80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F4558(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B540, type metadata accessor for Proto_MILSpec_Value.BlobFileValue, &unk_25774EC80);

  return sub_257743424();
}

uint64_t sub_2574F45D8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8720);
  __swift_project_value_buffer(v0, qword_27F8E8720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257748720;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "floats";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ints";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "BOOLs";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "strings";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "longInts";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "doubles";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "bytes";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  return sub_257743594();
}

uint64_t sub_2574F48C8()
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
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574F4998(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_6_10();
        sub_2574F4E90(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_2574F5388(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_2574F5880(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574F5D78(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_6_10();
        sub_2574F6270(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_6_10();
        sub_2574F6768(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574F4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B820, &qword_25774F270);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87B820, &qword_25774F270);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats, &unk_25774D368);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B820, &qword_25774F270);
  }

  sub_2574FD880(v20, v18, &qword_27F87B820, &qword_25774F270);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B820, &qword_25774F270);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B820, &qword_25774F270);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B820, &qword_25774F270);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F4E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B828, &qword_25774F278);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87B828, &qword_25774F278);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts, &unk_25774D098);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B828, &qword_25774F278);
  }

  sub_2574FD880(v20, v18, &qword_27F87B828, &qword_25774F278);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B828, &qword_25774F278);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B828, &qword_25774F278);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B828, &qword_25774F278);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F5388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B830, &qword_25774F280);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v20, &qword_27F87B830, &qword_25774F280);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools, &unk_25774CDC8);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B830, &qword_25774F280);
  }

  sub_2574FD880(v20, v18, &qword_27F87B830, &qword_25774F280);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B830, &qword_25774F280);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B830, &qword_25774F280);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B830, &qword_25774F280);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F5880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B838, &qword_25774F288);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v20, &qword_27F87B838, &qword_25774F288);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings, &unk_25774CC60);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B838, &qword_25774F288);
  }

  sub_2574FD880(v20, v18, &qword_27F87B838, &qword_25774F288);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B838, &qword_25774F288);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B838, &qword_25774F288);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B838, &qword_25774F288);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B840, &qword_25774F290);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v20, &qword_27F87B840, &qword_25774F290);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts, &unk_25774CF30);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B840, &qword_25774F290);
  }

  sub_2574FD880(v20, v18, &qword_27F87B840, &qword_25774F290);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B840, &qword_25774F290);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B840, &qword_25774F290);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B840, &qword_25774F290);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B848, &qword_25774F298);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v20, &qword_27F87B848, &qword_25774F298);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles, &unk_25774D200);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B848, &qword_25774F298);
  }

  sub_2574FD880(v20, v18, &qword_27F87B848, &qword_25774F298);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B848, &qword_25774F298);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B848, &qword_25774F298);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B848, &qword_25774F298);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B850, &unk_25774F2A0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_2574FD880(a1, v10, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v20, &qword_27F87B850, &unk_25774F2A0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v14, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes, &unk_25774CAF8);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87B850, &unk_25774F2A0);
  }

  sub_2574FD880(v20, v18, &qword_27F87B850, &unk_25774F2A0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87B850, &unk_25774F2A0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87B850, &unk_25774F2A0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87B850, &unk_25774F2A0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574F6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats, &unk_25774D368);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F6F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts, &unk_25774D098);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools, &unk_25774CDC8);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F73C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings, &unk_25774CC60);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F75D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts, &unk_25774CF30);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles, &unk_25774D200);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v7, &qword_27F87B0E0, &unk_25774C0C0);
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes, &unk_25774CAF8);
      sub_257743574();
      return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);
    }

    result = sub_2574FD734(v7, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F7EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B818, type metadata accessor for Proto_MILSpec_TensorValue, &unk_25774D498);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F7F4C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue, &unk_25774EC08);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8014(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue, &unk_25774EC08);

  return sub_257743424();
}

uint64_t sub_2574F8194(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B960, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats, &unk_25774D330);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8234(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats, &unk_25774D368);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F82FC(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats, &unk_25774D368);

  return sub_257743424();
}

uint64_t sub_2574F83BC()
{
  result = MEMORY[0x259C64E90](0xD000000000000010, 0x800000025777B660);
  qword_27F8E8760 = 0xD000000000000019;
  *algn_27F8E8768 = 0x800000025777B250;
  return result;
}

void sub_2574F844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_188_0();
  v7 = v6;
  OUTLINED_FUNCTION_2_7();
  if (!*(*v4 + 16) || (OUTLINED_FUNCTION_12_8(), v8(), !v5))
  {
    v7(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B968, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles, &unk_25774D1C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8628(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles, &unk_25774D200);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F86F0(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles, &unk_25774D200);

  return sub_257743424();
}

uint64_t sub_2574F88B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B970, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts, &unk_25774D060);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8950(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts, &unk_25774D098);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8A18(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts, &unk_25774D098);

  return sub_257743424();
}

uint64_t sub_2574F8AD8()
{
  result = MEMORY[0x259C64E90](0xD000000000000011, 0x800000025777B680);
  qword_27F8E87B0 = 0xD000000000000019;
  *algn_27F8E87B8 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F8C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B978, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts, &unk_25774CEF8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8CCC(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts, &unk_25774CF30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8D94(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts, &unk_25774CF30);

  return sub_257743424();
}

uint64_t sub_2574F8F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B980, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools, &unk_25774CD90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8FF4(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools, &unk_25774CDC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F90BC(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools, &unk_25774CDC8);

  return sub_257743424();
}

uint64_t sub_2574F917C()
{
  result = MEMORY[0x259C64E90](0xD000000000000010, 0x800000025777B6A0);
  qword_27F8E8800 = 0xD000000000000019;
  *algn_27F8E8808 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F920C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_264();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_2574F9340(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B988, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings, &unk_25774CC28);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F93E0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings, &unk_25774CC60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F94A8(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings, &unk_25774CC60);

  return sub_257743424();
}

uint64_t sub_2574F9588(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x259C64E90](0x657461657065522ELL, a2);
  *a3 = 0xD000000000000019;
  *a4 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F9614()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_2577432D4();
    }
  }

  return result;
}

uint64_t sub_2574F9660()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_3_10();
      result = sub_2577434D4();
      if (!v1)
      {
LABEL_8:
        type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
        return OUTLINED_FUNCTION_28_3();
      }

      return result;
  }
}

uint64_t sub_2574F9714(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_1(a1);
  if ((MEMORY[0x259C648D0](v3, *(v2 + 8), *v1, v1[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  v6 = sub_2574FB49C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2574F97F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B990, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes, &unk_25774CAC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9890(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes, &unk_25774CAF8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9958(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes, &unk_25774CAF8);

  return sub_257743424();
}

void sub_2574F99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v4 || (type metadata accessor for Proto_MILSpec_Value(0), OUTLINED_FUNCTION_86_1(), sub_2574FB49C(v5, v6, &unk_25774E5F0), OUTLINED_FUNCTION_25_2(), !v3))
  {
    type metadata accessor for Proto_MILSpec_TupleValue(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F9AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B858, type metadata accessor for Proto_MILSpec_TupleValue, &unk_25774C9D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9B80(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue, &unk_25774EB90);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9C48(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue, &unk_25774EB90);

  return sub_257743424();
}

void sub_2574F9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v4 || (type metadata accessor for Proto_MILSpec_Value(0), OUTLINED_FUNCTION_86_1(), sub_2574FB49C(v5, v6, &unk_25774E5F0), OUTLINED_FUNCTION_25_2(), !v3))
  {
    type metadata accessor for Proto_MILSpec_ListValue(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F9E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B860, type metadata accessor for Proto_MILSpec_ListValue, &unk_25774C920);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9EB0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue, &unk_25774EB18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9F78(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue, &unk_25774EB18);

  return sub_257743424();
}

void sub_2574FA050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_165_0();
  v7 = OUTLINED_FUNCTION_108_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_131_0();
  v11 = sub_2574FB49C(v9, v10, v5);
  OUTLINED_FUNCTION_162_0(v6, v12, v11);
  OUTLINED_FUNCTION_166_0();
}

void sub_2574FA0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v4 || (type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0), sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair, &unk_25774C780), OUTLINED_FUNCTION_25_2(), !v3))
  {
    type metadata accessor for Proto_MILSpec_DictionaryValue(0);
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574FA13C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_54_1(a1);
  if ((v7(v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  v10 = sub_2574FB49C(v8, v9, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v10) & 1;
}

uint64_t sub_2574FA288(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B868, type metadata accessor for Proto_MILSpec_DictionaryValue, &unk_25774C870);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574FA328(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue, &unk_25774EAA0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574FA3F0(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue, &unk_25774EAA0);

  return sub_257743424();
}

uint64_t sub_2574FA4B0()
{
  result = MEMORY[0x259C64E90](0x756C615679654B2ELL, 0xED00007269615065);
  qword_27F8E8898 = 0xD00000000000001DLL;
  qword_27F8E88A0 = 0x800000025777B2B0;
  return result;
}

uint64_t sub_2574FA528()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E88A8);
  __swift_project_value_buffer(v0, qword_27F8E88A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574FA6F0()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_8();
      sub_2574FA808(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574FA754(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574FA754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  return sub_2577433D4();
}

uint64_t sub_2574FA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  return sub_2577433D4();
}

uint64_t sub_2574FA8BC()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_10_7();
  result = sub_2574FA918(v2, v3, v4, v0);
  if (!v1)
  {
    OUTLINED_FUNCTION_10_7();
    sub_2574FAAF8(v6, v7, v8, v0);
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574FA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  sub_2574FD880(a1 + *(v11 + 20), v7, &qword_27F879EB8, &unk_2577447E0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  sub_257743574();
  return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Value);
}

uint64_t sub_2574FAAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  sub_2574FD880(a1 + *(v11 + 24), v7, &qword_27F879EB8, &unk_2577447E0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value, &unk_25774E5F0);
  sub_257743574();
  return sub_2574FD734(v10, type metadata accessor for Proto_MILSpec_Value);
}

void sub_2574FACD8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v39 = v7;
  v8 = OUTLINED_FUNCTION_205();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v38 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EC0, &qword_25774F340);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v41 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_134_0();
  v40 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  v20 = *(v40 + 20);
  v21 = *(v16 + 48);
  v42 = v4;
  OUTLINED_FUNCTION_191_0(v4 + v20, v0);
  v43 = v2;
  OUTLINED_FUNCTION_191_0(v2 + v20, v0 + v21);
  OUTLINED_FUNCTION_155(v0, 1, v5);
  if (v26)
  {
    OUTLINED_FUNCTION_155(v0 + v21, 1, v5);
    if (!v26)
    {
      goto LABEL_16;
    }

    sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_311();
    sub_2574FD880(v22, v23, v24, v25);
    OUTLINED_FUNCTION_155(v0 + v21, 1, v5);
    if (v26)
    {
LABEL_15:
      OUTLINED_FUNCTION_83_0();
      sub_2574FD734(v15, v32);
LABEL_16:
      sub_2574695E4(v0, &qword_27F879EC0, &qword_25774F340);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_41_3();
    v27 = v39;
    sub_2574FD78C();
    _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
    OUTLINED_FUNCTION_80_0();
    sub_2574FD734(v27, v28);
    sub_2574FD734(v15, &unk_2577447E0);
    sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
    if ((&qword_27F879EB8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v0 = v41;
  v29 = *(v40 + 24);
  v30 = *(v16 + 48);
  OUTLINED_FUNCTION_191_0(v42 + v29, v41);
  OUTLINED_FUNCTION_191_0(v43 + v29, v0 + v30);
  OUTLINED_FUNCTION_155(v0, 1, v5);
  if (v26)
  {
    OUTLINED_FUNCTION_155(v0 + v30, 1, v5);
    if (v26)
    {
      sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_22();
      sub_2574FB49C(v36, v37, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_264();
      v33 = sub_257743644();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v15 = v38;
  sub_2574FD880(v0, v38, &qword_27F879EB8, &unk_2577447E0);
  OUTLINED_FUNCTION_155(v0 + v30, 1, v5);
  if (v31)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_41_3();
  v34 = v39;
  sub_2574FD78C();
  _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
  OUTLINED_FUNCTION_80_0();
  sub_2574FD734(v34, v35);
  sub_2574FD734(v15, &unk_2577447E0);
  sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
  if (&qword_27F879EB8)
  {
    goto LABEL_20;
  }

LABEL_17:
  v33 = 0;
LABEL_18:
  OUTLINED_FUNCTION_65_0(v33);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574FB084(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574FB49C(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574FB138()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_205();

  return v1(v0);
}

uint64_t sub_2574FB194(uint64_t a1)
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_2574FB224(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B998, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair, &unk_25774C748);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574FB2C4(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair, &unk_25774C780);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574FB38C(uint64_t a1, uint64_t a2)
{
  sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair, &unk_25774C780);

  return sub_257743424();
}

uint64_t sub_2574FB49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574FD734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574FD78C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

unint64_t sub_2574FD7E0()
{
  result = qword_27F87B8B8;
  if (!qword_27F87B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B8B8);
  }

  return result;
}

uint64_t sub_2574FD834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_184_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v4;
}

uint64_t sub_2574FD880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_184_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v4;
}

uint64_t sub_2574FD8CC()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_257743564();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_47_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2574FD880(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_51_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2574FD880(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_2574FD880(v0, v1 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_257743434();
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return sub_2574FD78C();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_160_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_162_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2577433C4();
}

uint64_t OUTLINED_FUNCTION_163_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_164_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return sub_2574FD78C();
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2574FD834(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_170_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_171_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_184_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_185_0(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_189_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_190_0(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_192_0(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_193_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2574FE460(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-v5 - 8];
  v7 = *(type metadata accessor for Proto_Model(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    v9 = v10;
    *(v2 + v7) = v10;
  }

  OUTLINED_FUNCTION_38_1();
  sub_25751BA6C();
  v11 = type metadata accessor for Proto_ModelDescription(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  OUTLINED_FUNCTION_70_1(v9 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, v14);
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2574FE574()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_Model(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    v5 = v6;
    *(v1 + v3) = v6;
  }

  OUTLINED_FUNCTION_70_1(v5 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, v8);
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2574FE60C@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_Model(0) + 20);
  if (qword_281538010 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_281538018;
}

uint64_t sub_2574FE688@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for Proto_Pipeline(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE6C8(void (*a1)(void))
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  a1(0);
  type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2574FE724@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Proto_FeatureDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_2574FE788@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = sub_2577435D4();
  type metadata accessor for Proto_Metadata(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE7EC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  v2 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v3;
  v1[7] = 0;
  v1[8] = v3;
  type metadata accessor for Proto_FunctionDescription(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE838@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = v2;
  type metadata accessor for Proto_ModelDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_Metadata(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_2574FE8BC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  *(v1 + 16) = xmmword_257745740;
  type metadata accessor for Proto_SerializedModel(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574FE8FC()
{
  OUTLINED_FUNCTION_31();
  v355 = v1;
  v356 = v0;
  v2 = type metadata accessor for Proto_SerializedModel(0);
  v3 = OUTLINED_FUNCTION_6_13(v2, &v329);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_38_0(v4);
  v6 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(v5);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v9 = OUTLINED_FUNCTION_38_0(v8);
  v10 = type metadata accessor for Proto_CoreMLModels_WordEmbedding(v9);
  v11 = OUTLINED_FUNCTION_6_13(v10, &v326);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = type metadata accessor for Proto_CoreMLModels_Gazetteer(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v17 = OUTLINED_FUNCTION_38_0(v16);
  v18 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(v17);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v21 = OUTLINED_FUNCTION_38_0(v20);
  v22 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(v21);
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v25 = OUTLINED_FUNCTION_38_0(v24);
  v26 = type metadata accessor for Proto_CoreMLModels_WordTagger(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v29 = OUTLINED_FUNCTION_38_0(v28);
  v30 = type metadata accessor for Proto_CoreMLModels_TextClassifier(v29);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v33 = OUTLINED_FUNCTION_38_0(v32);
  v34 = type metadata accessor for Proto_Identity(v33);
  v35 = OUTLINED_FUNCTION_13(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  v37 = OUTLINED_FUNCTION_38_0(v36);
  v38 = type metadata accessor for Proto_NonMaximumSuppression(v37);
  v39 = OUTLINED_FUNCTION_13(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v41 = OUTLINED_FUNCTION_38_0(v40);
  v42 = type metadata accessor for Proto_ArrayFeatureExtractor(v41);
  v43 = OUTLINED_FUNCTION_6_13(v42, &v333);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v45 = OUTLINED_FUNCTION_38_0(v44);
  v46 = type metadata accessor for Proto_Normalizer(v45);
  v47 = OUTLINED_FUNCTION_6_13(v46, &v330);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  v49 = OUTLINED_FUNCTION_38_0(v48);
  v50 = type metadata accessor for Proto_CategoricalMapping(v49);
  v51 = OUTLINED_FUNCTION_13(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_1();
  v53 = OUTLINED_FUNCTION_38_0(v52);
  v54 = type metadata accessor for Proto_Scaler(v53);
  v55 = OUTLINED_FUNCTION_6_13(v54, &v328);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_1();
  v57 = OUTLINED_FUNCTION_38_0(v56);
  v58 = type metadata accessor for Proto_DictVectorizer(v57);
  v59 = OUTLINED_FUNCTION_13(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  v61 = OUTLINED_FUNCTION_38_0(v60);
  v62 = type metadata accessor for Proto_FeatureVectorizer(v61);
  v63 = OUTLINED_FUNCTION_6_13(v62, &v332);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_1();
  v65 = OUTLINED_FUNCTION_38_0(v64);
  v66 = type metadata accessor for Proto_Imputer(v65);
  v67 = OUTLINED_FUNCTION_13(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_1();
  v69 = OUTLINED_FUNCTION_38_0(v68);
  v70 = type metadata accessor for Proto_OneHotEncoder(v69);
  v71 = OUTLINED_FUNCTION_13(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  v73 = OUTLINED_FUNCTION_38_0(v72);
  v74 = type metadata accessor for Proto_ClassConfidenceThresholding(v73);
  v75 = OUTLINED_FUNCTION_6_13(v74, &v331);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_12_1();
  v77 = OUTLINED_FUNCTION_38_0(v76);
  v78 = type metadata accessor for Proto_LinkedModel(v77);
  v79 = OUTLINED_FUNCTION_13(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_1();
  v81 = OUTLINED_FUNCTION_38_0(v80);
  v82 = type metadata accessor for Proto_CustomModel(v81);
  v83 = OUTLINED_FUNCTION_13(v82);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_1();
  v85 = OUTLINED_FUNCTION_38_0(v84);
  v86 = type metadata accessor for Proto_Odie_Library(v85);
  v87 = OUTLINED_FUNCTION_6_13(v86, &v334);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_12_1();
  v89 = OUTLINED_FUNCTION_38_0(v88);
  v90 = type metadata accessor for Proto_MILSpec_Program(v89);
  v91 = OUTLINED_FUNCTION_13(v90);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_12_1();
  v93 = OUTLINED_FUNCTION_38_0(v92);
  v94 = type metadata accessor for Proto_ItemSimilarityRecommender(v93);
  v95 = OUTLINED_FUNCTION_13(v94);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_1();
  v97 = OUTLINED_FUNCTION_38_0(v96);
  v98 = type metadata accessor for Proto_NeuralNetwork(v97);
  v99 = OUTLINED_FUNCTION_13(v98);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_1();
  v101 = OUTLINED_FUNCTION_38_0(v100);
  v102 = type metadata accessor for Proto_KNearestNeighborsClassifier(v101);
  v103 = OUTLINED_FUNCTION_13(v102);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_12_1();
  v105 = OUTLINED_FUNCTION_38_0(v104);
  v106 = type metadata accessor for Proto_NeuralNetworkClassifier(v105);
  v107 = OUTLINED_FUNCTION_13(v106);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  v109 = OUTLINED_FUNCTION_38_0(v108);
  v110 = type metadata accessor for Proto_TreeEnsembleClassifier(v109);
  v111 = OUTLINED_FUNCTION_13(v110);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_12_1();
  v113 = OUTLINED_FUNCTION_38_0(v112);
  v114 = type metadata accessor for Proto_SupportVectorClassifier(v113);
  v115 = OUTLINED_FUNCTION_13(v114);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_12_1();
  v117 = OUTLINED_FUNCTION_38_0(v116);
  v118 = type metadata accessor for Proto_GLMClassifier(v117);
  v119 = OUTLINED_FUNCTION_13(v118);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_12_1();
  v121 = OUTLINED_FUNCTION_38_0(v120);
  v122 = type metadata accessor for Proto_BayesianProbitRegressor(v121);
  v123 = OUTLINED_FUNCTION_13(v122);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_12_1();
  v125 = OUTLINED_FUNCTION_38_0(v124);
  v126 = type metadata accessor for Proto_NeuralNetworkRegressor(v125);
  v127 = OUTLINED_FUNCTION_13(v126);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  v129 = OUTLINED_FUNCTION_38_0(v128);
  v130 = type metadata accessor for Proto_TreeEnsembleRegressor(v129);
  v131 = OUTLINED_FUNCTION_13(v130);
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12_1();
  v133 = OUTLINED_FUNCTION_38_0(v132);
  v134 = type metadata accessor for Proto_SupportVectorRegressor(v133);
  v135 = OUTLINED_FUNCTION_13(v134);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_12_1();
  v137 = OUTLINED_FUNCTION_38_0(v136);
  v138 = type metadata accessor for Proto_GLMRegressor(v137);
  v139 = OUTLINED_FUNCTION_6_13(v138, &v325);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  v141 = OUTLINED_FUNCTION_38_0(v140);
  v142 = type metadata accessor for Proto_Pipeline(v141);
  v143 = OUTLINED_FUNCTION_6_13(v142, &v327);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_12_1();
  v145 = OUTLINED_FUNCTION_38_0(v144);
  v146 = type metadata accessor for Proto_PipelineRegressor(v145);
  v147 = OUTLINED_FUNCTION_13(v146);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_12_1();
  v149 = OUTLINED_FUNCTION_38_0(v148);
  v150 = type metadata accessor for Proto_PipelineClassifier(v149);
  v151 = OUTLINED_FUNCTION_13(v150);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_12_1();
  v153 = OUTLINED_FUNCTION_38_0(v152);
  v354 = type metadata accessor for Proto_Model.OneOf_Type(v153);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_11();
  v353 = (v155 - v156);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_167();
  v351 = v158;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_167();
  v352 = v160;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_167();
  v349 = v162;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_167();
  v348 = v164;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_167();
  v346 = v166;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_167();
  v343 = v168;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_167();
  v342 = v170;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_167();
  v345 = v172;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_167();
  v341 = v174;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_167();
  v347 = v176;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_167();
  v350 = v178;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_167();
  v339 = v180;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_167();
  v344 = v182;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_167();
  v336 = v184;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_167();
  v340 = v186;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_167();
  v338 = v190;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_167();
  v337 = v194;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v203 = MEMORY[0x28223BE20](v202);
  v205 = v324 - v204;
  v206 = MEMORY[0x28223BE20](v203);
  v208 = v324 - v207;
  v209 = MEMORY[0x28223BE20](v206);
  v211 = v324 - v210;
  v212 = MEMORY[0x28223BE20](v209);
  v214 = (v324 - v213);
  v215 = MEMORY[0x28223BE20](v212);
  v217 = v324 - v216;
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_167();
  v220 = v219;
  OUTLINED_FUNCTION_158();
  v222 = MEMORY[0x28223BE20](v221);
  v224 = v324 - v223;
  MEMORY[0x28223BE20](v222);
  v226 = v324 - v225;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCC8, &qword_257750388);
  OUTLINED_FUNCTION_13(v227);
  OUTLINED_FUNCTION_29();
  v229 = MEMORY[0x28223BE20](v228);
  v231 = v324 - v230;
  v232 = *(v229 + 56);
  sub_25751BAC4(v356, v324 - v230);
  v356 = v232;
  sub_25751BAC4(v355, &v231[v232]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25751BAC4(v231, v224);
      if (OUTLINED_FUNCTION_21_6() != 1)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      sub_257501828();
      sub_25751BA18();
      goto LABEL_138;
    case 2u:
      sub_25751BAC4(v231, v220);
      if (OUTLINED_FUNCTION_21_6() != 2)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      OUTLINED_FUNCTION_53_0();
      sub_257482184();
      if (v262 & 1) != 0 && (sub_257479C78(v220[1], v220[1]))
      {
        goto LABEL_56;
      }

      goto LABEL_137;
    case 3u:
      v270 = v335;
      sub_25751BAC4(v231, v335);
      if (OUTLINED_FUNCTION_21_6() != 3)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v271 = OUTLINED_FUNCTION_53_0();
      sub_257480000(v271);
      if ((v272 & 1) != 0 && (sub_257479D04(*(v270 + 8), v220[1]) & 1) != 0 && sub_257487360(*(v270 + 16), *(v270 + 24), v220[2]))
      {
        goto LABEL_20;
      }

      goto LABEL_137;
    case 4u:
      sub_25751BAC4(v231, v217);
      if (OUTLINED_FUNCTION_21_6() != 4)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      _s20MLModelSpecification35SupportVectorRegressorConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 5u:
      sub_25751BAC4(v231, v214);
      if (OUTLINED_FUNCTION_21_6() != 5)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      _s20MLModelSpecification34TreeEnsembleRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v214, v220);
      sub_25751BA18();
      goto LABEL_138;
    case 6u:
      sub_25751BAC4(v231, v211);
      if (OUTLINED_FUNCTION_21_6() != 6)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      _s20MLModelSpecification22NeuralNetworkRegressorV2eeoiySbAC_ACtFZ_0(v211, v214);
      sub_25751BA18();
      goto LABEL_138;
    case 7u:
      sub_25751BAC4(v231, v208);
      if (OUTLINED_FUNCTION_21_6() == 7)
      {
        OUTLINED_FUNCTION_23_6();
        OUTLINED_FUNCTION_51_2();
        _s20MLModelSpecification36BayesianProbitRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v208, v214);
        sub_25751BA18();
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_66_0();
LABEL_128:
      sub_25751BA18();
      sub_2574695E4(v231, &qword_27F87BCC8, &qword_257750388);
      goto LABEL_129;
    case 8u:
      sub_25751BAC4(v231, v205);
      if (OUTLINED_FUNCTION_21_6() != 8)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      _s20MLModelSpecification29LinearClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      sub_25751BA18();
      goto LABEL_138;
    case 9u:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v255, v256);
      if (OUTLINED_FUNCTION_21_6() != 9)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification36SupportVectorClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xAu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v293, v294);
      if (OUTLINED_FUNCTION_21_6() != 10)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v295 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification35TreeEnsembleClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v295, v296);
      goto LABEL_137;
    case 0xBu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v251, v252);
      if (OUTLINED_FUNCTION_21_6() != 11)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification23NeuralNetworkClassifierV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xCu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v253, v254);
      if (OUTLINED_FUNCTION_21_6() != 12)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification29NearestNeighborsConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xDu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v287, v288);
      if (OUTLINED_FUNCTION_21_6() != 13)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v289 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification13NeuralNetworkV2eeoiySbAC_ACtFZ_0(v289, v290);
      goto LABEL_137;
    case 0xEu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v247, v248);
      if (OUTLINED_FUNCTION_21_6() != 14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v249 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification38ItemSimilarityRecommenderConfigurationV2eeoiySbAC_ACtFZ_0(v249, v250);
      goto LABEL_137;
    case 0xFu:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v266, v267);
      if (OUTLINED_FUNCTION_21_6() != 15)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v268 = OUTLINED_FUNCTION_173();
      sub_2574E0FAC(v268, v269);
      goto LABEL_137;
    case 0x10u:
      v242 = v337;
      sub_25751BAC4(v231, v337);
      if (OUTLINED_FUNCTION_21_6() != 16)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v243 = *v242 == *v220 && v242[1] == v220[1];
      if (v243 || (sub_257743994() & 1) != 0)
      {
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_0_23();
        v246 = sub_25751B040(v244, v245, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_20_4(v246);
        OUTLINED_FUNCTION_42_2();
      }

      else
      {
        OUTLINED_FUNCTION_42_2();
      }

      goto LABEL_138;
    case 0x11u:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v275, v276);
      if (OUTLINED_FUNCTION_21_6() != 17)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v277 = OUTLINED_FUNCTION_173();
      sub_2574AEAC0(v277, v278);
      goto LABEL_137;
    case 0x12u:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v291, v292);
      if (OUTLINED_FUNCTION_21_6() != 18)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification24LinkedModelConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0x13u:
      sub_25751BAC4(v231, v338);
      if (OUTLINED_FUNCTION_21_6() != 19)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v303 = OUTLINED_FUNCTION_53_0();
      sub_257479510(v303, v304, v305, v306, v307, v308, v309, v310, v324[0], v324[1], v324[2], v324[3], v324[4], v324[5], v324[6], v324[7], v324[8], v324[9]);
      if (v311)
      {
        goto LABEL_94;
      }

      goto LABEL_137;
    case 0x14u:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v279, v280);
      if (OUTLINED_FUNCTION_21_6() != 20)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v281 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification26OneHotEncoderConfigurationV2eeoiySbAC_ACtFZ_0(v281, v282);
      goto LABEL_137;
    case 0x15u:
      OUTLINED_FUNCTION_180();
      sub_25751BAC4(v283, v284);
      if (OUTLINED_FUNCTION_21_6() != 21)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v285 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification20ImputerConfigurationV2eeoiySbAC_ACtFZ_0(v285, v286);
      goto LABEL_137;
    case 0x16u:
      sub_25751BAC4(v231, v340);
      if (OUTLINED_FUNCTION_21_6() != 22)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      OUTLINED_FUNCTION_53_0();
      sub_257479344();
      if (v299)
      {
        goto LABEL_94;
      }

      goto LABEL_137;
    case 0x17u:
      sub_25751BAC4(v231, v336);
      if (OUTLINED_FUNCTION_21_6() != 23)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v312 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification33DictionaryVectorizerConfigurationV2eeoiySbAC_ACtFZ_0(v312, v313);
      goto LABEL_137;
    case 0x18u:
      v259 = v344;
      sub_25751BAC4(v231, v344);
      if (OUTLINED_FUNCTION_21_6() != 24)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v260 = OUTLINED_FUNCTION_53_0();
      if (sub_257479D04(v260, v261) & 1) != 0 && (sub_257479D04(*(v259 + 8), v220[1]))
      {
        goto LABEL_56;
      }

      goto LABEL_137;
    case 0x19u:
      sub_25751BAC4(v231, v339);
      if (OUTLINED_FUNCTION_21_6() != 25)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v257 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification31CategoricalMappingConfigurationV2eeoiySbAC_ACtFZ_0(v257, v258);
      goto LABEL_137;
    case 0x1Au:
      v318 = v350;
      sub_25751BAC4(v231, v350);
      if (OUTLINED_FUNCTION_21_6() != 26)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v319 = *v318;
      v320 = *v220;
      if (*(v220 + 8) == 1)
      {
        if (v320)
        {
          if (v320 == 1)
          {
            if (v319 != 1)
            {
              goto LABEL_143;
            }
          }

          else if (v319 != 2)
          {
            goto LABEL_143;
          }

LABEL_140:
          OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_0_23();
          v323 = sub_25751B040(v321, v322, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_20_4(v323);
          OUTLINED_FUNCTION_43_2();
          goto LABEL_138;
        }

        if (!v319)
        {
          goto LABEL_140;
        }
      }

      else if (v319 == v320)
      {
        goto LABEL_140;
      }

LABEL_143:
      OUTLINED_FUNCTION_43_2();
LABEL_138:
      sub_25751BA18();
      OUTLINED_FUNCTION_11_9();
LABEL_129:
      OUTLINED_FUNCTION_35();
      return;
    case 0x1Bu:
      sub_25751BAC4(v231, v347);
      if (OUTLINED_FUNCTION_21_6() != 27)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      OUTLINED_FUNCTION_53_0();
      if (sub_257487374())
      {
LABEL_94:
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_0_23();
        v302 = sub_25751B040(v300, v301, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_20_4(v302);
      }

      goto LABEL_137;
    case 0x1Cu:
      sub_25751BAC4(v231, v341);
      if (OUTLINED_FUNCTION_21_6() != 28)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v314 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification33NonMaximumSuppressorConfigurationV2eeoiySbAC_ACtFZ_0(v314, v315);
      goto LABEL_137;
    case 0x1Du:
      sub_25751BAC4(v231, v345);
      if (OUTLINED_FUNCTION_21_6() != 29)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_23();
      sub_25751B040(v316, v317, MEMORY[0x277D216D0]);
      sub_257743644();
      goto LABEL_137;
    case 0x1Eu:
      sub_25751BAC4(v231, v342);
      if (OUTLINED_FUNCTION_21_6() != 30)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v297 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification27TextClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v297, v298);
      goto LABEL_137;
    case 0x1Fu:
      sub_25751BAC4(v231, v343);
      if (OUTLINED_FUNCTION_21_6() != 31)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v273 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification23WordTaggerConfigurationV2eeoiySbAC_ACtFZ_0(v273, v274);
      goto LABEL_137;
    case 0x20u:
      sub_25751BAC4(v231, v346);
      if (OUTLINED_FUNCTION_21_6() != 32)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      sub_25763033C();
      goto LABEL_137;
    case 0x21u:
      sub_25751BAC4(v231, v348);
      if (OUTLINED_FUNCTION_21_6() != 33)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      sub_257618F3C();
      goto LABEL_137;
    case 0x22u:
      sub_25751BAC4(v231, v349);
      if (OUTLINED_FUNCTION_21_6() != 34)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      v240 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification22GazetteerConfigurationV2eeoiySbAC_ACtFZ_0(v240, v241);
      goto LABEL_137;
    case 0x23u:
      v235 = v352;
      sub_25751BAC4(v231, v352);
      if (OUTLINED_FUNCTION_21_6() != 35)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      if (*v235 == *v220)
      {
        v236 = *(v235 + 8) == v220[1] && *(v235 + 16) == v220[2];
        if (v236 || (sub_257743994()) && (MEMORY[0x259C648D0](*(v235 + 24), *(v235 + 32), v220[3], v220[4]))
        {
LABEL_20:
          sub_2577431B4();
          OUTLINED_FUNCTION_0_23();
          v239 = sub_25751B040(v237, v238, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_20_4(v239);
        }
      }

      goto LABEL_137;
    case 0x24u:
      sub_25751BAC4(v231, v351);
      if (OUTLINED_FUNCTION_21_6() != 36)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_173();
      sub_2574A6564();
      goto LABEL_137;
    case 0x25u:
      v233 = v353;
      sub_25751BAC4(v231, v353);
      if (OUTLINED_FUNCTION_21_6() != 37)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      v234 = *v233 == *v220 && v233[1] == v220[1];
      if (v234 || (sub_257743994()) && (MEMORY[0x259C648D0](v233[2], v233[3], v220[2], v220[3]))
      {
LABEL_56:
        OUTLINED_FUNCTION_61_1();
        OUTLINED_FUNCTION_0_23();
        v265 = sub_25751B040(v263, v264, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_20_4(v265);
      }

LABEL_137:
      sub_25751BA18();
      goto LABEL_138;
    default:
      sub_25751BAC4(v231, v226);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_180();
      sub_25751BA6C();
      sub_257501828();
      sub_25751BA18();
      OUTLINED_FUNCTION_205();
      goto LABEL_138;
  }
}

uint64_t sub_257500C64()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743344();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_257504104(v3, v4, v5, v6, v7, &qword_281537FF0, v8, v9);
    }
  }

  return result;
}

void sub_257500D1C()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (type metadata accessor for Proto_Model(0), sub_25751B040(&qword_281537FF0, type metadata accessor for Proto_Model, &unk_2577500FC), v4 = OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(v4), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (OUTLINED_FUNCTION_11_6(), sub_257743514(), !v0))
    {
      type metadata accessor for Proto_Pipeline(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257500DEC()
{
  OUTLINED_FUNCTION_267();
  sub_257482184();
  if ((v2 & 1) == 0 || (sub_257479C78(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_Pipeline(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  v5 = sub_25751B040(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_257500ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC80, type metadata accessor for Proto_Pipeline, &unk_25774FDF4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257500F78(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline, &unk_25774FF94);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257501040(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline, &unk_25774FF94);

  return sub_257743424();
}

uint64_t sub_257501184(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC88, type metadata accessor for Proto_PipelineClassifier, &unk_25774FD04);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257501224(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier, &unk_25774FF1C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575012EC(uint64_t a1, uint64_t a2)
{
  sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier, &unk_25774FF1C);

  return sub_257743424();
}

uint64_t sub_2575013A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2577442B0;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "pipeline";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  sub_257743584();
  OUTLINED_FUNCTION_4();
  (*(v9 + 104))(v7, v8);
  return sub_257743594();
}

void sub_257501504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v5 = sub_257743234();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (v5 == 1)
    {
      sub_25750157C();
    }
  }
}

void sub_25750157C()
{
  OUTLINED_FUNCTION_188_0();
  v0 = OUTLINED_FUNCTION_27_5();
  v1(v0);
  type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_37_3();
  sub_25751B040(v2, v3, &unk_25774FF94);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257501600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_7();
  result = sub_257501654(v5, v6, v7, a3, v8);
  if (!v3)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257501654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v19[3] = a4;
  v19[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = a5(0);
  sub_257487308(a1 + *(v12 + 20));
  OUTLINED_FUNCTION_65_1();
  if (__swift_getEnumTagSinglePayload(v13, v14, v15) == 1)
  {
    return sub_2574695E4(v10, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_25751BA6C();
  OUTLINED_FUNCTION_37_3();
  sub_25751B040(v17, v18, &unk_25774FF94);
  sub_257743574();
  OUTLINED_FUNCTION_66_0();
  return sub_25751BA18();
}

void sub_257501828()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v30 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCD0, &qword_257750398) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = *(v1(0) + 20);
  v18 = *(v13 + 56);
  OUTLINED_FUNCTION_62_0(v5 + v17);
  OUTLINED_FUNCTION_62_0(v3 + v17);
  OUTLINED_FUNCTION_155(v16, 1, v6);
  if (!v21)
  {
    sub_257487308(v16);
    OUTLINED_FUNCTION_155(&v16[v18], 1, v6);
    if (!v21)
    {
      v24 = v30;
      sub_25751BA6C();
      sub_257482184();
      if (v25 & 1) != 0 && (sub_257479C78(*(v12 + 1), *(v24 + 8)))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v26, v27, MEMORY[0x277D216D0]);
        v28 = sub_257743644();
        sub_25751BA18();
        OUTLINED_FUNCTION_280();
        sub_25751BA18();
        sub_2574695E4(v16, &qword_27F87B9B0, &qword_257770B80);
        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }

      sub_25751BA18();
      sub_25751BA18();
      v22 = &qword_27F87B9B0;
      v23 = &qword_257770B80;
LABEL_16:
      sub_2574695E4(v16, v22, v23);
      goto LABEL_17;
    }

    sub_25751BA18();
LABEL_10:
    v22 = &qword_27F87BCD0;
    v23 = &qword_257750398;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_155(&v16[v18], 1, v6);
  if (!v21)
  {
    goto LABEL_10;
  }

  sub_2574695E4(v16, &qword_27F87B9B0, &qword_257770B80);
LABEL_6:
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v19, v20, MEMORY[0x277D216D0]);
  sub_257743644();
LABEL_17:
  OUTLINED_FUNCTION_35();
}