uint64_t sub_2576E6204()
{

  do
  {
    while (1)
    {
      v0 = sub_2577436D4();
      if (!v1)
      {

        sub_2577436D4();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_2577436D4();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_257743994();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_2576E6348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for MLProgram.Value.Representation(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v14 = swift_allocBox();
  v25 = a1;
  v23 = a2;
  v24 = a3 & 1;

  MLProgram.ValueType.ListParameters.init(type:length:)();

  sub_2576E431C(v15, v13);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  v16 = type metadata accessor for Proto_MILSpec_Value(0);
  v17 = *(v16 + 20);
  v18 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a4 + v17, 1, 1, v18);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(v16 + 28);
  v20 = type metadata accessor for Proto_MILSpec_ValueType(0);
  __swift_storeEnumTagSinglePayload(a4 + v19, 1, 1, v20);
  v23 = v14 | 0x2000000000000000;
  MLProgram.Value.type.setter();
  sub_2576E79A8(v13, v10, type metadata accessor for MLProgram.Value.Representation);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  MLProgram.Value.representation.setter(v10);
  return sub_2576E7950(v13, type metadata accessor for MLProgram.Value.Representation);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Model.makeClassifier(classLabels:probabilityName:outputLabelName:outputProbabilityName:)(Swift::OpaquePointer classLabels, Swift::String probabilityName, Swift::String outputLabelName, Swift::String outputProbabilityName)
{
  rawValue = classLabels._rawValue;
  object = outputProbabilityName._object;
  countAndFlagsBits = outputProbabilityName._countAndFlagsBits;
  v109 = outputLabelName;
  v108 = probabilityName;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  v101 = &v94 - v9;
  v96 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v97 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v94 - v14;
  v104 = type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v103 = v17 - v16;
  v102 = type metadata accessor for FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = (v20 - v19);
  v22 = type metadata accessor for FeatureDescription(0);
  v95 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_11();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v94 - v27);
  v29 = type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v100 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v94 - v34;
  v36 = type metadata accessor for MLProgram(0);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  v107 = v4;
  Model.kind.getter();
  v99 = v29;
  if (swift_getEnumCaseMultiPayload() != 31)
  {
    OUTLINED_FUNCTION_3_63();
    sub_2576E7950(v35, v43);
    sub_2576E6D44();
    swift_allocError();
    *v44 = xmmword_257774CB0;
    swift_willThrow();
    return;
  }

  sub_2576E7A08(v35, v40, type metadata accessor for MLProgram);
  v41 = v106;
  sub_2576E48A0(rawValue, v108._countAndFlagsBits, v108._object, v109._countAndFlagsBits, v109._object, countAndFlagsBits, object);
  if (v41)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2576E7950(v40, v42);
    return;
  }

  v106 = v40;

  v45 = v107;
  Model.predictedFeatureName.setter();

  v94 = countAndFlagsBits;
  rawValue = object;
  Model.predictedProbabilitiesName.setter();
  v46 = v108._object;

  Model.outputs.getter();
  v110 = v47;
  v48 = sub_2576E7134(&v110, v108._countAndFlagsBits, v46);
  v108._object = 0;
  v49 = *(v110 + 16);
  if (v49 < v48)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2576E7538(v48, v49);
  Model.outputs.setter();
  v108._countAndFlagsBits = type metadata accessor for FeatureType.StringParameters(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v21 = 0;
  swift_storeEnumTagMultiPayload();
  v28[2] = 0;
  v28[3] = 0xE000000000000000;
  countAndFlagsBits = type metadata accessor for Proto_FeatureDescription(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v50 = *(countAndFlagsBits + 28);
  v51 = v104;
  __swift_storeEnumTagSinglePayload(v28 + v50, 1, 1, v104);
  v52 = v109._object;
  *v28 = v109._countAndFlagsBits;
  v28[1] = v52;

  v53 = v103;
  sub_25768E090();
  OUTLINED_FUNCTION_6_51();
  sub_2574695E4(v28 + v50, &qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_5_48();
  sub_2576E7A08(v53, v28 + v50, v54);
  __swift_storeEnumTagSinglePayload(v28 + v50, 0, 1, v51);
  v28[2] = 0;
  v28[3] = 0xE000000000000000;
  Model.outputs.getter();
  v45 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    sub_25746A0C8(0, *(v45 + 16) + 1, 1, v45);
    v45 = v90;
  }

  v56 = v98;
  v57 = v95;
  v59 = *(v45 + 16);
  v58 = *(v45 + 24);
  if (v59 >= v58 >> 1)
  {
    sub_25746A0C8(v58 > 1, v59 + 1, 1, v45);
    v45 = v91;
  }

  *(v45 + 16) = v59 + 1;
  v109._object = ((*(v57 + 80) + 32) & ~*(v57 + 80));
  OUTLINED_FUNCTION_2_61();
  sub_2576E7A08(v28, v60, v61);
  Model.outputs.setter();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v56 = 0;
  swift_storeEnumTagMultiPayload();
  v62 = &v21[*(type metadata accessor for FeatureType.DictionaryParameters(0) + 20)];
  v63 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v63);
  type metadata accessor for Proto_DictionaryFeatureType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v21 = 0;
  v64 = v97;
  sub_2576E79A8(v56, v97, type metadata accessor for FeatureType.DictionaryParameters.KeyType);
  FeatureType.DictionaryParameters.keyType.setter(v64);
  sub_2576E7950(v56, type metadata accessor for FeatureType.DictionaryParameters.KeyType);
  swift_storeEnumTagMultiPayload();
  v25[2] = 0;
  v25[3] = 0xE000000000000000;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v65 = *(countAndFlagsBits + 28);
  v66 = v104;
  __swift_storeEnumTagSinglePayload(v25 + v65, 1, 1, v104);
  v67 = rawValue;
  *v25 = v94;
  v25[1] = v67;

  v68 = v103;
  sub_25768E090();
  OUTLINED_FUNCTION_6_51();
  sub_2574695E4(v25 + v65, &qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_5_48();
  sub_2576E7A08(v68, v25 + v65, v69);
  __swift_storeEnumTagSinglePayload(v25 + v65, 0, 1, v66);
  v25[2] = 0;
  v25[3] = 0xE000000000000000;
  Model.outputs.getter();
  v71 = v70;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25746A0C8(0, *(v71 + 16) + 1, 1, v71);
    v71 = v92;
  }

  v73 = v100;
  v72 = v101;
  v75 = *(v71 + 16);
  v74 = *(v71 + 24);
  if (v75 >= v74 >> 1)
  {
    sub_25746A0C8(v74 > 1, v75 + 1, 1, v71);
    v71 = v93;
  }

  *(v71 + 16) = v75 + 1;
  OUTLINED_FUNCTION_2_61();
  sub_2576E7A08(v25, v76, v77);
  Model.outputs.setter();
  v78 = v106;
  sub_2576E79A8(v106, v73, type metadata accessor for MLProgram);
  v79 = swift_storeEnumTagMultiPayload();
  sub_25746EEC4(v79, v80, v81, v82, v83, v84, v85, v86, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, rawValue);
  v87 = type metadata accessor for Proto_Model.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v87);
  sub_2574FE574();
  OUTLINED_FUNCTION_3_63();
  sub_2576E7950(v73, v88);
  OUTLINED_FUNCTION_4_53();
  sub_2576E7950(v78, v89);
}

unint64_t sub_2576E6D44()
{
  result = qword_27F8814A0;
  if (!qword_27F8814A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814A0);
  }

  return result;
}

void static Package.makeClassifier(contentsOf:classLabels:probabilityName:outputLabelName:outputProbabilityName:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v39._countAndFlagsBits = a7;
  v39._object = a8;
  v38._countAndFlagsBits = a5;
  v38._object = a6;
  v37._countAndFlagsBits = a3;
  v37._object = a4;
  v40 = a2;
  v10 = type metadata accessor for Model(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = sub_257743094();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v26 = type metadata accessor for Package(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  (*(v16 + 16))(v25, a1, v15);
  Package.init(url:)();
  if (!v8)
  {
    v31._rawValue = v40;
    Package.rootModelURL.getter();
    v32 = sub_2577430C4();
    Model.init(serializedData:)(v32, v33, v14);
    v34 = v23;
    v35 = *(v16 + 8);
    v35(v34, v15);
    Model.makeClassifier(classLabels:probabilityName:outputLabelName:outputProbabilityName:)(v31, v37, v38, v39);
    if (!v36)
    {
      Package.setRootModel(_:)();
      v35(v19, v15);
    }

    sub_2576E7950(v14, type metadata accessor for Model);
    sub_2576E7950(v30, type metadata accessor for Package);
  }
}

unint64_t MakeClassifierError.errorDescription.getter()
{
  v1 = 0xD000000000000025;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000029;
    }

    else
    {
      v3 = *v0;
      sub_257743834();
      MEMORY[0x259C64E90](0xD000000000000036, 0x8000000257781820);
      MEMORY[0x259C64E90](v3, v2);
      MEMORY[0x259C64E90](46, 0xE100000000000000);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_2576E7134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeatureDescription(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v37 - v15);
  v17 = *a1;

  result = sub_2576E46F0(v17, a2, a3);
  if (v3)
  {
  }

  v39 = v11;
  v40 = a3;
  v43 = a2;
  if (v19)
  {
    v20 = *(v17 + 16);

    return v20;
  }

  v37 = 0;
  v38 = a1;
  v41 = result;
  v21 = result + 1;
  v22 = v40;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v42 = v8;
  while (1)
  {
    v23 = *(v17 + 16);
    if (v21 == v23)
    {

      return v41;
    }

    if (v21 >= v23)
    {
      break;
    }

    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = v17 + v24;
    v26 = *(v8 + 72);
    v27 = v26 * v21;
    sub_2576E79A8(v17 + v24 + v26 * v21, v16, type metadata accessor for FeatureDescription);
    if (*v16 == v43 && v16[1] == v22)
    {
      result = sub_2576E7950(v16, type metadata accessor for FeatureDescription);
      goto LABEL_16;
    }

    v29 = sub_257743994();
    result = sub_2576E7950(v16, type metadata accessor for FeatureDescription);
    if (v29)
    {
      v22 = v40;
LABEL_16:
      v8 = v42;
      goto LABEL_27;
    }

    v30 = v41;
    if (v21 == v41)
    {
      v22 = v40;
    }

    else
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *(v17 + 16);
      if (v41 >= v31)
      {
        goto LABEL_31;
      }

      v32 = v26 * v41;
      result = sub_2576E79A8(v25 + v32, v14, type metadata accessor for FeatureDescription);
      if (v21 >= v31)
      {
        goto LABEL_32;
      }

      sub_2576E79A8(v25 + v27, v39, type metadata accessor for FeatureDescription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A6C4(v17, v33, v34, v35);
        v17 = v36;
      }

      v22 = v40;
      result = sub_2576E7764(v39, v17 + v24 + v32);
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_2576E7764(v14, v17 + v24 + v27);
      *v38 = v17;
      v30 = v41;
    }

    v8 = v42;
    v41 = v30 + 1;
LABEL_27:
    ++v21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2576E745C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25763E954(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_257483384((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2576E7538(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25763E96C(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for FeatureDescription(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_2574833C4(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_20MLModelSpecification19MakeClassifierErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2576E7684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2576E76D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2576E7734(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2576E7764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2576E77C8()
{
  result = qword_27F8814B0;
  if (!qword_27F8814B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8814A8, &unk_257774DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814B0);
  }

  return result;
}

unint64_t sub_2576E782C()
{
  result = qword_27F8814B8;
  if (!qword_27F8814B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814B8);
  }

  return result;
}

uint64_t sub_2576E7880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576E78F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_2576E7950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576E79A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576E7A08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_51()
{

  return sub_2576E7950(v0, type metadata accessor for FeatureType);
}

void sub_2576E7AF0()
{
  OUTLINED_FUNCTION_31();
  v60 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v55 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v54 = v8 - v7;
  v9 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_64();
  v17 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_28_27(inited, 0x6152u);
  v58 = v23;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v24;
  *(inited + 64) = 0;
  *(inited + 72) = 0x7865646E49;
  *(inited + 80) = 0xE500000000000000;
  v25 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v26 = *(v25 + 24);
  v56 = v0;
  sub_2574FD880(v0 + v26, v1, &qword_27F87BD40, &unk_257774DE0);
  v27 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v27, v28, v17) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    v29 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v29, v30, v17) != 1)
    {
      sub_2574695E4(v1, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v1, v21);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2576E997C(v21, v13);
    v31 = *v13;
    sub_2576E9924(v13, type metadata accessor for Proto_SingleKdTreeIndex);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_257743FF0;
    *(v32 + 32) = 1701869908;
    *(v32 + 40) = 0xE400000000000000;
    *(v32 + 48) = 0xD000000000000015;
    *(v32 + 56) = 0x80000002577818B0;
    *(v32 + 64) = 0;
    *(v32 + 72) = 1702521171;
    *(v32 + 80) = 0xE400000000000000;
    v58 = v31;
    *(v32 + 88) = sub_257743674();
    *(v32 + 96) = v33;
    *(v32 + 104) = 0;
    v34 = sub_2576A6964(v32);
    v36 = 2;
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    sub_2576E9924(v21, v37);
    v36 = 0;
    v35 = 0xE600000000000000;
    v34 = 0x7261656E694CLL;
  }

  v38 = v56;
  *(inited + 88) = v34;
  *(inited + 96) = v35;
  *(inited + 104) = v36;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000002577818D0;
  sub_2574FD880(v38 + *(v25 + 28), v5, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_65(v5);
  if (v39)
  {
    v40 = v54;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v40, v41);
    OUTLINED_FUNCTION_65(v5);
    if (!v39)
    {
      sub_2574695E4(v5, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    v42 = v5;
    v43 = v54;
    sub_2576E997C(v42, v54);
    sub_2576E9924(v43, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction);
  }

  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000002577818F0;
  *(inited + 144) = 0;
  v44 = NearestNeighborsConfiguration.Parameters.weights.getter();
  if (*(v44 + 16))
  {
    v45 = *(v44 + 32);

    v46 = *(NearestNeighborsConfiguration.Parameters.weights.getter() + 16);

    v57 = v46;
    OUTLINED_FUNCTION_211();
    v58 = sub_257743974();
    v59 = v47;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);
    v48 = *(v45 + 16);

    v57 = v48;
    OUTLINED_FUNCTION_211();
    v49 = sub_257743974();
    MEMORY[0x259C64E90](v49);

    v50 = v58;
    v51 = v59;
    sub_257469AE0();
    inited = v52;
    *(v52 + 16) = 4;
    *(v52 + 152) = 0x73746867696557;
    *(v52 + 160) = 0xE700000000000000;
    *(v52 + 168) = v50;
    *(v52 + 176) = v51;
    *(v52 + 184) = 0;
  }

  else
  {
  }

  sub_2576AACFC(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t (*NearestNeighborsConfiguration.Parameters.rank.modify(void *a1))(uint64_t result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576E9EA4;
}

uint64_t NearestNeighborsConfiguration.Parameters.weights.getter()
{
  v1 = type metadata accessor for Proto_FloatVector(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2574843A0(0, v7, 0);
    v8 = v15;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_2576E99F4(v9, v5);
      v11 = *v5;

      sub_2576E9924(v5, type metadata accessor for Proto_FloatVector);
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2574843A0(v12 > 1, v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      *(v15 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void NearestNeighborsConfiguration.Parameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  type metadata accessor for Proto_FloatVector(0);
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = *(v2 + 16);
  if (v9)
  {
    v15 = v0;
    v16 = MEMORY[0x277D84F90];
    sub_2574851B0(0, v9, 0);
    v10 = 32;
    v11 = v16;
    do
    {
      v12 = *(v2 + v10);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v12;
      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2574851B0(v13 > 1, v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      sub_2576E997C(v8, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v10 += 8;
      --v9;
    }

    while (v9);

    v0 = v15;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *(v0 + 8) = v11;
  OUTLINED_FUNCTION_35();
}

void (*NearestNeighborsConfiguration.Parameters.weights.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = NearestNeighborsConfiguration.Parameters.weights.getter();
  return sub_2576E8400;
}

void sub_2576E8400(uint64_t a1, char a2)
{
  if (a2)
  {

    NearestNeighborsConfiguration.Parameters.weights.setter();
  }

  else
  {
    NearestNeighborsConfiguration.Parameters.weights.setter();
  }
}

uint64_t NearestNeighborsConfiguration.Parameters.indexType.getter()
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for Proto_SingleKdTreeIndex(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = OUTLINED_FUNCTION_201();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v16 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574FD880(v1 + *(v16 + 24), v3, &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_35_0(v3);
  if (v17)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35_0(v3);
    if (!v17)
    {
      sub_2574695E4(v3, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v3, v2);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576E997C(v2, v9);
    v21 = *v9;
    result = sub_2576E9924(v9, type metadata accessor for Proto_SingleKdTreeIndex);
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    result = sub_2576E9924(v2, v19);
    v21 = 0;
  }

  *v0 = v21;
  *(v0 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_2576E8628@<X0>(uint64_t a1@<X8>)
{
  result = NearestNeighborsConfiguration.Parameters.indexType.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576E866C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return NearestNeighborsConfiguration.Parameters.indexType.setter(&v3);
}

uint64_t NearestNeighborsConfiguration.Parameters.indexType.setter(uint64_t a1)
{
  type metadata accessor for Proto_SingleKdTreeIndex(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  if (*(a1 + 8) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
LABEL_6:
    v11 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = type metadata accessor for Proto_NearestNeighborsIndex(0);
    return sub_2574FD834(v8, v1 + *(v15 + 24), &qword_27F87BD40, &unk_257774DE0);
  }

  v9 = *a1;
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    *v2 = v9;
    OUTLINED_FUNCTION_2_62();
    sub_2576E997C(v2, v8);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void NearestNeighborsConfiguration.Parameters.indexType.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[2] = v0;
  v4 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v3[6] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[7] = v10;
  v3[8] = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_4();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v3[9] = v12;
  v13 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 24);
  *(v3 + 3) = v13;
  sub_2574FD880(v0 + v13, v10, &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_65(v10);
  if (v14)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_65(v10);
    if (!v14)
    {
      sub_2574695E4(v10, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v10, v12);
  }

  OUTLINED_FUNCTION_211();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576E997C(v12, v6);
    v17 = *v6;
    sub_2576E9924(v6, type metadata accessor for Proto_SingleKdTreeIndex);
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    sub_2576E9924(v12, v16);
    v17 = 0;
  }

  *v3 = v17;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void sub_2576E8A1C()
{
  OUTLINED_FUNCTION_31();
  v8 = *v7;
  v9 = **v7;
  if ((v10 & 1) == 0)
  {
    if (*(*v7 + 8))
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    }

    else
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v9 < 0xFFFFFFFF80000000)
      {
        goto LABEL_18;
      }

      if (v9 > 0x7FFFFFFF)
      {
LABEL_20:
        __break(1u);
        return;
      }

      *v8[4] = v9;
      OUTLINED_FUNCTION_2_62();
      sub_2576E997C(v18, v19);
    }

    OUTLINED_FUNCTION_23_26();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v4);
    v16 = v6 + v5;
    v17 = v1;
    goto LABEL_14;
  }

  if (!*(*v7 + 8))
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        *v8[4] = v9;
        OUTLINED_FUNCTION_2_62();
        sub_2576E997C(v11, v12);
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
LABEL_9:
  OUTLINED_FUNCTION_23_26();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  v16 = v6 + v5;
  v17 = v2;
LABEL_14:
  sub_2574FD834(v17, v16, &qword_27F87BD40, &unk_257774DE0);
  free(v9);
  free(v0);
  free(v1);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_35();

  free(v23);
}

uint64_t NearestNeighborsConfiguration.Parameters.distanceFunction.getter()
{
  v2 = OUTLINED_FUNCTION_211();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574FD880(v0 + *(v9 + 28), v7, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_35_0(v7);
  if (v10)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v1, v11);
    result = OUTLINED_FUNCTION_35_0(v7);
    if (!v10)
    {
      return sub_2574695E4(v7, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    sub_2576E997C(v7, v1);
    return sub_2576E9924(v1, v0);
  }

  return result;
}

uint64_t NearestNeighborsConfiguration.Parameters.distanceFunction.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  return sub_2574FD834(v4, v0 + *(v9 + 28), &qword_27F87BD48, &unk_257750590);
}

void (*NearestNeighborsConfiguration.Parameters.distanceFunction.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_201();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[1] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[2] = v9;
  v3[3] = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_4();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v3[4] = v11;
  v12 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 28);
  *(v3 + 10) = v12;
  sub_2574FD880(v1 + v12, v9, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_35_0(v9);
  if (v13)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v11, v14);
    OUTLINED_FUNCTION_35_0(v9);
    if (!v13)
    {
      sub_2574695E4(v9, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    sub_2576E997C(v9, v11);
    sub_2576E9924(v11, v1);
  }

  return sub_2576E8F1C;
}

void sub_2576E8F1C(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  sub_2574FD834(v6, v7 + v2, &qword_27F87BD48, &unk_257750590);
  free(v3);
  free(v5);
  free(v6);

  free(v1);
}

uint64_t NearestNeighborsConfiguration.Parameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_NearestNeighborsIndex(0);
  v1 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_22_5(v1);
  v2 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_22_5(v2);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void NearestNeighborsConfiguration.Parameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v1 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_64();
  type metadata accessor for NearestNeighborsConfiguration.Parameters(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576E99F4(v0, v13 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257744E70;
  v15 = OUTLINED_FUNCTION_28_27(v14, 0x6172u);
  v16 = MEMORY[0x277D83B88];
  v15[6] = v17;
  v15[9] = v16;
  v15[10] = 0x73746867696577;
  v15[11] = 0xE700000000000000;
  v18 = NearestNeighborsConfiguration.Parameters.weights.getter();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814D0, &unk_257774DF0);
  *(v14 + 96) = v18;
  *(v14 + 120) = v19;
  *(v14 + 128) = 0x7079547865646E69;
  *(v14 + 136) = 0xE900000000000065;
  *(v14 + 168) = &type metadata for NearestNeighborsConfiguration.Parameters.IndexType;
  NearestNeighborsConfiguration.Parameters.indexType.getter();
  *(v14 + 176) = 0xD000000000000010;
  *(v14 + 184) = 0x8000000257781890;
  *(v14 + 216) = &type metadata for NearestNeighborsConfiguration.Parameters.DistanceFunction;
  NearestNeighborsConfiguration.Parameters.distanceFunction.getter();
  sub_257743A74();
  v20 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

BOOL static NearestNeighborsConfiguration.Parameters.IndexType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t NearestNeighborsConfiguration.Parameters.DistanceFunction.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  return sub_257743A64();
}

uint64_t sub_2576E9390(uint64_t result)
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

uint64_t (*NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.leafSize.modify(void *a1))(uint64_t result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576E93E0;
}

uint64_t NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.init(leafSize:)@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_SingleKdTreeIndex(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    type metadata accessor for Proto_SingleKdTreeIndex(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_14_24();
    sub_2576E9C24(v3, v4, MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification29NearestNeighborsConfigurationV10ParametersV011LinearIndexE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_14_24();
  sub_2576E9C24(v2, v3, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

void NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2576E99F4(v2, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 0x657A69536661656CLL;
  *(v13 + 40) = 0xE800000000000000;
  v14 = *v2;
  *(v13 + 72) = MEMORY[0x277D83B88];
  *(v13 + 48) = v14;
  sub_257743A74();
  v15 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v3);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576E976C()
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
  sub_2576E99F4(v3, v19 - v15);
  v19[1] = MEMORY[0x277D84F90];
  sub_257743A74();
  v16 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  (*(v6 + 104))(v10, *MEMORY[0x277D84C38], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576E9924(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576E997C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_2576E99F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

unint64_t sub_2576E9AF8()
{
  result = qword_27F8814D8;
  if (!qword_27F8814D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814D8);
  }

  return result;
}

uint64_t sub_2576E9C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s10ParametersV16DistanceFunctionOwst(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2576E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_27@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x6B6E0000u;
  *(result + 40) = 0xE400000000000000;
  return result;
}

void *NeuralNetwork.Layer.ReshapeParameters.propertyDescriptions.getter()
{
  v1 = 0xED00007473726946;
  if (*(v0 + 16) == 1 && v0[1])
  {
    v1 = 0xEC0000007473614CLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_257743FF0;
  strcpy((v2 + 32), "Target Shape");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v4 = *v0;
  v5 = *(*v0 + 16);
  if (v5)
  {
    v17 = v2;
    v18 = MEMORY[0x277D84F90];
    sub_257483754(0, v5, 0);
    v6 = v4 + 32;
    do
    {
      v6 += 8;
      v7 = sub_257743974();
      v9 = v8;
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257483754((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v5;
    }

    while (v5);
    v3 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90, MEMORY[0x277D83958]);
  v13 = sub_257743604();
  v15 = v14;

  v3[6] = v13;
  v3[7] = v15;
  v3[8] = 0xD000000000000015;
  v3[9] = 0x80000002577814F0;
  v3[10] = 0x206C656E6E616843;
  v3[11] = v1;
  return v3;
}

uint64_t static NeuralNetwork.Layer.reshape(name:inputName:outputName:targetShape:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a7;
  v31 = a1;
  v32 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v29 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  v28 = xmmword_2577442B0;
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *v21 = MEMORY[0x277D84F90];
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  type metadata accessor for Proto_ReshapeLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v24);
  *(v21 + 8) = v29;
  *(v21 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  return sub_257634BB4(v21);
}

uint64_t static NeuralNetwork.Layer.Kind.reshape(targetShape:targetChannelLayout:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_1_73(MEMORY[0x277D84F90]);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v5);
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.init(targetShape:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  OUTLINED_FUNCTION_1_73(MEMORY[0x277D84F90]);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  result = NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(a1);
  *(a3 + 8) = v6;
  *(a3 + 16) = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.targetShape.getter()
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

uint64_t NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(uint64_t a1)
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

uint64_t (*NeuralNetwork.Layer.ReshapeParameters.targetShape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ReshapeParameters.targetShape.getter();
  return sub_2576EA73C;
}

uint64_t sub_2576EA73C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(*a1);
  }

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v2);
}

unsigned __int8 *NeuralNetwork.Layer.ReshapeParameters.targetChannelLayout.setter(unsigned __int8 *result)
{
  *(v1 + 8) = *result;
  *(v1 + 16) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ReshapeParameters.targetChannelLayout.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16) == 1 && *(v1 + 8) != 0;
  *(a1 + 8) = v2;
  return sub_2576EA864;
}

uint64_t *sub_2576EA864(uint64_t *result)
{
  v1 = *result;
  *(v1 + 8) = *(result + 8);
  *(v1 + 16) = 1;
  return result;
}

BOOL static NeuralNetwork.Layer.ReshapeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
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

  type metadata accessor for Proto_ReshapeLayerParams(0);
  sub_2577431B4();
  sub_2576EAD50(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2576EACA4(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  *(v12 + 32) = 0x6853746567726174;
  *(v12 + 40) = 0xEB00000000657061;
  v13 = NeuralNetwork.Layer.ReshapeParameters.targetShape.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = 0xD000000000000013;
  *(v12 + 88) = 0x8000000257781910;
  *(v12 + 120) = &type metadata for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout;
  v15 = *(v0 + 16) == 1 && *(v0 + 8) != 0;
  *(v12 + 96) = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2576EAC20@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ReshapeParameters(uint64_t a1)
{
  result = qword_27F881538;
  if (!qword_27F881538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576EACA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576EAD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2576EADE0()
{
  result = qword_27F881530;
  if (!qword_27F881530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881530);
  }

  return result;
}

uint64_t sub_2576EAE5C(uint64_t a1)
{
  result = type metadata accessor for Proto_ReshapeLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17ReshapeParametersV13ChannelLayoutOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_73@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;

  return type metadata accessor for Proto_ReshapeLayerParams(0);
}

void sub_2576EAFC4()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v72 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x646F6874654DLL;
  *(inited + 40) = 0xE600000000000000;
  NonMaximumSuppressorConfiguration.method.getter(inited, v15, v16, v17, v18, v19, v20, v21, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v22 = sub_2576ECC30();
  v24 = v23;
  OUTLINED_FUNCTION_17_26();
  sub_2576EBDBC(v1, v25);
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  *(inited + 64) = 0;
  strcpy((inited + 72), "IoU Threshold");
  *(inited + 86) = -4864;
  v26 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v60 = *(v2 + v26[6]);
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v27;
  *(inited + 104) = 0;
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000257781930;
  v60 = *(v2 + v26[7]);
  *(inited + 128) = sub_257743674();
  *(inited + 136) = v28;
  *(inited + 144) = 0;
  *(inited + 152) = 0x736C6562614CLL;
  *(inited + 160) = 0xE600000000000000;
  sub_2574AD5D8(v2 + v26[5], v11, &qword_27F87FAA8, &unk_257767580);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v30 = v60;
    v29 = v61;
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v7, v31);
  }

  v60 = v30;
  LOBYTE(v61) = v29;
  v32 = sub_2576ECD5C();

  *(inited + 168) = v32;
  *(inited + 176) = 0;
  *(inited + 184) = 1;
  OUTLINED_FUNCTION_1_74(v26[8]);
  if (v33)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    v34 = v60;
    v35 = v61;
    sub_257469AE0();
    inited = v36;
    *(v36 + 16) = 5;
    *(v36 + 192) = 0xD000000000000015;
    *(v36 + 200) = 0x8000000257781950;
    *(v36 + 208) = v34;
    *(v36 + 216) = v35;
    *(v36 + 224) = 0;
  }

  OUTLINED_FUNCTION_1_74(v26[9]);
  if (v37)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v38)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v55;
    }

    OUTLINED_FUNCTION_11_38();
    *(v40 + 32) = 0xD000000000000016;
    *(v40 + 40) = v39;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v26[10]);
  if (v41)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v38)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v56;
    }

    OUTLINED_FUNCTION_11_38();
    *(v43 + 32) = 0xD000000000000018;
    *(v43 + 40) = v42;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v26[11]);
  if (v44)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v38)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v57;
    }

    OUTLINED_FUNCTION_11_38();
    *(v46 + 32) = 0xD00000000000001FLL;
    *(v46 + 40) = v45;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v26[12]);
  if (v47)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v38)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v58;
    }

    OUTLINED_FUNCTION_11_38();
    *(v49 + 32) = 0xD000000000000016;
    *(v49 + 40) = v48;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v26[13]);
  if (v50)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    v51 = v60;
    v52 = v61;
    v53 = *(inited + 16);
    if (v53 >= *(inited + 24) >> 1)
    {
      sub_257469AE0();
      inited = v59;
    }

    *(inited + 16) = v53 + 1;
    v54 = inited + 40 * v53;
    *(v54 + 32) = 0xD000000000000017;
    *(v54 + 40) = 0x80000002577819F0;
    *(v54 + 48) = v51;
    *(v54 + 56) = v52;
    *(v54 + 64) = 0;
  }

  sub_2576AACFC(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.getter()
{
  type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23();
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void NonMaximumSuppressorConfiguration.method.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = OUTLINED_FUNCTION_16_1();
  v26 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(v25);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_13(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881548, &unk_257775288);
  OUTLINED_FUNCTION_13(v35);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  sub_2574AD5D8(v24, v34, &qword_27F87FAA0, &qword_257775280);
  v39 = 1;
  if (__swift_getEnumTagSinglePayload(v34, 1, v26) != 1)
  {
    sub_2576EBB28();
    sub_2576EBD68();
    OUTLINED_FUNCTION_3_65();
    sub_2576EBB28();
    sub_2576EBDBC(v30, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
    v39 = 0;
  }

  v40 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v40);
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    *v20 = 0;
    type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v38, 1, v40) != 1)
    {
      sub_2574695E4(v38, &qword_27F881548, &unk_257775288);
    }
  }

  else
  {
    sub_2576EBB28();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576EB9A4(uint64_t a1)
{
  v1 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2576EBD68();
  return NonMaximumSuppressorConfiguration.method.setter();
}

uint64_t NonMaximumSuppressorConfiguration.method.setter()
{
  v1 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  sub_2574695E4(v0, &qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_368();
  sub_2576EBB28();
  OUTLINED_FUNCTION_3_65();
  sub_2576EBB28();
  type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t NonMaximumSuppressorConfiguration.SelectTopConfiguration.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576EBB28()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

void sub_2576EBC4C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_2576EBD68();
    sub_2574695E4(v5, &qword_27F87FAA0, &qword_257775280);
    OUTLINED_FUNCTION_2_63();
    sub_2576EBB28();
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_98_2();
    sub_2576EBB28();
    type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_17_26();
    sub_2576EBDBC(v3, v10);
  }

  else
  {
    sub_2574695E4(*a1, &qword_27F87FAA0, &qword_257775280);
    OUTLINED_FUNCTION_2_63();
    sub_2576EBB28();
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_98_2();
    sub_2576EBB28();
    type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_2576EBD68()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_2576EBDBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t NonMaximumSuppressorConfiguration.iouThreshold.setter(double a1)
{
  result = type metadata accessor for Proto_NonMaximumSuppression(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

double (*NonMaximumSuppressorConfiguration.iouThreshold.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 24);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_25766AA44;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThreshold.setter(double a1)
{
  result = type metadata accessor for Proto_NonMaximumSuppression(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

double (*NonMaximumSuppressorConfiguration.confidenceThreshold.modify(uint64_t a1))(uint64_t)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 28);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_2576EDB40;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 32));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 36));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 40));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 44));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 48));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 52));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.labels.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_40();
  v11 = type metadata accessor for Proto_NonMaximumSuppression(0);
  sub_2574AD5D8(v1 + *(v11 + 20), v2, &qword_27F87FAA8, &unk_257767580);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v14 = v16;
    v13 = v17;
    OUTLINED_FUNCTION_0_91();
    result = sub_2576EBDBC(v8, v15);
  }

  *v0 = v14;
  *(v0 + 8) = v13;
  return result;
}

uint64_t sub_2576EC4B8@<X0>(uint64_t a1@<X8>)
{
  result = NonMaximumSuppressorConfiguration.labels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576EC4FC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NonMaximumSuppressorConfiguration.labels.setter(&v3);
}

uint64_t NonMaximumSuppressorConfiguration.labels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);
  v7 = *a1;
  if (a1[1])
  {

    sub_25764CFE8(v8);
    v9 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v6 = v7;
    v9 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for Proto_NonMaximumSuppression(0);
  return sub_2576EC8A0(v6, v1 + *(v13 + 20));
}

void sub_2576EC654()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for Proto_Int64Vector(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v7 = type metadata accessor for Proto_StringVector(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_55();
  sub_2576EBD68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_156();
    sub_2576EBB28();
    v14 = *v1;
    v15 = *(*v1 + 16);
    if (!v15)
    {
      OUTLINED_FUNCTION_0_91();
      sub_2576EBDBC(v3, v26);
      OUTLINED_FUNCTION_16_23();
      sub_2576EBDBC(v1, v27);
      v16 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v28 = MEMORY[0x277D84F90];
    sub_257483724(0, v15, 0);
    v16 = v28;
    v17 = (v14 + 32);
    v18 = *(v28 + 16);
    do
    {
      v20 = *v17++;
      v19 = v20;
      v21 = *(v28 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_257483724(v21 > 1, v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      *(v28 + 8 * v18++ + 32) = v19;
      --v15;
    }

    while (v15);
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v3, v23);
    OUTLINED_FUNCTION_16_23();
    v25 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v3, v22);
    OUTLINED_FUNCTION_156();
    sub_2576EBB28();
    v16 = *v11;

    v24 = type metadata accessor for Proto_StringVector;
    v25 = v11;
  }

  sub_2576EBDBC(v25, v24);
LABEL_10:
  *v0 = v16;
  *(v0 + 8) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576EC8A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*NonMaximumSuppressorConfiguration.labels.modify())(void ***a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(v2);
  v1[3] = v3;
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v1[4] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v1[6] = __swift_coroFrameAllocStub(v9);
  v1[7] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[8] = v10;
  v11 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 20);
  *(v1 + 3) = v11;
  sub_2574AD5D8(v0 + v11, v10, &qword_27F87FAA8, &unk_257767580);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v13 = v16;
    v12 = v17;
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v6, v14);
  }

  *v1 = v13;
  *(v1 + 8) = v12;
  return sub_2576ECAC0;
}

void sub_2576ECAC0(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v6[6];
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
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_2576EC8A0(v9, v5 + v4);
  }

  else
  {
    v9 = v6[7];
    if ((*a1)[1])
    {

      sub_25764CFE8(v11);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    sub_2576EC8A0(v8, v5 + v4);
  }

  free(v7);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v6);
}

unint64_t sub_2576ECC30()
{
  v0 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v5 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_156();
  sub_2576EBD68();
  OUTLINED_FUNCTION_2_63();
  sub_2576EBB28();
  if (*v4)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x54207463656C6553;
  }

  sub_2576EBDBC(v4, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
  return v7;
}

uint64_t sub_2576ECD5C()
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
      OUTLINED_FUNCTION_316();

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

uint64_t static NonMaximumSuppressorConfiguration.Labels.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t static NonMaximumSuppressorConfiguration.Method.== infix(_:_:)()
{
  v0 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v4 = (v2 - v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881550, &qword_257775298);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_0();
  sub_2576EBD68();
  sub_2576EBD68();
  sub_2576EBB28();
  sub_2576EBB28();
  if (*v7 == *v4)
  {
    type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_15_24();
    sub_2576ED870(v12, v13, MEMORY[0x277D216D0]);
    v14 = sub_257743644();
    sub_2576EBDBC(v4, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
    v15 = OUTLINED_FUNCTION_98_2();
    sub_2576EBDBC(v15, v16);
    if (v14)
    {
      return 1;
    }
  }

  else
  {
    sub_2576EBDBC(v4, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
    v10 = OUTLINED_FUNCTION_205();
    sub_2576EBDBC(v10, v11);
  }

  return 0;
}

uint64_t (*NonMaximumSuppressorConfiguration.SelectTopConfiguration.perClass.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NonMaximumSuppressorConfiguration.SelectTopConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_0_0();
    type metadata accessor for Proto_NonMaximumSuppression.PickTop(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_15_24();
    sub_2576ED870(v3, v4, MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void NonMaximumSuppressorConfiguration.SelectTopConfiguration.customMirror.getter()
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
  OUTLINED_FUNCTION_75_0();
  type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576EBD68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 0x7373616C43726570;
  *(v12 + 40) = 0xE800000000000000;
  v13 = *v1;
  *(v12 + 72) = MEMORY[0x277D839B0];
  *(v12 + 48) = v13;
  v14 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v14);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576ED870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576ED914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257462C30);
}

uint64_t sub_2576ED96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257462C6C);
}

uint64_t sub_2576ED9D4(uint64_t a1)
{
  v2 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2576EDACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_50@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  v3 = (v1 + a1);
  v5 = *v3;
  result = v3[1];
  *(v2 + 24) = result;
  *v2 = v5;
  *(v2 + 8) = result;
  return result;
}

void OUTLINED_FUNCTION_6_52()
{
  *(v0 - 304) = 34;
  *(v0 - 296) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;
  return 0;
}

void OUTLINED_FUNCTION_14_25()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_19_27()
{

  return type metadata accessor for Proto_NonMaximumSuppression(0);
}

uint64_t OUTLINED_FUNCTION_20_23()
{
}

uint64_t OUTLINED_FUNCTION_34_14()
{
}

void OUTLINED_FUNCTION_42_14()
{
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
}

void sub_2576EDD44()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v242 = v6 - v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  v245 = v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_167();
  v247 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_167();
  v241 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_167();
  v246 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  v243 = &v241 - v17;
  v18 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v241 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 1701667150;
  *(inited + 40) = 0xE400000000000000;
  v27 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296(v27 + 16, &v262);
  v28 = *(v27 + 24);
  *(inited + 48) = *(v27 + 16);
  *(inited + 56) = v28;
  *(inited + 64) = 0;
  *(inited + 72) = 1684957515;
  *(inited + 80) = 0xE400000000000000;

  NeuralNetwork.Layer.kind.getter(v25);
  v29 = NeuralNetwork.Layer.Kind.name.getter();
  v31 = v30;
  OUTLINED_FUNCTION_16_24();
  sub_2576F0AF8(v25, v32);
  *(inited + 88) = v29;
  *(inited + 96) = v31;
  *(inited + 104) = 0;
  v263 = inited;
  NeuralNetwork.Layer.kind.getter(v22);
  v33 = NeuralNetwork.Layer.Kind.propertyDescriptions.getter();
  sub_2576F0AF8(v22, v1);
  v34 = *(v33 + 16);
  v244 = v5;
  v252 = v27;
  if (v34)
  {
    v261 = MEMORY[0x277D84F90];
    v35 = OUTLINED_FUNCTION_18_37();
    sub_257484060(v35, v36, v37);
    v38 = v261;
    v251 = v33;
    v39 = (v33 + 56);
    do
    {
      v40 = *(v39 - 3);
      v41 = *(v39 - 2);
      v42 = *v39;
      v253 = *(v39 - 1);
      v261 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);

      if (v44 >= v43 >> 1)
      {
        sub_257484060(v43 > 1, v44 + 1, 1);
        v38 = v261;
      }

      *(v38 + 16) = v44 + 1;
      v45 = v38 + 40 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      *(v45 + 48) = v253;
      *(v45 + 56) = v42;
      *(v45 + 64) = 0;
      v39 += 4;
      --v34;
    }

    while (v34);

    v27 = v252;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  sub_25763CF70(v38);
  OUTLINED_FUNCTION_296(v27 + 32, &v261);
  v46 = MEMORY[0x277D84F90];
  v248 = *(*(v27 + 32) + 16);
  if (v248)
  {
    OUTLINED_FUNCTION_296(v27 + 48, &v260);
    v47 = 0;
    v48 = v46;
    while (1)
    {
      v49 = *(v27 + 32);
      if (v47 >= *(v49 + 16))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        OUTLINED_FUNCTION_0_66();
        sub_257469AE0();
        v135 = v237;
        goto LABEL_56;
      }

      v251 = v48;
      v253 = v47;
      v50 = v49 + 16 * v47;
      v51 = *(v50 + 40);
      v249 = *(v50 + 32);
      v250 = v51;
      v52 = *(v27 + 48);
      v53 = *(v52 + 16);
      if (v53)
      {
        v258 = v46;

        v54 = OUTLINED_FUNCTION_25_14();
        sub_257484490(v54, v55, v56);
        v57 = v258;
        v58 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v58);
        v60 = v52 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
        v62 = *(v61 + 72);
        v63 = v243;
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v60, v63);
          v258 = v57;
          OUTLINED_FUNCTION_20_24();
          if (v65)
          {
            v69 = OUTLINED_FUNCTION_174(v64);
            OUTLINED_FUNCTION_46_11(v69);
            v57 = v258;
          }

          *(v57 + 16) = v46;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v68, v66 + v67 * v27);
          v60 += v62;
          --v53;
        }

        while (v53);

        v27 = v252;
        v46 = MEMORY[0x277D84F90];
      }

      else
      {

        v57 = v46;
      }

      v70 = *(v57 + 16);

      v65 = v253 >= v70;
      v71 = v253;
      if (v65)
      {
        OUTLINED_FUNCTION_30_16();
        MEMORY[0x259C64E90](v249, v250);

        MEMORY[0x259C64E90](34, 0xE100000000000000);
        v89 = v258;
        v90 = v259;
        v48 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_66();
          sub_257469C78();
          v48 = v130;
        }

        v91 = *(v48 + 16);
        OUTLINED_FUNCTION_37_14();
        if (v65)
        {
          OUTLINED_FUNCTION_1_69(v92);
          sub_257469C78();
          v48 = v93;
        }

        goto LABEL_50;
      }

      v72 = *(v27 + 48);
      v73 = *(v72 + 16);
      if (v73)
      {
        v258 = v46;

        v74 = OUTLINED_FUNCTION_25_14();
        sub_257484490(v74, v75, v76);
        v77 = v258;
        v78 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v78);
        v80 = v72 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
        v82 = *(v81 + 72);
        v83 = v241;
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v80, v83);
          v258 = v77;
          OUTLINED_FUNCTION_20_24();
          if (v65)
          {
            v88 = OUTLINED_FUNCTION_174(v84);
            OUTLINED_FUNCTION_46_11(v88);
            v77 = v258;
          }

          *(v77 + 16) = v46;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v87, v85 + v86 * v27);
          v80 += v82;
          --v73;
        }

        while (v73);

        v27 = v252;
        v71 = v253;
        v46 = MEMORY[0x277D84F90];
      }

      else
      {
        v77 = v46;
      }

      if (v71 >= *(v77 + 16))
      {
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_2_64();
      v94 = v246;
      sub_2576F0BF4(v95, v246);

      v96 = *(v94 + 8);
      v97 = *(v96 + 16);
      if (v97)
      {
        break;
      }

      v107 = *(v46 + 16);
      if (v107)
      {
        v101 = v46;
LABEL_40:
        v258 = v46;
        v111 = OUTLINED_FUNCTION_25_14();
        sub_257483754(v111, v112, v113);
        v114 = v258;
        v115 = 32;
        do
        {
          v257 = *(v101 + v115);
          v116 = sub_257743974();
          v118 = v117;
          v258 = v114;
          v120 = *(v114 + 16);
          v119 = *(v114 + 24);
          if (v120 >= v119 >> 1)
          {
            v122 = OUTLINED_FUNCTION_174(v119);
            sub_257483754(v122, v120 + 1, 1);
            v114 = v258;
          }

          *(v114 + 16) = v120 + 1;
          v121 = v114 + 16 * v120;
          *(v121 + 32) = v116;
          *(v121 + 40) = v118;
          v115 += 8;
          --v107;
        }

        while (v107);

        v27 = v252;
        goto LABEL_45;
      }

      v114 = v46;
LABEL_45:
      v258 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v123 = sub_257743604();
      v125 = v124;

      OUTLINED_FUNCTION_30_16();
      MEMORY[0x259C64E90](v249, v250);

      MEMORY[0x259C64E90](8226, 0xE200000000000000);
      MEMORY[0x259C64E90](v123, v125);

      v89 = v258;
      v90 = v259;
      v48 = v251;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v253;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_0_66();
        sub_257469C78();
        v48 = v131;
      }

      v91 = *(v48 + 16);
      OUTLINED_FUNCTION_37_14();
      if (v65)
      {
        OUTLINED_FUNCTION_1_69(v127);
        sub_257469C78();
        v48 = v132;
      }

      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v246, v128);
LABEL_50:
      v47 = v71 + 1;
      *(v48 + 16) = &v258;
      v129 = v48 + 24 * v91;
      *(v129 + 32) = v89;
      *(v129 + 40) = v90;
      *(v129 + 48) = 0;
      v46 = MEMORY[0x277D84F90];
      if (v47 == v248)
      {
        goto LABEL_54;
      }
    }

    v258 = v46;
    v98 = OUTLINED_FUNCTION_64_4();
    sub_257483724(v98, v99, v100);
    v101 = v258;
    v102 = (v96 + 32);
    v103 = *(v258 + 16);
    do
    {
      v105 = *v102++;
      v104 = v105;
      v258 = v101;
      v106 = *(v101 + 24);
      v107 = v103 + 1;
      if (v103 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_174(v106);
        OUTLINED_FUNCTION_41_14();
        sub_257483724(v108, v109, v110);
        v101 = v258;
      }

      *(v101 + 16) = v107;
      *(v101 + 8 * v103++ + 32) = v104;
      --v97;
    }

    while (v97);
    v46 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_54:
  v133 = v263;

  v134 = swift_isUniquelyReferenced_nonNull_native();
  v251 = v48;
  if ((v134 & 1) == 0)
  {
    goto LABEL_116;
  }

  v135 = v133;
LABEL_56:
  v137 = *(v135 + 2);
  v136 = *(v135 + 3);
  if (v137 >= v136 >> 1)
  {
    OUTLINED_FUNCTION_1_69(v136);
    sub_257469AE0();
    v135 = v238;
  }

  *(v135 + 2) = v137 + 1;
  v243 = v135;
  v138 = &v135[40 * v137];
  *(v138 + 4) = 0x737475706E49;
  *(v138 + 5) = 0xE600000000000000;
  *(v138 + 6) = v251;
  *(v138 + 7) = 0;
  v138[64] = 1;
  OUTLINED_FUNCTION_296(v27 + 40, &v258);
  v139 = MEMORY[0x277D84F90];
  v246 = *(*(v27 + 40) + 16);
  if (v246)
  {
    OUTLINED_FUNCTION_296(v27 + 56, &v257);
    v140 = 0;
    v141 = v139;
    v142 = v247;
    while (1)
    {
      v143 = *(v27 + 40);
      if (v140 >= *(v143 + 16))
      {
        goto LABEL_113;
      }

      v250 = v141;
      v253 = v140;
      v144 = v143 + 16 * v140;
      v145 = *(v144 + 40);
      v248 = *(v144 + 32);
      v249 = v145;
      v146 = *(v27 + 56);
      v147 = *(v146 + 16);
      if (v147)
      {
        v255 = v139;

        v148 = OUTLINED_FUNCTION_25_14();
        sub_257484490(v148, v149, v150);
        v151 = v255;
        v152 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v152);
        v154 = v146 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v156 = *(v155 + 72);
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v154, v142);
          v255 = v151;
          OUTLINED_FUNCTION_20_24();
          if (v65)
          {
            v161 = OUTLINED_FUNCTION_174(v157);
            OUTLINED_FUNCTION_46_11(v161);
            v151 = v255;
          }

          *(v151 + 16) = v46;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v160, v158 + v159 * v27);
          v154 += v156;
          --v147;
        }

        while (v147);

        v27 = v252;
        v139 = MEMORY[0x277D84F90];
      }

      else
      {

        v151 = v139;
      }

      v162 = *(v151 + 16);

      v163 = v253;
      if (v253 >= v162)
      {
        OUTLINED_FUNCTION_25_23();

        MEMORY[0x259C64E90](34, 0xE100000000000000);
        v46 = v255;
        v181 = v256;
        v141 = v250;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_66();
          sub_257469C78();
          v141 = v223;
        }

        v142 = v247;
        v182 = *(v141 + 16);
        OUTLINED_FUNCTION_37_14();
        v184 = v253;
        if (v65)
        {
          OUTLINED_FUNCTION_1_69(v183);
          sub_257469C78();
          v184 = v253;
          v141 = v185;
        }

        goto LABEL_100;
      }

      v164 = *(v27 + 56);
      v165 = *(v164 + 16);
      v166 = v242;
      if (v165)
      {
        v255 = v139;

        v167 = OUTLINED_FUNCTION_25_14();
        sub_257484490(v167, v168, v169);
        v170 = v255;
        v171 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v171);
        v173 = v164 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
        v175 = *(v174 + 72);
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v173, v166);
          v255 = v170;
          OUTLINED_FUNCTION_20_24();
          if (v65)
          {
            v180 = OUTLINED_FUNCTION_174(v176);
            OUTLINED_FUNCTION_46_11(v180);
            v170 = v255;
          }

          *(v170 + 16) = v46;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v179, v177 + v178 * v27);
          v173 += v175;
          --v165;
        }

        while (v165);

        v27 = v252;
        v163 = v253;
      }

      else
      {
        v170 = v139;
      }

      if (v163 >= *(v170 + 16))
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_2_64();
      v186 = v245;
      sub_2576F0BF4(v187, v245);

      v188 = *(v186 + 8);
      v189 = *(v188 + 16);
      if (v189)
      {
        break;
      }

      v203 = MEMORY[0x277D84F90];
      v199 = *(MEMORY[0x277D84F90] + 16);
      if (v199)
      {
        v193 = MEMORY[0x277D84F90];
LABEL_90:
        v255 = v203;
        v204 = OUTLINED_FUNCTION_25_14();
        sub_257483754(v204, v205, v206);
        v207 = v255;
        v208 = 32;
        do
        {
          v254 = *(v193 + v208);
          v209 = sub_257743974();
          v211 = v210;
          v255 = v207;
          v213 = *(v207 + 16);
          v212 = *(v207 + 24);
          if (v213 >= v212 >> 1)
          {
            v215 = OUTLINED_FUNCTION_174(v212);
            sub_257483754(v215, v213 + 1, 1);
            v207 = v255;
          }

          *(v207 + 16) = v213 + 1;
          v214 = v207 + 16 * v213;
          *(v214 + 32) = v209;
          *(v214 + 40) = v211;
          v208 += 8;
          --v199;
        }

        while (v199);

        v27 = v252;
        goto LABEL_95;
      }

      v207 = v203;
LABEL_95:
      v255 = v207;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v216 = sub_257743604();
      v218 = v217;

      OUTLINED_FUNCTION_25_23();

      MEMORY[0x259C64E90](8226, 0xE200000000000000);
      MEMORY[0x259C64E90](v216, v218);

      v46 = v255;
      v181 = v256;
      v141 = v250;
      v219 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v247;
      if ((v219 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_66();
        sub_257469C78();
        v141 = v224;
      }

      v139 = MEMORY[0x277D84F90];
      v182 = *(v141 + 16);
      OUTLINED_FUNCTION_37_14();
      if (v65)
      {
        OUTLINED_FUNCTION_1_69(v220);
        sub_257469C78();
        v141 = v225;
      }

      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v245, v221);
      v184 = v253;
LABEL_100:
      v140 = v184 + 1;
      *(v141 + 16) = &v255;
      v222 = v141 + 24 * v182;
      *(v222 + 32) = v46;
      *(v222 + 40) = v181;
      *(v222 + 48) = 0;
      if (v140 == v246)
      {
        goto LABEL_104;
      }
    }

    v255 = MEMORY[0x277D84F90];
    v190 = OUTLINED_FUNCTION_18_37();
    sub_257483724(v190, v191, v192);
    v193 = v255;
    v194 = (v188 + 32);
    v195 = *(v255 + 16);
    do
    {
      v197 = *v194++;
      v196 = v197;
      v255 = v193;
      v198 = *(v193 + 24);
      v199 = v195 + 1;
      if (v195 >= v198 >> 1)
      {
        OUTLINED_FUNCTION_174(v198);
        OUTLINED_FUNCTION_41_14();
        sub_257483724(v200, v201, v202);
        v193 = v255;
      }

      *(v193 + 16) = v199;
      *(v193 + 8 * v195++ + 32) = v196;
      --v189;
    }

    while (v189);
    v203 = MEMORY[0x277D84F90];
    goto LABEL_90;
  }

  v141 = MEMORY[0x277D84F90];
LABEL_104:

  v226 = v243;
  v228 = *(v243 + 2);
  v227 = *(v243 + 3);
  v229 = v228 + 1;
  if (v228 >= v227 >> 1)
  {
    OUTLINED_FUNCTION_1_69(v227);
    sub_257469AE0();
    v226 = v239;
  }

  *(v226 + 2) = v229;
  v230 = &v226[40 * v228];
  *(v230 + 4) = 0x7374757074754FLL;
  *(v230 + 5) = 0xE700000000000000;
  *(v230 + 6) = v141;
  *(v230 + 7) = 0;
  v230[64] = 1;
  v231 = v226;
  swift_beginAccess();
  if (*(v27 + 64) == 1)
  {
    v232 = *(v231 + 24);
    v233 = v228 + 2;
    v234 = v231;
    if (v233 > (v232 >> 1))
    {
      OUTLINED_FUNCTION_174(v232);
      sub_257469AE0();
      v234 = v240;
    }

    *(v234 + 16) = v233;
    OUTLINED_FUNCTION_22_24(v234 + 40 * v229);
    *(v236 + 48) = xmmword_2577754B0;
    *(v236 + 64) = 0;
  }

  else
  {
    v235 = v231;
  }

  sub_2576AACFC(v235);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a3 + v9) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(a1);
  sub_2574897E0(v3);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  sub_25752846C();
  OUTLINED_FUNCTION_3_66();
  return sub_2576F0AF8(a2, v11);
}

uint64_t NeuralNetwork.Layer.inputNames.getter()
{
  v1 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_296(*(v0 + *(v1 + 20)) + 32, v3);
}

uint64_t NeuralNetwork.Layer.inputNames.setter()
{
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_237_0(v7 + 32, v6);
  *(v7 + 32) = v0;
}

uint64_t NeuralNetwork.Layer.outputNames.getter()
{
  v1 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_296(*(v0 + *(v1 + 20)) + 40, v3);
}

uint64_t NeuralNetwork.Layer.outputNames.setter()
{
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_237_0(v7 + 40, v6);
  *(v7 + 40) = v0;
}

void NeuralNetwork.Layer.outputTensors.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + 56, &v27);
  v10 = *(v0 + 56);
  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];

    v12 = OUTLINED_FUNCTION_64_4();
    sub_257484490(v12, v13, v14);
    v15 = v26;
    v16 = type metadata accessor for Proto_Tensor(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v18, v9);
      OUTLINED_FUNCTION_187();
      if (v22)
      {
        v25 = OUTLINED_FUNCTION_174(v21);
        sub_257484490(v25, v1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_1_75(v24, v15 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.name.getter()
{
  type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + 16, v2);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576EF114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NeuralNetwork.Layer.name.setter(v1, v2);
}

uint64_t NeuralNetwork.Layer.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_12_40();
    v9 = v11;
    *(v3 + v6) = v11;
  }

  OUTLINED_FUNCTION_237_0(v9 + 16, v8);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

void (*NeuralNetwork.Layer.name.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 64) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 16, v1);
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return sub_2576EF264;
}

void sub_2576EF264(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    NeuralNetwork.Layer.name.setter(v3, v4);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      v11 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v11);
      OUTLINED_FUNCTION_12_40();
      v8 = v12;
      *(v10 + v9) = v12;
    }

    OUTLINED_FUNCTION_447(v8 + 16, v2 + 24);
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
  }

  free(v2);
}

uint64_t NeuralNetwork.Layer.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9 - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-v13 - 8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881578, &qword_2577754C0);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v24[-v17 - 8];
  type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206();
  v19 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer, v24);
  sub_2576F0A20(v1 + v19, v14);
  v20 = 1;
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
  {
    sub_2576F0B50(v14, v10);
    sub_2576F0BF4(v10, v7);
    sub_25748D318(v7, v18);
    sub_2576F0AF8(v10, type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer);
    v20 = 0;
  }

  v21 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  __swift_storeEnumTagSinglePayload(v18, v20, 1, v21);
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) != 1)
  {
    return sub_2576F0B50(v18, a1);
  }

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_205();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v18, 1, v21);
  if (result != 1)
  {
    return sub_2576F0A90(v18);
  }

  return result;
}

uint64_t sub_2576EF590(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576F0BF4(a1, v4);
  return NeuralNetwork.Layer.kind.setter(v4);
}

uint64_t NeuralNetwork.Layer.kind.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40();
  sub_2574897E0(v1);
  v5 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  sub_25752846C();
  OUTLINED_FUNCTION_3_66();
  return sub_2576F0AF8(a1, v6);
}

void (*NeuralNetwork.Layer.kind.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  a1[1] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  a1[3] = v8;
  NeuralNetwork.Layer.kind.getter(v8);
  return sub_2576EF798;
}

void sub_2576EF798(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  if (a2)
  {
    sub_2576F0BF4(a1[3], v2);
    sub_2574897E0(v4);
    v5 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    OUTLINED_FUNCTION_44_9(v5);
    OUTLINED_FUNCTION_3_66();
    sub_2576F0AF8(v2, v6);
  }

  else
  {
    sub_2574897E0(a1[1]);
    v7 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    OUTLINED_FUNCTION_44_9(v7);
  }

  sub_2576F0AF8(v3, type metadata accessor for NeuralNetwork.Layer.Kind);
  free(v3);
  free(v2);

  free(v4);
}

void (*NeuralNetwork.Layer.inputNames.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 56) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 32, v1);
  *(v1 + 48) = *(v4 + 32);

  return sub_2576EF924;
}

void sub_2576EF924(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    NeuralNetwork.Layer.inputNames.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      v10 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v10);
      OUTLINED_FUNCTION_12_40();
      v7 = v11;
      *(v9 + v8) = v11;
    }

    OUTLINED_FUNCTION_447(v7 + 32, v2 + 24);
    *(v7 + 32) = v3;
  }

  free(v2);
}

void NeuralNetwork.Layer.inputTensors.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + 48, &v27);
  v10 = *(v0 + 48);
  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];

    v12 = OUTLINED_FUNCTION_64_4();
    sub_257484490(v12, v13, v14);
    v15 = v26;
    v16 = type metadata accessor for Proto_Tensor(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v18, v9);
      OUTLINED_FUNCTION_187();
      if (v22)
      {
        v25 = OUTLINED_FUNCTION_174(v21);
        sub_257484490(v25, v1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_1_75(v24, v15 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.inputTensors.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = type metadata accessor for NeuralNetwork.TensorDescriptor(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_Tensor(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(v0 + 16);
  if (v13)
  {
    v32 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_18_37();
    sub_257485208(v14, v15, v16);
    v17 = v32;
    OUTLINED_FUNCTION_193();
    v19 = v0 + v18;
    v20 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_2_64();
      sub_2576F0BF4(v19, v2);
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v2, v12);
      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v2, v21);
      OUTLINED_FUNCTION_42_15();
      if (v23)
      {
        OUTLINED_FUNCTION_174(v22);
        OUTLINED_FUNCTION_41_14();
        sub_257485208(v24, v25, v26);
        v17 = v32;
      }

      OUTLINED_FUNCTION_14_26();
      v19 += v20;
      --v13;
    }

    while (v13);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v27 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + v27);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v30);
    OUTLINED_FUNCTION_12_40();
    v29 = v31;
    *(v1 + v27) = v31;
  }

  OUTLINED_FUNCTION_447(v29 + 48, &v32);
  *(v29 + 48) = v17;

  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.inputTensors.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.inputTensors.getter();
  *a1 = v3;
  return sub_2576EFDE0;
}

void (*NeuralNetwork.Layer.outputNames.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 56) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 40, v1);
  *(v1 + 48) = *(v4 + 40);

  return sub_2576EFEAC;
}

void sub_2576EFEAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    NeuralNetwork.Layer.outputNames.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      v10 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v10);
      OUTLINED_FUNCTION_12_40();
      v7 = v11;
      *(v9 + v8) = v11;
    }

    OUTLINED_FUNCTION_447(v7 + 40, v2 + 24);
    *(v7 + 40) = v3;
  }

  free(v2);
}

void NeuralNetwork.Layer.outputTensors.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = type metadata accessor for NeuralNetwork.TensorDescriptor(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_Tensor(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(v0 + 16);
  if (v13)
  {
    v32 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_18_37();
    sub_257485208(v14, v15, v16);
    v17 = v32;
    OUTLINED_FUNCTION_193();
    v19 = v0 + v18;
    v20 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_2_64();
      sub_2576F0BF4(v19, v2);
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v2, v12);
      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v2, v21);
      OUTLINED_FUNCTION_42_15();
      if (v23)
      {
        OUTLINED_FUNCTION_174(v22);
        OUTLINED_FUNCTION_41_14();
        sub_257485208(v24, v25, v26);
        v17 = v32;
      }

      OUTLINED_FUNCTION_14_26();
      v19 += v20;
      --v13;
    }

    while (v13);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v27 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + v27);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v30);
    OUTLINED_FUNCTION_12_40();
    v29 = v31;
    *(v1 + v27) = v31;
  }

  OUTLINED_FUNCTION_447(v29 + 56, &v32);
  *(v29 + 56) = v17;

  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.outputTensors.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.outputTensors.getter();
  *a1 = v3;
  return sub_2576F01D0;
}

uint64_t sub_2576F01E8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t NeuralNetwork.Layer.isUpdatable.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296(v1 + 64, v3);
  return *(v1 + 64);
}

uint64_t NeuralNetwork.Layer.isUpdatable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  result = OUTLINED_FUNCTION_237_0(v7 + 64, v6);
  *(v7 + 64) = a1 & 1;
  return result;
}

void (*NeuralNetwork.Layer.isUpdatable.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 64, v1);
  *(v1 + 84) = *(v4 + 64);
  return sub_2576F0394;
}

void sub_2576F0394(uint64_t *a1, char a2)
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
    v11 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_12_40();
    v8 = v12;
    *(v10 + v9) = v12;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_447(v8 + 64, v3 + v13);
  *(v8 + 64) = v6;

  free(v3);
}

uint64_t NeuralNetwork.Layer.propertyDescriptions.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257743FF0;
  *(v7 + 32) = 1701667150;
  *(v7 + 40) = 0xE400000000000000;
  v8 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296(v8 + 16, v23);
  v9 = *(v8 + 24);
  *(v7 + 48) = *(v8 + 16);
  *(v7 + 56) = v9;
  *(v7 + 64) = 1684957515;
  *(v7 + 72) = 0xE400000000000000;

  NeuralNetwork.Layer.kind.getter(v6);
  v10 = NeuralNetwork.Layer.Kind.name.getter();
  v12 = v11;
  OUTLINED_FUNCTION_16_24();
  sub_2576F0AF8(v6, v13);
  *(v7 + 80) = v10;
  *(v7 + 88) = v12;
  v24 = v7;
  NeuralNetwork.Layer.kind.getter(v6);
  v14 = NeuralNetwork.Layer.Kind.propertyDescriptions.getter();
  sub_2576F0AF8(v6, v1);
  sub_25763CEB8(v14);
  OUTLINED_FUNCTION_296(v8 + 64, v22);
  v15 = v24;
  if (*(v8 + 64) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_66();
      sub_257469388();
      v15 = v20;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      OUTLINED_FUNCTION_1_69(v16);
      sub_257469388();
      v15 = v21;
    }

    *(v15 + 16) = v17 + 1;
    OUTLINED_FUNCTION_22_24(v15 + 32 * v17);
    *(v18 + 48) = 1702195828;
    *(v18 + 56) = 0xE400000000000000;
  }

  return v15;
}

uint64_t NeuralNetwork.Layer.namedWeights.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  NeuralNetwork.Layer.kind.getter(v3 - v2);
  v5 = NeuralNetwork.Layer.Kind.namedWeights.getter();
  OUTLINED_FUNCTION_3_66();
  sub_2576F0AF8(v4, v6);
  return v5;
}

void NeuralNetwork.Layer.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v26 = v2;
  v25 = sub_257743A84();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v24[1] = type metadata accessor for NeuralNetwork.Layer(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_2576F0BF4(v0, v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257748720;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  v12 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296(v12 + 16, &v30);
  v13 = *(v12 + 24);
  v14 = MEMORY[0x277D837D0];
  *(v11 + 48) = *(v12 + 16);
  *(v11 + 56) = v13;
  *(v11 + 72) = v14;
  *(v11 + 80) = 1684957547;
  *(v11 + 88) = 0xE400000000000000;
  *(v11 + 120) = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));

  NeuralNetwork.Layer.kind.getter(boxed_opaque_existential_0);
  *(v11 + 128) = 0x6D614E7475706E69;
  *(v11 + 136) = 0xEA00000000007365;
  OUTLINED_FUNCTION_296(v12 + 32, &v29);
  v16 = *(v12 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  *(v11 + 144) = v16;
  *(v11 + 168) = v17;
  strcpy((v11 + 176), "inputTensors");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;

  NeuralNetwork.Layer.inputTensors.getter();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881580, &qword_2577754C8);
  *(v11 + 192) = v19;
  *(v11 + 216) = v20;
  *(v11 + 224) = 0x614E74757074756FLL;
  *(v11 + 232) = 0xEB0000000073656DLL;
  OUTLINED_FUNCTION_296(v12 + 40, &v28);
  *(v11 + 240) = *(v12 + 40);
  *(v11 + 264) = v17;
  strcpy((v11 + 272), "outputTensors");
  *(v11 + 286) = -4864;

  NeuralNetwork.Layer.outputTensors.getter();
  *(v11 + 288) = v21;
  *(v11 + 312) = v20;
  *(v11 + 320) = 0x6174616470557369;
  *(v11 + 328) = 0xEB00000000656C62;
  OUTLINED_FUNCTION_296(v12 + 64, &v27);
  v22 = *(v12 + 64);
  *(v11 + 360) = MEMORY[0x277D839B0];
  *(v11 + 336) = v22;
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v25);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F0A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576F0A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881578, &qword_2577754C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576F0AF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576F0B50(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for NeuralNetwork.Layer(uint64_t a1)
{
  result = qword_27F881588;
  if (!qword_27F881588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576F0BF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

unint64_t sub_2576F0C50()
{
  result = qword_27F87E4E0;
  if (!qword_27F87E4E0)
  {
    type metadata accessor for Proto_NeuralNetworkLayer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E4E0);
  }

  return result;
}

uint64_t sub_2576F0CD0(uint64_t a1)
{
  result = type metadata accessor for Proto_NeuralNetworkLayer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_75(uint64_t a1, uint64_t a2)
{

  return sub_2576F0B50(v2, a2);
}

void OUTLINED_FUNCTION_12_40()
{

  sub_2575435B4();
}

uint64_t OUTLINED_FUNCTION_14_26()
{
  *(v4 + 16) = v3;
  v6 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;

  return sub_2576F0B50(v2, v6);
}

void OUTLINED_FUNCTION_25_23()
{
  *(v0 + 112) = 34;
  *(v0 + 120) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_25752846C();
}

void OUTLINED_FUNCTION_46_11(uint64_t a1)
{

  sub_257484490(a1, v1, 1);
}

void sub_2576F0F64()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99_3();
  v12 = *(v3 + *(type metadata accessor for Proto_MILSpec_ValueType(0) + 20));
  v13 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  OUTLINED_FUNCTION_296(v12 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v21);
  sub_257487308(v12 + v13);
  v14 = OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_155(v14, v15, v9);
  if (v16)
  {
    sub_2574695E4(v0, &qword_27F879D40, &qword_257744660);
    v19 = OUTLINED_FUNCTION_120_1();
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    OUTLINED_FUNCTION_6_53();
    sub_2576FA218(v3, v17);
  }

  else
  {
    OUTLINED_FUNCTION_6_53();
    sub_2576FA218(v3, v18);
    sub_2576FBBA0();
    sub_2576FBBA0();
    sub_2576F5254(v1);
    v19 = v20;
  }

  *v5 = v19;
  OUTLINED_FUNCTION_35();
}

void FeatureType.init(_:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for SizeRange(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_38();
  v17 = type metadata accessor for MLProgram.ValueType.TensorParameters(v16);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_196();
  v75 = v23;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for FeatureType(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v74 = (v28 - v27);
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      MLProgram.ValueType.ListParameters.type.getter();
      if (v76 >> 61)
      {

LABEL_18:
        OUTLINED_FUNCTION_18_38();
        sub_2576FA218(v8, v46);
        goto LABEL_2;
      }

      v41 = v25;
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();

      MLProgram.ValueType.TensorParameters.shape.getter();
      v43 = sub_257482A7C(v42, &unk_2868B34A8);

      if ((v43 & 1) == 0 || (sub_25773A738(&v76), v76 == 22))
      {
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v21, v44);
        OUTLINED_FUNCTION_18_38();
        sub_2576FA218(v8, v45);

        v25 = v41;
        goto LABEL_3;
      }

      v25 = v41;
      if (v76 > 0xEu || ((1 << v76) & 0x7BC0) == 0)
      {
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v21, v70);
        goto LABEL_18;
      }

      static FeatureType.sequenceOfInt(optional:)(0);
      OUTLINED_FUNCTION_2_65();
      sub_2576FA218(v21, v68);
      OUTLINED_FUNCTION_18_38();
      sub_2576FA218(v8, v69);
LABEL_34:

      sub_2576FBBA0();
      v29 = v3;
      v30 = 0;
LABEL_35:
      __swift_storeEnumTagSinglePayload(v29, v30, 1, v25);
      OUTLINED_FUNCTION_35();
      return;
    case 2:
    case 3:
    case 4:
LABEL_2:

LABEL_3:
      v29 = OUTLINED_FUNCTION_188();
      goto LABEL_35;
    default:
      v73 = v25;
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      sub_25773A738(&v76);
      v71 = byte_257775B9A[v76];
      MLProgram.ValueType.TensorParameters.shape.getter();
      v32 = v31;
      v33 = *(v31 + 16);
      v72 = v3;
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
        sub_257483724(v34, v33, 0);
        v35 = v76;
        v36 = *(v76 + 16);
        v37 = (v32 + 40);
        do
        {
          if (*v37)
          {
            v38 = 0;
          }

          else
          {
            v38 = *(v37 - 1);
          }

          v76 = v35;
          v39 = *(v35 + 24);
          if (v36 >= v39 >> 1)
          {
            v40 = OUTLINED_FUNCTION_13_1(v39);
            sub_257483724(v40, v36 + 1, 1);
            v35 = v76;
          }

          *(v35 + 16) = v36 + 1;
          *(v35 + 8 * v36 + 32) = v38;
          v37 += 16;
          ++v36;
          --v33;
        }

        while (v33);

        v3 = v72;
      }

      else
      {

        v35 = MEMORY[0x277D84F90];
      }

      v25 = v73;
      if (sub_2576F1A38(0, v35))
      {
        v47 = *(v35 + 16);
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
          sub_257484640(v48, v47, 0);
          v49 = v76;
          type metadata accessor for Proto_SizeRange(0);
          v50 = 32;
          do
          {
            v51 = *(v35 + v50);
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            if (v51)
            {
              v52 = v51;
              if (v51 < 0)
              {
                __break(1u);
                return;
              }
            }

            else
            {
              v52 = -1;
              v51 = 1;
            }

            *v13 = v51;
            v13[1] = v52;
            v76 = v49;
            v54 = *(v49 + 16);
            v53 = *(v49 + 24);
            if (v54 >= v53 >> 1)
            {
              v55 = OUTLINED_FUNCTION_13_1(v53);
              sub_257484640(v55, v54 + 1, 1);
              v49 = v76;
            }

            *(v49 + 16) = v54 + 1;
            OUTLINED_FUNCTION_193();
            sub_2576FBBA0();
            v50 += 8;
            --v47;
          }

          while (v47);
        }

        v57 = &v74[*(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20)];
        *v57 = MEMORY[0x277D84F90];
        v58 = type metadata accessor for Proto_ArrayFeatureType(0);
        v59 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
        v63 = &v57[*(v58 + 28)];
        *v63 = 0;
        v63[8] = -1;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

        sub_2576A5D40();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v75, v64);

        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v65, v66, v67, v59);
        sub_25751BB28();
        *(v57 + 1) = qword_257775BB8[v71];
        v57[16] = 1;
        *v74 = 0;
        v3 = v72;
        v25 = v73;
      }

      else
      {
        LOBYTE(v76) = v71;
        FeatureType.ShapedArrayParameters.init(dataType:shape:optional:)(&v76, v35, 0, v74);
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v75, v56);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
  }
}

void sub_2576F17A0()
{
  OUTLINED_FUNCTION_433();
  v5 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_17_3();
  v11 = type metadata accessor for MLProgram.ValueType.TupleParameters(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_38();
  v14 = type metadata accessor for MLProgram.ValueType.ListParameters(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_14();
  v17 = type metadata accessor for MLProgram.ValueType.TensorParameters(v16);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_28();
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      v23 = sub_2576FA1C0();
      sub_2576F210C(v23);
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_18_38();
      v20 = v3;
      goto LABEL_7;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      sub_2576F2344();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_65_5();
      v20 = v2;
      goto LABEL_7;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      v22 = sub_2576FA1C0();
      sub_2576F4D1C(v22);
      OUTLINED_FUNCTION_39_5();
      v20 = OUTLINED_FUNCTION_62_7();
      goto LABEL_7;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      sub_2576F4F60();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_12_41();
      sub_2576FA218(v0, v21);
      goto LABEL_8;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      sub_2576F1B84();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_2_65();
      v20 = v4;
LABEL_7:
      sub_2576FA218(v20, v19);
LABEL_8:
      OUTLINED_FUNCTION_434();
      return;
  }
}

void MLProgram.ValueType.init()()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.ValueType.TensorParameters(v1);
  v2 = swift_allocBox();
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v2;
}

BOOL sub_2576F1A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2576F1A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 40);
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v3 += 2;
  }

  while (v6 != a1 || v5 != a2);
  return v4 != 0;
}

void static MLProgram.ValueType.tensor(dataType:shape:)(uint64_t *a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_120_1();

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *a3 = v4;
}

void static MLProgram.ValueType.dictionary(keyType:valueType:)(uint64_t *a3@<X8>)
{
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  v4 = swift_allocBox();

  MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
  *a3 = v4 | 0x6000000000000000;
}

void sub_2576F1B84()
{
  OUTLINED_FUNCTION_31();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  OUTLINED_FUNCTION_63();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_0();
  v57 = v3;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_167();
  v56 = v5;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_196();
  v55 = v7;
  MLProgram.ValueType.TensorParameters.shape.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v66 = MEMORY[0x277D84F90];
    sub_257483754(0, v10, 0);
    v11 = v66;
    v12 = (v9 + 40);
    do
    {
      v13 = *v12;
      v64 = *(v12 - 1);
      LOBYTE(v65) = v13;
      v14 = sub_257743674();
      v16 = v15;
      v66 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_257483754((v17 > 1), v18 + 1, 1);
        v11 = v66;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += 16;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v64 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  sub_257743604();

  MLProgram.ValueType.TensorParameters.attributes.getter();
  v21 = *(v20 + 16);

  if (v21)
  {
    MLProgram.ValueType.TensorParameters.attributes.getter();
    v64 = sub_2576A8BA8(v22, v23, v24, v25);
    sub_2576FA318(&v64);

    v26 = v64;
    v27 = *(v64 + 16);
    if (v27)
    {
      v64 = MEMORY[0x277D84F90];
      sub_257484060(0, v27, 0);
      v28 = v64;
      OUTLINED_FUNCTION_193();
      v30 = v26 + v29;
      v54 = *(v1 + 72);
      do
      {
        sub_257487308(v30);
        sub_257487308(v55);
        v62 = v56[1];
        v63 = *v56;
        v31 = *(v58 + 48);
        sub_257487308(v55);

        v32 = *(v58 + 48);
        sub_25771810C();
        v61 = v33;
        v60 = v34;
        v59 = v35;
        sub_2574695E4(v55, &qword_27F879D18, &unk_257775F30);
        sub_2576FA218(v57 + v32, type metadata accessor for MLProgram.Value);
        sub_2576FA218(v56 + v31, type metadata accessor for MLProgram.Value);
        v64 = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_174(v36);
          sub_257484060(v39, v37 + 1, 1);
          v28 = v64;
        }

        *(v28 + 16) = v37 + 1;
        v38 = v28 + 40 * v37;
        *(v38 + 32) = v63;
        *(v38 + 40) = v62;
        *(v38 + 48) = v61;
        *(v38 + 56) = v60;
        *(v38 + 64) = v59;
        v30 += v54;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_45_11(inited, xmmword_257743FF0);
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_114_1();
    if (v42)
    {
      v47 = v48;
    }

    LOBYTE(v66) = v47;
    v49 = MLProgram.DataType.debugDescription.getter();
    MEMORY[0x259C64E90](v49);

    v50 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v50);
    v51 = OUTLINED_FUNCTION_294();
    MEMORY[0x259C64E90](v51);

    OUTLINED_FUNCTION_113_1();
    v52 = v65;
    inited[3].n128_u64[0] = v64;
    inited[3].n128_u64[1] = v52;
    inited[4].n128_u8[0] = 0;
    inited[4].n128_u64[1] = 0x7475626972747441;
    inited[5].n128_u64[0] = 0xEA00000000007365;
    inited[5].n128_u64[1] = sub_2576AACFC(v28);
    inited[6].n128_u64[0] = v53;
    inited[6].n128_u8[8] = 2;
    sub_2576A6964(inited);
  }

  else
  {
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_114_1();
    if (v42)
    {
      v40 = v41;
    }

    LOBYTE(v66) = v40;
    v43 = MLProgram.DataType.debugDescription.getter();
    MEMORY[0x259C64E90](v43);

    v44 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v44);
    v45 = OUTLINED_FUNCTION_294();
    MEMORY[0x259C64E90](v45);

    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F210C(uint64_t a1)
{
  MLProgram.ValueType.ListParameters.type.getter();
  sub_2576F17A0();
  v2 = v1;
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_176();
    sub_257483A28(v4, v5, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    v8 = OUTLINED_FUNCTION_45_11(inited, xmmword_2577442C0);
    v9 = OUTLINED_FUNCTION_83_4(v8, xmmword_257775550);
    v9[4].n128_u64[1] = v11;
    v9[5].n128_u64[0] = v10 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    MLProgram.ValueType.ListParameters.type.getter();
    v27 = v25;
    sub_2576F17A0();
    OUTLINED_FUNCTION_39_5();
    v13 = v12;

    inited[5].n128_u64[1] = &v27;
    inited[6].n128_u64[0] = v2;
    inited[6].n128_u8[8] = v13;
    inited[7].n128_u64[0] = 0x6874676E654CLL;
    inited[7].n128_u64[1] = 0xE600000000000000;
    MLProgram.ValueType.ListParameters.length.getter();
    if (v26 == 1)
    {
      if (v25)
      {
        v14 = 3026478;
      }

      else
      {
        v14 = 63;
      }

      if (v25)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v15 = 0xE100000000000000;
      }
    }

    else
    {
      v14 = sub_257743974();
    }

    inited[8].n128_u64[0] = v14;
    inited[8].n128_u64[1] = v15;
    inited[9].n128_u8[0] = 0;
    return sub_2576A6964(inited);
  }

  else
  {

    v16 = OUTLINED_FUNCTION_176();
    MEMORY[0x259C64E90](v16);
    v17 = OUTLINED_FUNCTION_176();
    sub_257483A28(v17, v18, 0);
    v19 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v19);
    MLProgram.ValueType.ListParameters.length.getter();
    if (v24 == 1)
    {
      if (v25)
      {
        v20 = 3026478;
      }

      else
      {
        v20 = 63;
      }

      if (v25)
      {
        v21 = 0xE300000000000000;
      }

      else
      {
        v21 = 0xE100000000000000;
      }
    }

    else
    {
      v27 = v25;
      v20 = sub_257743974();
      v21 = v23;
    }

    MEMORY[0x259C64E90](v20, v21);

    OUTLINED_FUNCTION_113_1();
    return 0x3C7473694CLL;
  }
}

void sub_2576F2344()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25_0();
  v465 = v5;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  v481 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  v499 = v9;
  OUTLINED_FUNCTION_158();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v446 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_196();
  v505 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v507 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v464 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  v462 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v479 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v478 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v500 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  v497 = v28;
  OUTLINED_FUNCTION_158();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v446 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_167();
  v466 = v33;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_167();
  v486 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_167();
  v482 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  v506 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_196();
  v501 = v41;
  v42 = OUTLINED_FUNCTION_153();
  v521 = type metadata accessor for Proto_MILSpec_ValueType(v42);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  v453 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_167();
  v463 = v46;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_167();
  v480 = v48;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_167();
  v498 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  v456 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_167();
  v469 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_167();
  v485 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_196();
  v504 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v60 = OUTLINED_FUNCTION_13(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  v457 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_167();
  v455 = v63;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_167();
  v467 = v65;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_167();
  v468 = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_167();
  v483 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_167();
  v484 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_167();
  v502 = v73;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_167();
  v503 = v75;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_167();
  v458 = v77;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_167();
  v460 = v79;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_167();
  v470 = v81;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_167();
  v472 = v83;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_167();
  v487 = v85;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_167();
  v490 = v87;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_167();
  v510 = v89;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_196();
  v513.n128_u64[0] = v91;
  v92 = OUTLINED_FUNCTION_153();
  v476 = type metadata accessor for MLProgram.ValueType.StateParameters(v92);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_25_0();
  v459 = v94;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_167();
  v471 = v96;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_167();
  v489 = v98;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_167();
  v488 = v100;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_167();
  v512 = v102;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_167();
  v454 = v104;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_167();
  v461 = v106;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_167();
  v477 = v108;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_167();
  v496 = v110;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_167();
  v495 = v112;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_196();
  v520 = v114;
  v115 = OUTLINED_FUNCTION_153();
  v475 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v115);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_25_0();
  v494 = v117;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_196();
  v517 = v119;
  v120 = OUTLINED_FUNCTION_153();
  v474 = type metadata accessor for MLProgram.ValueType.TupleParameters(v120);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_25_0();
  v493 = v122;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_196();
  v516 = v124;
  v125 = OUTLINED_FUNCTION_153();
  v473 = type metadata accessor for MLProgram.ValueType.ListParameters(v125);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_25_0();
  v492 = v127;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_196();
  v515 = v129;
  v130 = OUTLINED_FUNCTION_153();
  v514 = type metadata accessor for MLProgram.ValueType.TensorParameters(v130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_3();
  v522 = v133 - v132;
  MLProgram.ValueType.TupleParameters.types.getter();
  v135 = v134;
  EnumTagSinglePayload = MEMORY[0x277D84F90];
  v137 = &xmmword_257744000;
  v138 = *(v134 + 16);
  if (v138)
  {
    v451 = v32;
    v452 = v1;
    v450 = v13;
    v491 = v0;
    v139 = OUTLINED_FUNCTION_102_2();
    sub_257484040(v139, v140, v141);
    v142 = 32;
    v143 = v537[0];
    v511 = xmmword_2577442B0;
    v523 = v135;
    while (1)
    {
      switch(*(v135 + v142) >> 61)
      {
        case 1:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          v144 = v515;
          v153 = sub_2576FA1C0();
          sub_2576F210C(v153);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_24_26();
          goto LABEL_10;
        case 2:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          v144 = v516;
          sub_2576FA1C0();
          sub_2576F2344();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_25_24();
          goto LABEL_10;
        case 3:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          v144 = v517;
          v152 = sub_2576FA1C0();
          sub_2576F4D1C(v152);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_23_27();
          goto LABEL_10;
        case 4:
          v519 = v143;
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          v147 = v520;
          sub_2576FA1C0();
          v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
          inited = swift_initStackObject();
          v518 = OUTLINED_FUNCTION_15_25(inited, v511);
          *(v518 + 40) = v149;
          v508 = type metadata accessor for Proto_MILSpec_StateType(0);
          v150 = *(v147->n128_i64 + *(v508 + 20));
          v151 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296(v150 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v539);
          EnumTagSinglePayload = v513.n128_u64[0];
          sub_257487308(v150 + v151);
          OUTLINED_FUNCTION_57_3();
          if (v135 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_27_23();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            v143 = v519;
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_153_0();
          sub_257487308(v154);
          v155 = OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_155(v155, v156, v147);
          if (v157)
          {
            v159 = v504;
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            v158 = v147[1].n128_i32[1];
            v143 = v519;
            if (qword_27F878FF0 != -1)
            {
              OUTLINED_FUNCTION_12_15();
              swift_once();
            }

            *(v159 + v158) = qword_27F87B038;
            OUTLINED_FUNCTION_111_2(v510, 1);
            if (v150 != 1)
            {
              sub_2574695E4(v510, &qword_27F879E10, &qword_257744730);
            }
          }

          else
          {
            OUTLINED_FUNCTION_14_27();
            v159 = v504;
            sub_2576FBBA0();
            v143 = v519;
          }

          OUTLINED_FUNCTION_94_3();
          v161 = *(v159 + v160);
          v162 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v161 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v529);
          v163 = v161 + v162;
          v135 = v159;
          EnumTagSinglePayload = &qword_27F879D40;
          sub_257487308(v163);
          v164 = OUTLINED_FUNCTION_78_3();
          v151 = v507;
          OUTLINED_FUNCTION_155(v164, v165, v507);
          if (!v157)
          {
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v135, v176);
            OUTLINED_FUNCTION_41_15();
            sub_2576FBBA0();
            sub_2576FBBA0();
            OUTLINED_FUNCTION_287_0();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            switch(EnumCaseMultiPayload)
            {
              case 1:
                OUTLINED_FUNCTION_8_39();
                v184 = v515;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_1_76();
                v185 = v492;
                v188 = sub_2576FA1C0();
                v170 = v185;
                sub_2576F210C(v188);
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_24_26();
                goto LABEL_34;
              case 2:
                OUTLINED_FUNCTION_10_45();
                v184 = v516;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_4_57();
                v185 = v493;
                sub_2576FA1C0();
                v170 = v185;
                sub_2576F2344();
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_25_24();
                goto LABEL_34;
              case 3:
                OUTLINED_FUNCTION_9_37();
                v184 = v517;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_3_67();
                v185 = v494;
                v187 = sub_2576FA1C0();
                v170 = v185;
                sub_2576F4D1C(v187);
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_23_27();
LABEL_34:
                v189 = v186;
                sub_2576FA218(v185, v186);
                sub_2576FA218(v184, v189);
                goto LABEL_21;
              case 4:
                OUTLINED_FUNCTION_11_39();
                sub_2576FBBA0();
                OUTLINED_FUNCTION_7_41();
                v178 = v496;
                sub_2576FA1C0();
                v179 = swift_initStackObject();
                v449 = OUTLINED_FUNCTION_15_25(v179, v511);
                OUTLINED_FUNCTION_95_3(v449, v180);
                v182 = *(v178 + v181);
                v183 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296(v182 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v528);
                EnumTagSinglePayload = v490;
                sub_257487308(v182 + v183);
                OUTLINED_FUNCTION_57_3();
                if (v135 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_27_23();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  v143 = v519;
                }

                else
                {
                  v190 = v487;
                  OUTLINED_FUNCTION_153_0();
                  sub_257487308(v191);
                  v192 = OUTLINED_FUNCTION_188();
                  OUTLINED_FUNCTION_155(v192, v193, v178);
                  if (v157)
                  {
                    v194 = v485;
                    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                    v195 = *(v178 + 20);
                    v143 = v519;
                    if (qword_27F878FF0 != -1)
                    {
                      OUTLINED_FUNCTION_12_15();
                      swift_once();
                    }

                    *(v194 + v195) = qword_27F87B038;
                    v196 = OUTLINED_FUNCTION_188();
                    OUTLINED_FUNCTION_111_2(v196, v197);
                    v198 = v194;
                    if (v195 != 1)
                    {
                      sub_2574695E4(v190, &qword_27F879E10, &qword_257744730);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_27();
                    v198 = v485;
                    sub_2576FBBA0();
                    v143 = v519;
                  }

                  OUTLINED_FUNCTION_94_3();
                  v200 = *(v198 + v199);
                  v135 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                  OUTLINED_FUNCTION_296(v200 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v527);
                  v201 = v200 + v135;
                  LOBYTE(v135) = v198;
                  EnumTagSinglePayload = &qword_27F879D40;
                  sub_257487308(v201);
                  v202 = OUTLINED_FUNCTION_78_3();
                  v183 = v507;
                  OUTLINED_FUNCTION_155(v202, v203, v507);
                  if (!v157)
                  {
                    OUTLINED_FUNCTION_6_53();
                    sub_2576FA218(v198, v211);
                    OUTLINED_FUNCTION_41_15();
                    sub_2576FBBA0();
                    sub_2576FBBA0();
                    OUTLINED_FUNCTION_287_0();
                    v212 = swift_getEnumCaseMultiPayload();
                    switch(v212)
                    {
                      case 1:
                        swift_allocBox();
                        OUTLINED_FUNCTION_8_39();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_1_76();
                        v220 = v515;
                        v223 = sub_2576FA1C0();
                        v170 = v220;
                        sub_2576F210C(v223);
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_24_26();
                        goto LABEL_54;
                      case 2:
                        swift_allocBox();
                        OUTLINED_FUNCTION_10_45();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_4_57();
                        v220 = v516;
                        sub_2576FA1C0();
                        v170 = v220;
                        sub_2576F2344();
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_25_24();
                        goto LABEL_54;
                      case 3:
                        swift_allocBox();
                        OUTLINED_FUNCTION_9_37();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_3_67();
                        v220 = v517;
                        v222 = sub_2576FA1C0();
                        v170 = v220;
                        sub_2576F4D1C(v222);
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_23_27();
LABEL_54:
                        sub_2576FA218(v220, v221);
                        goto LABEL_45;
                      case 4:
                        v448 = swift_allocBox();
                        LODWORD(v135) = v213;
                        OUTLINED_FUNCTION_11_39();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_7_41();
                        v214 = v477;
                        sub_2576FA1C0();
                        v215 = swift_initStackObject();
                        v447 = OUTLINED_FUNCTION_15_25(v215, v511);
                        OUTLINED_FUNCTION_95_3(v447, v216);
                        v218 = *(v214 + v217);
                        v219 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                        OUTLINED_FUNCTION_296(v218 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v526);
                        EnumTagSinglePayload = v472;
                        sub_257487308(v218 + v219);
                        OUTLINED_FUNCTION_57_3();
                        if (v135 == 1)
                        {
                          swift_allocBox();
                          OUTLINED_FUNCTION_27_23();
                          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                          v143 = v519;
LABEL_64:
                          swift_projectBox();
                          OUTLINED_FUNCTION_0_93();
                          OUTLINED_FUNCTION_101_4();
                          v170 = v219;
                          sub_2576F1B84();
                          OUTLINED_FUNCTION_32_6();
                          OUTLINED_FUNCTION_2_65();
                          sub_2576FA218(v219, v240);
                          v13 = v518;
                          v209 = v449;
                          goto LABEL_65;
                        }

                        sub_257487308(v218 + v219);
                        v225 = OUTLINED_FUNCTION_171_1();
                        OUTLINED_FUNCTION_155(v225, v226, v214);
                        if (v157)
                        {
                          v227 = v469;
                          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                          v228 = *(v214 + 20);
                          v143 = v519;
                          if (qword_27F878FF0 != -1)
                          {
                            OUTLINED_FUNCTION_12_15();
                            swift_once();
                          }

                          *(v227 + v228) = qword_27F87B038;
                          EnumTagSinglePayload = v470;
                          v229 = OUTLINED_FUNCTION_188();
                          OUTLINED_FUNCTION_111_2(v229, v230);
                          v231 = v227;
                          if (v228 != 1)
                          {
                            sub_2574695E4(EnumTagSinglePayload, &qword_27F879E10, &qword_257744730);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_14_27();
                          v231 = v469;
                          sub_2576FBBA0();
                          v143 = v519;
                        }

                        OUTLINED_FUNCTION_94_3();
                        v233 = *(v231 + v232);
                        v234 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                        OUTLINED_FUNCTION_296(v233 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v525);
                        v235 = v233 + v234;
                        v135 = v231;
                        v236 = v450;
                        sub_257487308(v235);
                        v237 = OUTLINED_FUNCTION_78_3();
                        v219 = v507;
                        OUTLINED_FUNCTION_155(v237, v238, v507);
                        if (v157)
                        {
                          sub_2574695E4(v236, &qword_27F879D40, &qword_257744660);
                          swift_allocBox();
                          OUTLINED_FUNCTION_27_23();
                          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                          OUTLINED_FUNCTION_6_53();
                          sub_2576FA218(v135, v239);
                          goto LABEL_64;
                        }

                        OUTLINED_FUNCTION_6_53();
                        sub_2576FA218(v135, v243);
                        OUTLINED_FUNCTION_41_15();
                        sub_2576FBBA0();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_287_0();
                        v244 = swift_getEnumCaseMultiPayload();
                        switch(v244)
                        {
                          case 1:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_8_39();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_1_76();
                            v252 = v515;
                            v255 = sub_2576FA1C0();
                            v170 = v252;
                            sub_2576F210C(v255);
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_24_26();
                            goto LABEL_73;
                          case 2:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_10_45();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_4_57();
                            v252 = v516;
                            sub_2576FA1C0();
                            v170 = v252;
                            sub_2576F2344();
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_25_24();
                            goto LABEL_73;
                          case 3:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_9_37();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_3_67();
                            v252 = v517;
                            v254 = sub_2576FA1C0();
                            v170 = v252;
                            sub_2576F4D1C(v254);
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_23_27();
LABEL_73:
                            sub_2576FA218(v252, v253);
                            v13 = v518;
                            v209 = v449;
                            break;
                          case 4:
                            v446[1] = swift_allocBox();
                            OUTLINED_FUNCTION_11_39();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_7_41();
                            v245 = v461;
                            sub_2576FA1C0();
                            v246 = swift_initStackObject();
                            v509 = OUTLINED_FUNCTION_15_25(v246, v511);
                            OUTLINED_FUNCTION_95_3(v509, v247);
                            EnumTagSinglePayload = *(v245 + v248);
                            v249 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                            OUTLINED_FUNCTION_296(EnumTagSinglePayload + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v524);
                            v250 = v460;
                            sub_257487308(EnumTagSinglePayload + v249);
                            v135 = v521;
                            LODWORD(v245) = __swift_getEnumTagSinglePayload(v250, 1, v521);
                            sub_2574695E4(v250, &qword_27F879E10, &qword_257744730);
                            if (v245 == 1)
                            {
                              swift_allocBox();
                              OUTLINED_FUNCTION_27_23();
                              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                              v536[0] = v250;
                              v143 = v519;
                              v251 = v509;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_103_3();
                              sub_257487308(v256);
                              v257 = OUTLINED_FUNCTION_78_3();
                              OUTLINED_FUNCTION_155(v257, v258, v135);
                              if (v157)
                              {
                                v249 = v456;
                                _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                                v259 = *(v135 + 20);
                                v260 = v135;
                                v143 = v519;
                                v251 = v509;
                                if (qword_27F878FF0 != -1)
                                {
                                  OUTLINED_FUNCTION_12_15();
                                  swift_once();
                                  v260 = v521;
                                }

                                *(v249 + v259) = qword_27F87B038;
                                v135 = v458;
                                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v458, 1, v260);

                                if (EnumTagSinglePayload != 1)
                                {
                                  sub_2574695E4(v135, &qword_27F879E10, &qword_257744730);
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_14_27();
                                v249 = v456;
                                sub_2576FBBA0();
                                v143 = v519;
                                v251 = v509;
                              }

                              sub_2576F0F64();
                              v250 = v536[0];
                            }

                            switch(v250 >> 61)
                            {
                              case 1uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_1_76();
                                v265 = v515;
                                v268 = sub_2576FA1C0();
                                v170 = v265;
                                sub_2576F210C(v268);
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_38_10();
                                goto LABEL_87;
                              case 2uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_4_57();
                                v265 = v516;
                                sub_2576FA1C0();
                                v170 = v265;
                                sub_2576F2344();
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_39_13();
                                goto LABEL_87;
                              case 3uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_3_67();
                                v265 = v517;
                                v267 = sub_2576FA1C0();
                                v170 = v265;
                                sub_2576F4D1C(v267);
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_37_15();
LABEL_87:
                                sub_2576FA218(v265, v266);
                                break;
                              case 4uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_7_41();
                                v263 = v454;
                                sub_2576FA1C0();
                                v170 = v263;
                                sub_2576F4F60();
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_12_41();
                                sub_2576FA218(v263, v264);
                                EnumTagSinglePayload = 2;
                                break;
                              default:
                                swift_projectBox();
                                OUTLINED_FUNCTION_0_93();
                                OUTLINED_FUNCTION_101_4();
                                v170 = v249;
                                sub_2576F1B84();
                                OUTLINED_FUNCTION_106_2();
                                EnumTagSinglePayload = v261;
                                OUTLINED_FUNCTION_2_65();
                                sub_2576FA218(v249, v262);
                                break;
                            }

                            *(v251 + 48) = v170;
                            *(v251 + 56) = v135;
                            *(v251 + 64) = EnumTagSinglePayload;
                            sub_2576A6964(v251);
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_12_41();
                            sub_2576FA218(v461, v269);
                            LOBYTE(v135) = 2;
                            v13 = v518;
                            v209 = v449;
                            break;
                          default:
                            swift_allocBox();
                            OUTLINED_FUNCTION_13_28();
                            sub_2576FBBA0();
                            goto LABEL_64;
                        }

LABEL_65:

                        v241 = v447;
                        v447[3].n128_u64[0] = v170;
                        v241[3].n128_u64[1] = EnumTagSinglePayload;
                        v241[4].n128_u8[0] = v135;
                        sub_2576A6964(v241);
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_12_41();
                        sub_2576FA218(v477, v242);
                        LOBYTE(v135) = 2;
                        break;
                      default:
                        swift_allocBox();
                        OUTLINED_FUNCTION_13_28();
                        sub_2576FBBA0();
                        goto LABEL_44;
                    }

                    goto LABEL_46;
                  }

                  OUTLINED_FUNCTION_153_0();
                  sub_2574695E4(v204, v205, v206);
                  swift_allocBox();
                  OUTLINED_FUNCTION_27_23();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_6_53();
                  sub_2576FA218(v198, v207);
                }

LABEL_44:
                swift_projectBox();
                OUTLINED_FUNCTION_0_93();
                OUTLINED_FUNCTION_101_4();
                v170 = v183;
                sub_2576F1B84();
                OUTLINED_FUNCTION_32_6();
                OUTLINED_FUNCTION_2_65();
                sub_2576FA218(v183, v208);
LABEL_45:
                v13 = v518;
                v209 = v449;
LABEL_46:

                v209[3].n128_u64[0] = v170;
                v209[3].n128_u64[1] = EnumTagSinglePayload;
                v209[4].n128_u8[0] = v135;
                sub_2576A6964(v209);
                OUTLINED_FUNCTION_16_25();
                v135 = v210;
                sub_2576FA218(v496, v210);
                sub_2576FA218(v495, v135);
                LOBYTE(v135) = 2;
                goto LABEL_22;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_13_28();
                sub_2576FBBA0();
                goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_153_0();
          sub_2574695E4(v166, v167, v168);
          swift_allocBox();
          OUTLINED_FUNCTION_27_23();
          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          OUTLINED_FUNCTION_6_53();
          sub_2576FA218(v135, v169);
LABEL_20:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          OUTLINED_FUNCTION_101_4();
          v170 = v151;
          sub_2576F1B84();
          OUTLINED_FUNCTION_32_6();
          OUTLINED_FUNCTION_2_65();
          sub_2576FA218(v151, v171);

LABEL_21:
          v13 = v518;
LABEL_22:
          *(v13 + 6) = v170;
          *(v13 + 7) = EnumTagSinglePayload;
          v13[64] = v135;
          sub_2576A6964(v13);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_12_41();
          sub_2576FA218(v520, v172);
          LOBYTE(v135) = 2;
LABEL_23:
          v537[0] = v143;
          v174 = v143[1].n128_u64[0];
          v173 = v143[1].n128_u64[1];
          v2 = (v174 + 1);
          if (v174 >= v173 >> 1)
          {
            v224 = OUTLINED_FUNCTION_174(v173);
            sub_257484040(v224, v174 + 1, 1);
            v143 = v537[0];
          }

          v143[1].n128_u64[0] = v2;
          v175 = v143 + 24 * v174;
          *(v175 + 4) = EnumTagSinglePayload;
          *(v175 + 5) = v13;
          v175[48] = v135;
          v142 += 8;
          --v138;
          v137 = &xmmword_257744000;
          v135 = v523;
          if (!v138)
          {

            EnumTagSinglePayload = MEMORY[0x277D84F90];
            goto LABEL_90;
          }

          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          v144 = v522;
          sub_2576FA1C0();
          sub_2576F1B84();
          OUTLINED_FUNCTION_61_5();
          LOBYTE(v135) = v145;
          v146 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_10:
          sub_2576FA218(v144, v146);
          goto LABEL_23;
      }
    }
  }

  v143 = MEMORY[0x277D84F90];
LABEL_90:
  v270 = v143[1].n128_u64[0];
  v271 = v270 + 1;
  v272 = 48;
  do
  {
    if (!--v271)
    {
      if (v270)
      {
        v423 = OUTLINED_FUNCTION_102_2();
        sub_257483754(v423, v424, v425);
        v426 = v537[0];
        v427 = v143 + 3;
        do
        {
          v428 = v427->n128_u8[0];
          v429 = OUTLINED_FUNCTION_287_0();
          sub_2576A8798(v429, v430, v428);
          v431 = OUTLINED_FUNCTION_287_0();
          sub_2576A7674(v431, v432, v428);
          v434 = v433;
          v436 = v435;
          v437 = OUTLINED_FUNCTION_287_0();
          sub_257483A28(v437, v438, v428);
          v537[0] = v426;
          v440 = *(v426 + 16);
          v439 = *(v426 + 24);
          if (v440 >= v439 >> 1)
          {
            v442 = OUTLINED_FUNCTION_174(v439);
            sub_257483754(v442, v440 + 1, 1);
            v426 = v537[0];
          }

          v427 = (v427 + 24);
          *(v426 + 16) = v440 + 1;
          v441 = v426 + 16 * v440;
          *(v441 + 32) = v434;
          *(v441 + 40) = v436;
          --v270;
        }

        while (v270);
      }

      else
      {

        v426 = MEMORY[0x277D84F90];
      }

      v537[0] = 0x3C656C707554;
      v537[1] = 0xE600000000000000;
      v536[0] = v426;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      OUTLINED_FUNCTION_105_1();
      v443 = sub_257743604();
      v445 = v444;

      MEMORY[0x259C64E90](v443, v445);

      OUTLINED_FUNCTION_113_1();
      goto LABEL_191;
    }

    v273 = v143->n128_u8[v272];
    v272 += 24;
  }

  while (!v273);

  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v274 = swift_initStackObject();
  v275 = OUTLINED_FUNCTION_45_11(v274, xmmword_257743FF0);
  v276 = OUTLINED_FUNCTION_83_4(v275, xmmword_257775560);
  v276[4].n128_u64[1] = v278;
  v276[5].n128_u64[0] = v277 & 0xFFFF0000FFFFLL | 0xEB00000000730000;
  MLProgram.ValueType.TupleParameters.types.getter();
  v280 = v279;
  v281 = *(v279 + 16);
  if (v281)
  {
    v510 = v274;
    v538 = EnumTagSinglePayload;
    sub_257484040(0, v281, 0);
    v282 = 4;
    v283 = v538;
    v513 = v137[43];
    v523 = v280;
    while (2)
    {
      switch(v280[v282] >> 61)
      {
        case 1uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          v284 = v515;
          v295 = sub_2576FA1C0();
          sub_2576F210C(v295);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_35_16();
          goto LABEL_102;
        case 2uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          v284 = v516;
          sub_2576FA1C0();
          sub_2576F2344();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_36_16();
          goto LABEL_102;
        case 3uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          v284 = v517;
          v294 = sub_2576FA1C0();
          sub_2576F4D1C(v294);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_34_15();
          goto LABEL_102;
        case 4uLL:
          v520 = v281;
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          v287 = v512;
          sub_2576FA1C0();
          v288 = swift_initStackObject();
          v519 = OUTLINED_FUNCTION_15_25(v288, v513);
          v519[2].n128_u64[1] = v289;
          v511.n128_u64[0] = type metadata accessor for Proto_MILSpec_StateType(0);
          EnumTagSinglePayload = *(v287 + *(v511.n128_u64[0] + 20));
          v2 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296(EnumTagSinglePayload + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, v537);
          v290 = v503;
          sub_257487308(v2 + EnumTagSinglePayload);
          v291 = OUTLINED_FUNCTION_78_3();
          v292 = v521;
          v280 = __swift_getEnumTagSinglePayload(v291, v293, v521);
          sub_2574695E4(v290, &qword_27F879E10, &qword_257744730);
          if (v280 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            v281 = v520;
LABEL_116:
            swift_projectBox();
            OUTLINED_FUNCTION_0_93();
            OUTLINED_FUNCTION_101_4();
            v311 = v292;
            sub_2576F1B84();
            OUTLINED_FUNCTION_39_5();
            LOBYTE(v2) = v312;
            OUTLINED_FUNCTION_2_65();
            sub_2576FA218(v292, v313);

            goto LABEL_117;
          }

          sub_257487308(v2 + EnumTagSinglePayload);
          v299 = OUTLINED_FUNCTION_78_3();
          OUTLINED_FUNCTION_155(v299, v300, v292);
          v280 = &qword_27F879D40;
          if (v157)
          {
            v2 = v498;
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            v301 = *(v292 + 20);
            if (qword_27F878FF0 != -1)
            {
              OUTLINED_FUNCTION_12_15();
              swift_once();
              v292 = v521;
            }

            *(v2 + v301) = qword_27F87B038;
            v302 = __swift_getEnumTagSinglePayload(v502, 1, v292);

            v292 = v2;
            v281 = v520;
            if (v302 != 1)
            {
              sub_2574695E4(v502, &qword_27F879E10, &qword_257744730);
            }
          }

          else
          {
            OUTLINED_FUNCTION_14_27();
            v292 = v498;
            sub_2576FBBA0();
            v281 = v520;
          }

          OUTLINED_FUNCTION_94_3();
          v304 = *(v292 + v303);
          v305 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v304 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, v536);
          v306 = v304 + v305;
          v307 = v499;
          sub_257487308(v306);
          v308 = OUTLINED_FUNCTION_33_5();
          EnumTagSinglePayload = v507;
          OUTLINED_FUNCTION_155(v308, v309, v507);
          if (v157)
          {
            sub_2574695E4(v307, &qword_27F879D40, &qword_257744660);
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v292, v310);
            goto LABEL_116;
          }

          OUTLINED_FUNCTION_6_53();
          sub_2576FA218(v292, v316);
          OUTLINED_FUNCTION_40_13();
          sub_2576FBBA0();
          v292 = v500;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_415();
          v317 = swift_getEnumCaseMultiPayload();
          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          v284 = v522;
          sub_2576FA1C0();
          sub_2576F1B84();
          OUTLINED_FUNCTION_61_5();
          LOBYTE(v2) = v285;
          v286 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_102:
          sub_2576FA218(v284, v286);
          goto LABEL_103;
      }

      switch(v317)
      {
        case 1:
          OUTLINED_FUNCTION_8_39();
          v280 = v515;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_1_76();
          v329 = v492;
          v332 = sub_2576FA1C0();
          v311 = v329;
          sub_2576F210C(v332);
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_35_16();
          goto LABEL_125;
        case 2:
          OUTLINED_FUNCTION_10_45();
          v280 = v516;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_4_57();
          v329 = v493;
          sub_2576FA1C0();
          v311 = v329;
          sub_2576F2344();
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_36_16();
          goto LABEL_125;
        case 3:
          OUTLINED_FUNCTION_9_37();
          v280 = v517;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_3_67();
          v329 = v494;
          v331 = sub_2576FA1C0();
          v311 = v329;
          sub_2576F4D1C(v331);
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_34_15();
LABEL_125:
          v333 = v330;
          sub_2576FA218(v329, v330);
          sub_2576FA218(v280, v333);
          goto LABEL_117;
        case 4:
          OUTLINED_FUNCTION_11_39();
          sub_2576FBBA0();
          OUTLINED_FUNCTION_7_41();
          v318 = v489;
          sub_2576FA1C0();
          v319 = swift_initStackObject();
          v520 = OUTLINED_FUNCTION_15_25(v319, v513);
          OUTLINED_FUNCTION_96_4(v520, v320);
          EnumTagSinglePayload = *(v318 + v321);
          v2 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296(EnumTagSinglePayload + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v535);
          v322 = v484;
          sub_257487308(v2 + EnumTagSinglePayload);
          v323 = OUTLINED_FUNCTION_171_1();
          v325 = __swift_getEnumTagSinglePayload(v323, v324, v521);
          OUTLINED_FUNCTION_103_3();
          sub_2574695E4(v326, v327, v328);
          if (v325 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          }

          else
          {
            OUTLINED_FUNCTION_92_3(v2 + EnumTagSinglePayload);
            v334 = OUTLINED_FUNCTION_33_5();
            v335 = v521;
            OUTLINED_FUNCTION_155(v334, v336, v521);
            if (v157)
            {
              v322 = v480;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v337 = *(v335 + 20);
              v338 = v335;
              v280 = &qword_257744660;
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
                v338 = v521;
              }

              *(v322 + v337) = qword_27F87B038;
              v339 = __swift_getEnumTagSinglePayload(v483, 1, v338);

              if (v339 != 1)
              {
                sub_2574695E4(v483, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_27();
              v322 = v480;
              sub_2576FBBA0();
              v280 = &qword_257744660;
            }

            OUTLINED_FUNCTION_94_3();
            v341 = *(v322 + v340);
            v342 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
            OUTLINED_FUNCTION_296(v341 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v534);
            v343 = v341 + v342;
            v325 = v481;
            OUTLINED_FUNCTION_92_3(v343);
            v344 = OUTLINED_FUNCTION_33_5();
            EnumTagSinglePayload = v507;
            OUTLINED_FUNCTION_155(v344, v345, v507);
            if (!v157)
            {
              OUTLINED_FUNCTION_6_53();
              sub_2576FA218(v322, v355);
              OUTLINED_FUNCTION_40_13();
              sub_2576FBBA0();
              v322 = v479;
              sub_2576FBBA0();
              OUTLINED_FUNCTION_415();
              v356 = swift_getEnumCaseMultiPayload();
              switch(v356)
              {
                case 1:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_8_39();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_1_76();
                  v369 = v515;
                  v372 = sub_2576FA1C0();
                  v311 = v369;
                  sub_2576F210C(v372);
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_35_16();
                  goto LABEL_145;
                case 2:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_10_45();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_4_57();
                  v369 = v516;
                  sub_2576FA1C0();
                  v311 = v369;
                  sub_2576F2344();
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_36_16();
                  goto LABEL_145;
                case 3:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_9_37();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_3_67();
                  v369 = v517;
                  v371 = sub_2576FA1C0();
                  v311 = v369;
                  sub_2576F4D1C(v371);
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_34_15();
LABEL_145:
                  sub_2576FA218(v369, v370);
                  goto LABEL_136;
                case 4:
                  v509 = swift_allocBox();
                  OUTLINED_FUNCTION_11_39();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_7_41();
                  v357 = v471;
                  sub_2576FA1C0();
                  v358 = swift_initStackObject();
                  v508 = OUTLINED_FUNCTION_15_25(v358, v513);
                  OUTLINED_FUNCTION_96_4(v508, v359);
                  v361 = *(v357 + v360);
                  v2 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                  OUTLINED_FUNCTION_296(v361 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v533);
                  v362 = v468;
                  sub_257487308(v2 + v361);
                  v363 = OUTLINED_FUNCTION_171_1();
                  v365 = __swift_getEnumTagSinglePayload(v363, v364, v521);
                  OUTLINED_FUNCTION_103_3();
                  sub_2574695E4(v366, v367, v368);
                  if (v365 == 1)
                  {
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_17();
                    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                    goto LABEL_155;
                  }

                  OUTLINED_FUNCTION_92_3(v2 + v361);
                  v373 = OUTLINED_FUNCTION_33_5();
                  v374 = v521;
                  OUTLINED_FUNCTION_155(v373, v375, v521);
                  if (v157)
                  {
                    v362 = v463;
                    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                    v376 = *(v374 + 20);
                    v377 = v374;
                    if (qword_27F878FF0 != -1)
                    {
                      OUTLINED_FUNCTION_12_15();
                      swift_once();
                      v377 = v521;
                    }

                    *(v362 + v376) = qword_27F87B038;
                    v378 = __swift_getEnumTagSinglePayload(v467, 1, v377);

                    if (v378 != 1)
                    {
                      sub_2574695E4(v467, &qword_27F879E10, &qword_257744730);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_27();
                    v362 = v463;
                    sub_2576FBBA0();
                  }

                  OUTLINED_FUNCTION_94_3();
                  v380 = *(v362 + v379);
                  v381 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                  OUTLINED_FUNCTION_296(v380 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v532);
                  OUTLINED_FUNCTION_92_3(v380 + v381);
                  v382 = OUTLINED_FUNCTION_33_5();
                  EnumTagSinglePayload = v507;
                  OUTLINED_FUNCTION_155(v382, v383, v507);
                  if (v157)
                  {
                    OUTLINED_FUNCTION_103_3();
                    sub_2574695E4(v384, v385, v386);
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_17();
                    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                    OUTLINED_FUNCTION_6_53();
                    sub_2576FA218(v362, v387);
LABEL_155:
                    v280 = v509;
LABEL_156:
                    swift_projectBox();
                    OUTLINED_FUNCTION_0_93();
                    OUTLINED_FUNCTION_101_4();
                    v311 = v362;
                    sub_2576F1B84();
                    OUTLINED_FUNCTION_69_4();
                    EnumTagSinglePayload = v388;
                    OUTLINED_FUNCTION_2_65();
                    sub_2576FA218(v362, v389);
                    goto LABEL_157;
                  }

                  OUTLINED_FUNCTION_6_53();
                  sub_2576FA218(v362, v392);
                  OUTLINED_FUNCTION_40_13();
                  sub_2576FBBA0();
                  v362 = v464;
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_415();
                  v393 = swift_getEnumCaseMultiPayload();
                  v280 = v509;
                  switch(v393)
                  {
                    case 1:
                      swift_allocBox();
                      OUTLINED_FUNCTION_8_39();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_1_76();
                      v404 = v515;
                      v407 = sub_2576FA1C0();
                      v311 = v404;
                      sub_2576F210C(v407);
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_38_10();
                      goto LABEL_165;
                    case 2:
                      swift_allocBox();
                      OUTLINED_FUNCTION_10_45();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_4_57();
                      v404 = v516;
                      sub_2576FA1C0();
                      v311 = v404;
                      sub_2576F2344();
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_39_13();
                      goto LABEL_165;
                    case 3:
                      swift_allocBox();
                      OUTLINED_FUNCTION_9_37();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_3_67();
                      v404 = v517;
                      v406 = sub_2576FA1C0();
                      v311 = v404;
                      sub_2576F4D1C(v406);
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_37_15();
LABEL_165:
                      sub_2576FA218(v404, v405);
                      break;
                    case 4:
                      v506 = swift_allocBox();
                      OUTLINED_FUNCTION_11_39();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_7_41();
                      v394 = v459;
                      sub_2576FA1C0();
                      v395 = swift_initStackObject();
                      v505 = OUTLINED_FUNCTION_15_25(v395, v513);
                      OUTLINED_FUNCTION_96_4(v505, v396);
                      v398 = *(v394 + v397);
                      v399 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                      OUTLINED_FUNCTION_296(v398 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v530);
                      v400 = v455;
                      sub_257487308(v398 + v399);
                      v401 = v521;
                      LODWORD(v394) = __swift_getEnumTagSinglePayload(v400, 1, v521);
                      v402 = v400;
                      v2 = &qword_27F879E10;
                      sub_2574695E4(v402, &qword_27F879E10, &qword_257744730);
                      if (v394 == 1)
                      {
                        swift_allocBox();
                        OUTLINED_FUNCTION_26_17();
                        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                        v531 = v398;
                        v280 = v509;
                        v403 = v506;
                      }

                      else
                      {
                        sub_257487308(v398 + v399);
                        v408 = OUTLINED_FUNCTION_78_3();
                        OUTLINED_FUNCTION_155(v408, v409, v401);
                        if (v157)
                        {
                          v399 = v453;
                          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                          v410 = v521;
                          v411 = *(v521 + 20);
                          if (qword_27F878FF0 != -1)
                          {
                            OUTLINED_FUNCTION_12_15();
                            swift_once();
                            v410 = v521;
                          }

                          *(v399 + v411) = qword_27F87B038;
                          v412 = __swift_getEnumTagSinglePayload(v457, 1, v410);

                          v280 = v509;
                          v403 = v506;
                          if (v412 != 1)
                          {
                            sub_2574695E4(v457, &qword_27F879E10, &qword_257744730);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_14_27();
                          LOBYTE(v399) = v453;
                          sub_2576FBBA0();
                          v280 = v509;
                          v403 = v506;
                        }

                        sub_2576F0F64();
                        v398 = v531;
                      }

                      switch(v398 >> 61)
                      {
                        case 1uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_1_76();
                          v417 = v515;
                          v420 = sub_2576FA1C0();
                          v311 = v417;
                          sub_2576F210C(v420);
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_38_10();
                          goto LABEL_179;
                        case 2uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_4_57();
                          v417 = v516;
                          sub_2576FA1C0();
                          v311 = v417;
                          sub_2576F2344();
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_39_13();
                          goto LABEL_179;
                        case 3uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_3_67();
                          v417 = v517;
                          v419 = sub_2576FA1C0();
                          v311 = v417;
                          sub_2576F4D1C(v419);
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_37_15();
LABEL_179:
                          sub_2576FA218(v417, v418);
                          break;
                        case 4uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_7_41();
                          v415 = v454;
                          sub_2576FA1C0();
                          v311 = v415;
                          sub_2576F4F60();
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_12_41();
                          sub_2576FA218(v415, v416);
                          LOBYTE(v399) = 2;
                          break;
                        default:
                          swift_projectBox();
                          OUTLINED_FUNCTION_0_93();
                          OUTLINED_FUNCTION_101_4();
                          v311 = v403;
                          sub_2576F1B84();
                          OUTLINED_FUNCTION_69_4();
                          LOBYTE(v399) = v413;
                          OUTLINED_FUNCTION_2_65();
                          sub_2576FA218(v403, v414);
                          v511.n128_u64[0] = v398 & 0x1FFFFFFFFFFFFFFFLL;
                          break;
                      }

                      v421 = v505;
                      v505[3].n128_u64[0] = v311;
                      v421[3].n128_u64[1] = &qword_27F879E10;
                      v421[4].n128_u8[0] = v399;
                      sub_2576A6964(v421);
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_12_41();
                      sub_2576FA218(v459, v422);
                      EnumTagSinglePayload = 2;
                      break;
                    default:
                      swift_allocBox();
                      OUTLINED_FUNCTION_13_28();
                      sub_2576FBBA0();
                      goto LABEL_156;
                  }

LABEL_157:
                  v352 = v520;

                  v390 = v508;
                  *(v508 + 48) = v311;
                  *(v390 + 56) = v2;
                  *(v390 + 64) = EnumTagSinglePayload;
                  sub_2576A6964(v390);
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_12_41();
                  sub_2576FA218(v471, v391);
                  LOBYTE(v2) = 2;
                  break;
                default:
                  v325 = swift_allocBox();
                  OUTLINED_FUNCTION_13_28();
                  sub_2576FBBA0();
                  goto LABEL_135;
              }

LABEL_137:

              v352[3].n128_u64[0] = v311;
              v352[3].n128_u64[1] = EnumTagSinglePayload;
              v352[4].n128_u8[0] = v2;
              sub_2576A6964(v352);
              OUTLINED_FUNCTION_16_25();
              v354 = v353;
              sub_2576FA218(v489, v353);
              sub_2576FA218(v488, v354);
              LOBYTE(v2) = 2;
LABEL_117:
              v314 = v519;
              v519[3].n128_u64[0] = v311;
              *(v314 + 56) = EnumTagSinglePayload;
              *(v314 + 64) = v2;
              sub_2576A6964(v314);
              OUTLINED_FUNCTION_61_5();
              OUTLINED_FUNCTION_12_41();
              sub_2576FA218(v512, v315);
              LOBYTE(v2) = 2;
LABEL_103:
              v538 = v283;
              v297 = *(v283 + 16);
              v296 = *(v283 + 24);
              if (v297 >= v296 >> 1)
              {
                sub_257484040((v296 > 1), v297 + 1, 1);
                v283 = v538;
              }

              *(v283 + 16) = v297 + 1;
              v298 = v283 + 24 * v297;
              *(v298 + 32) = EnumTagSinglePayload;
              *(v298 + 40) = v280;
              *(v298 + 48) = v2;
              ++v282;
              v281 = (v281 - 1);
              v280 = v523;
              if (!v281)
              {

                v274 = v510;
                goto LABEL_190;
              }

              continue;
            }

            OUTLINED_FUNCTION_103_3();
            sub_2574695E4(v346, v347, v348);
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v322, v349);
          }

LABEL_135:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          OUTLINED_FUNCTION_101_4();
          v311 = v322;
          sub_2576F1B84();
          OUTLINED_FUNCTION_39_5();
          LOBYTE(v2) = v350;
          OUTLINED_FUNCTION_2_65();
          sub_2576FA218(v322, v351);
          v280 = (v325 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_136:
          v352 = v520;
          goto LABEL_137;
        default:
          swift_allocBox();
          OUTLINED_FUNCTION_13_28();
          sub_2576FBBA0();
          goto LABEL_116;
      }
    }
  }

  v283 = MEMORY[0x277D84F90];
LABEL_190:
  v274[5].n128_u64[1] = v283;
  v274[6].n128_u64[0] = 0;
  v274[6].n128_u8[8] = 1;
  sub_2576A6964(v274);
LABEL_191:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F4D1C(uint64_t a1)
{
  MLProgram.ValueType.DictionaryParameters.keyType.getter(a1);
  v34 = v33;
  sub_2576F17A0();
  v2 = v1;
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_176();
    sub_257483A28(v4, v5, v6);
  }

  else
  {

    MLProgram.ValueType.DictionaryParameters.valueType.getter(v7);
    v34 = v33;
    sub_2576F17A0();
    if (!v8)
    {

      sub_257743834();

      v26 = OUTLINED_FUNCTION_176();
      MEMORY[0x259C64E90](v26);
      v27 = OUTLINED_FUNCTION_176();
      sub_257483A28(v27, v28, 0);
      v29 = OUTLINED_FUNCTION_105_1();
      MEMORY[0x259C64E90](v29);
      v30 = OUTLINED_FUNCTION_294();
      MEMORY[0x259C64E90](v30);
      v31 = OUTLINED_FUNCTION_294();
      sub_257483A28(v31, v32, 0);
      OUTLINED_FUNCTION_113_1();
      return 0x616E6F6974636944;
    }

    v9 = OUTLINED_FUNCTION_294();
    sub_257483A28(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_176();
    sub_257483A28(v12, v13, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_45_11(inited, xmmword_2577442C0);
  v15[3] = xmmword_257775570;
  v15[4].n128_u8[0] = 0;
  v15[4].n128_u64[1] = 0x657079542079654BLL;
  v15[5].n128_u64[0] = 0xE800000000000000;
  MLProgram.ValueType.DictionaryParameters.keyType.getter(v15);
  v34 = v33;
  sub_2576F17A0();
  OUTLINED_FUNCTION_39_5();
  v17 = v16;

  inited[5].n128_u64[1] = &v34;
  inited[6].n128_u64[0] = v2;
  inited[6].n128_u8[8] = v17;
  inited[7].n128_u64[0] = 0x79542065756C6156;
  inited[7].n128_u64[1] = 0xEA00000000006570;
  MLProgram.ValueType.DictionaryParameters.valueType.getter(v18);
  sub_2576F17A0();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  inited[8].n128_u64[0] = v20;
  inited[8].n128_u64[1] = v22;
  inited[9].n128_u8[0] = v24;
  return sub_2576A6964(inited);
}

uint64_t sub_2576F4F60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  strcpy((inited + 32), "Wrapped Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  MLProgram.ValueType.StateParameters.wrappedType.getter();
  sub_2576F17A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 64) = v6;
  return sub_2576A6964(inited);
}

void sub_2576F5020()
{
  OUTLINED_FUNCTION_433();
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for MLProgram.ValueType.StateParameters(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17_3();
  v5 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for MLProgram.ValueType.ListParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_14();
  v13 = type metadata accessor for MLProgram.ValueType.TensorParameters(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_28();
  switch(*v0 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_8_39();
      sub_2576FBBA0();
      break;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_10_45();
      sub_2576FBBA0();
      break;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_9_37();
      sub_2576FBBA0();
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_11_39();
      sub_2576FBBA0();
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_13_28();
      sub_2576FBBA0();
      break;
  }

  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_2576F5254(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for MLProgram.ValueType.ListParameters(0);
      v8 = swift_allocBox();
      OUTLINED_FUNCTION_8_39();
      result = sub_2576FBBA0();
      v3 = v8 | 0x2000000000000000;
      break;
    case 2u:
      type metadata accessor for MLProgram.ValueType.TupleParameters(0);
      v6 = swift_allocBox();
      OUTLINED_FUNCTION_10_45();
      result = sub_2576FBBA0();
      v3 = v6 | 0x4000000000000000;
      break;
    case 3u:
      type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
      v7 = swift_allocBox();
      OUTLINED_FUNCTION_9_37();
      result = sub_2576FBBA0();
      v3 = v7 | 0x6000000000000000;
      break;
    case 4u:
      type metadata accessor for MLProgram.ValueType.StateParameters(0);
      v5 = swift_allocBox();
      OUTLINED_FUNCTION_11_39();
      result = sub_2576FBBA0();
      v3 = v5 | 0x8000000000000000;
      break;
    default:
      v3 = OUTLINED_FUNCTION_120_1();
      OUTLINED_FUNCTION_13_28();
      result = sub_2576FBBA0();
      break;
  }

  *v1 = v3;
  return result;
}

void MLProgram.ValueType.TensorParameters.init(dataType:shape:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_MILSpec_Dimension(v7);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_28();
  type metadata accessor for Proto_MILSpec_Value(0);
  v9 = MEMORY[0x277D84F90];
  *(v4 + 32) = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_TensorType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v4 = sub_25773A814();
  *(v4 + 8) = v10 & 1;
  v11 = *(v2 + 16);
  *(v4 + 16) = v11;
  if (v11)
  {
    v28 = v4;
    sub_2574844E8(0, v11, 0);
    v12 = v9;
    v13 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
    v14 = (v2 + 40);
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v16 == 1)
      {
        v20 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
        OUTLINED_FUNCTION_112_2(v20);
        *v0 = v15 & 1;
      }

      else
      {
        v21 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
        OUTLINED_FUNCTION_112_2(v21);
        if (v15 < 0)
        {
          __break(1u);
          return;
        }

        *v0 = v15;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
      sub_25751BB28();
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        v27 = OUTLINED_FUNCTION_174(v25);
        sub_2574844E8(v27, v26 + 1, 1);
      }

      *(v12 + 16) = v26 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
      v14 += 16;
      if (!--v11)
      {

        v4 = v28;
        goto LABEL_12;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_12:
  *(v4 + 24) = v12;
  OUTLINED_FUNCTION_35();
}

void static MLProgram.ValueType.tuple<A>(_:)()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_91_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.ValueType.TupleParameters(v10);
  v11 = swift_allocBox();
  (*(v8 + 16))(v2, v0, v6);
  MLProgram.ValueType.TupleParameters.init<A>(_:)(v2, v6, v4);
  *v1 = v11 | 0x4000000000000000;
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.TupleParameters.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_91_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  *v4 = MEMORY[0x277D84F90];
  v12 = type metadata accessor for Proto_MILSpec_TupleType(0);
  OUTLINED_FUNCTION_112_2(v12);
  (*(v7 + 16))(v11, v3, a2);
  sub_257743784();
  MLProgram.ValueType.TupleParameters.types.setter();
  return (*(v7 + 8))(v3, a2);
}

void static MLProgram.ValueType.list(type:length:)(uint64_t *a3@<X8>)
{
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v4 = swift_allocBox();

  MLProgram.ValueType.ListParameters.init(type:length:)();
  *a3 = v4 | 0x2000000000000000;
}

void MLProgram.ValueType.ListParameters.init(type:length:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for Proto_MILSpec_Dimension(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_14();
  v13 = type metadata accessor for Proto_MILSpec_ValueType(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_28();
  v31 = *v3;
  v30 = *(v3 + 8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(type metadata accessor for Proto_MILSpec_ListType(0) + 20);
  if (qword_27F879010 != -1)
  {
    swift_once();
  }

  *(v5 + v15) = qword_27F87B040;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v13 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v1 + v16) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);

  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v21 = *(v1 + v16);
  }

  else
  {
    v22 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v22);

    v21 = sub_2574E503C(v23);

    *(v1 + v16) = v21;
  }

  OUTLINED_FUNCTION_93_2(v21 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type);
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE6A8();
  v24 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  v25 = OUTLINED_FUNCTION_188();
  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v30)
  {
    type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v0 = v31 & 1;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
    sub_25751BB28();
    sub_2574DE7E0();
    OUTLINED_FUNCTION_35();
    return;
  }

  type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if ((v31 & 0x8000000000000000) == 0)
  {
    *v0 = v31;
    goto LABEL_12;
  }

  __break(1u);
}

void MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_99_3();
  v14 = *v5;
  v33 = *v3;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(type metadata accessor for Proto_MILSpec_DictionaryType(0) + 20);
  if (qword_27F879020 != -1)
  {
    swift_once();
  }

  *(v7 + v15) = qword_27F87B048;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v32 = v11;
  v16 = *(v11 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  v17 = qword_27F87B038;
  *(v1 + v16) = qword_27F87B038;
  v34 = v14;
  sub_2576F5020();
  v18 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  swift_retain_n();
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v22 = *(v1 + v16);
  }

  else
  {
    v23 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v23);

    v22 = sub_2574E503C(v24);

    *(v1 + v16) = v22;
  }

  OUTLINED_FUNCTION_93_2(v22 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type);
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE8C0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(v32 + 20);
  *(v0 + v25) = v17;
  v34 = v33;
  v26 = &v34;
  sub_2576F5020();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v26 = *(v0 + v25);
  }

  else
  {
    v30 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v30);
    OUTLINED_FUNCTION_118_2();

    sub_2574E503C(v31);
    OUTLINED_FUNCTION_118_2();

    *(v0 + v25) = &v34;
  }

  OUTLINED_FUNCTION_93_2(v26 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type);
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE9A0();
  OUTLINED_FUNCTION_35();
}

void static MLProgram.ValueType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v67 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_196();
  v66 = v12;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99_3();
  v17 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_134_0();
  v23 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v24 = OUTLINED_FUNCTION_13(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - v29;
  v31 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v33);
  v35 = &v66 - v34;
  v36 = *v7;
  v37 = *v5;
  switch(v36 >> 61)
  {
    case 1uLL:
      if (v37 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();
        v57 = *(type metadata accessor for Proto_MILSpec_ListType(0) + 20);
        v58 = *&v30[v57];
        v59 = *(v27 + v57);

        if (v58 == v59 || (, , sub_2574E9844(), v61 = v60, , , (v61 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v62, v63, MEMORY[0x277D216D0]);
          sub_257743644();
        }

        sub_2576FA218(v27, type metadata accessor for MLProgram.ValueType.ListParameters);
        sub_2576FA218(v30, type metadata accessor for MLProgram.ValueType.ListParameters);

        goto LABEL_25;
      }

      break;
    case 2uLL:
      if (v37 >> 61 == 2)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();

        OUTLINED_FUNCTION_205();
        sub_2574796A0();
        if (v47)
        {
          type metadata accessor for Proto_MILSpec_TupleType(0);
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v48, v49, MEMORY[0x277D216D0]);
          sub_257743644();
          sub_2576FA218(v21, type metadata accessor for MLProgram.ValueType.TupleParameters);
          sub_2576FA218(v3, type metadata accessor for MLProgram.ValueType.TupleParameters);
        }

        else
        {
          sub_2576FA218(v21, type metadata accessor for MLProgram.ValueType.TupleParameters);
          sub_2576FA218(v3, type metadata accessor for MLProgram.ValueType.TupleParameters);
        }
      }

      break;
    case 3uLL:
      if (v37 >> 61 == 3)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();
        v50 = *(type metadata accessor for Proto_MILSpec_DictionaryType(0) + 20);
        v51 = *(v2 + v50);
        v52 = *(v1 + v50);

        if (v51 == v52 || (, , OUTLINED_FUNCTION_205(), sub_2574EA9B4(), v54 = v53, , , (v54 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v55, v56, MEMORY[0x277D216D0]);
          sub_257743644();
        }

        v64 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
        sub_2576FA218(v1, type metadata accessor for MLProgram.ValueType.DictionaryParameters);
        v65 = v2;
        goto LABEL_23;
      }

      break;
    case 4uLL:
      if (v37 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        v38 = v66;
        sub_2576FA1C0();
        v39 = v67;
        sub_2576FA1C0();
        v40 = *(type metadata accessor for Proto_MILSpec_StateType(0) + 20);
        v41 = *(v38 + v40);
        v42 = *(v39 + v40);

        if (v41 == v42 || (, , OUTLINED_FUNCTION_205(), sub_2574EDA64(), v44 = v43, , , (v44 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v45, v46, MEMORY[0x277D216D0]);
          sub_257743644();
        }

        v64 = type metadata accessor for MLProgram.ValueType.StateParameters;
        sub_2576FA218(v39, type metadata accessor for MLProgram.ValueType.StateParameters);
        v65 = v38;
LABEL_23:
        sub_2576FA218(v65, v64);

        goto LABEL_25;
      }

      break;
    default:
      if (!(v37 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();

        sub_2574E8694(v35);
        sub_2576FA218(v0, type metadata accessor for MLProgram.ValueType.TensorParameters);
        sub_2576FA218(v35, type metadata accessor for MLProgram.ValueType.TensorParameters);

LABEL_25:
      }

      break;
  }

  OUTLINED_FUNCTION_35();
}

void MLProgram.ValueType.hash(into:)()
{
  OUTLINED_FUNCTION_433();
  v5 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_17_3();
  v11 = type metadata accessor for MLProgram.ValueType.TupleParameters(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_0();
  v13 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_14();
  v16 = type metadata accessor for MLProgram.ValueType.TensorParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_28();
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_MILSpec_ListType(0);
      sub_2576FA2D0(&qword_27F87B5F8, type metadata accessor for Proto_MILSpec_ListType, &unk_25774EF18);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_18_38();
      v19 = v3;
      break;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_MILSpec_TupleType(0);
      sub_2576FA2D0(&qword_27F87B608, type metadata accessor for Proto_MILSpec_TupleType, &unk_25774EF58);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_65_5();
      v19 = v2;
      break;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](3);
      type metadata accessor for Proto_MILSpec_DictionaryType(0);
      sub_2576FA2D0(&qword_27F87B5E8, type metadata accessor for Proto_MILSpec_DictionaryType, &unk_25774EF98);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      v19 = OUTLINED_FUNCTION_62_7();
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](4);
      type metadata accessor for Proto_MILSpec_StateType(0);
      sub_2576FA2D0(&qword_27F87B5D8, type metadata accessor for Proto_MILSpec_StateType, &unk_25774EFD8);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_12_41();
      v19 = v0;
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](0);
      type metadata accessor for Proto_MILSpec_TensorType(0);
      sub_2576FA2D0(&qword_27F87B618, type metadata accessor for Proto_MILSpec_TensorType, &unk_25774EED8);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_2_65();
      v19 = v4;
      break;
  }

  sub_2576FA218(v19, v18);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.hashValue.getter()
{
  sub_257743A14();
  MLProgram.ValueType.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_2576F6AA4(uint64_t a1)
{
  sub_257743A14();
  MLProgram.ValueType.hash(into:)();
  return sub_257743A64();
}

uint64_t MLProgram.ValueType.debugDescription.getter()
{
  sub_2576F17A0();
  OUTLINED_FUNCTION_87_4(v2, v3, v4);
  OUTLINED_FUNCTION_61_5();
  v5 = OUTLINED_FUNCTION_205();
  sub_257483A28(v5, v6, v0);
  return v1;
}

void MLProgram.ValueType.TensorParameters.dataType.getter(_BYTE *a1@<X8>)
{
  sub_25773A738(&v5);
  OUTLINED_FUNCTION_114_1();
  if (v4)
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t MLProgram.ValueType.TensorParameters.dataType.setter(uint64_t a1)
{
  result = sub_25773A814();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t (*MLProgram.ValueType.TensorParameters.dataType.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  sub_25773A738(&v7);
  OUTLINED_FUNCTION_114_1();
  if (v5)
  {
    v3 = v4;
  }

  *(a1 + 8) = v3;
  return sub_2576F6CBC;
}

uint64_t sub_2576F6CBC(uint64_t *a1)
{
  result = sub_25773A814();
  v3 = *a1;
  *v3 = result;
  *(v3 + 8) = v4 & 1;
  return result;
}

uint64_t (*MLProgram.ValueType.TensorParameters.rank.modify(void *a1))()
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_2576F6D50;
}

void MLProgram.ValueType.TensorParameters.shape.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v41 = (v5 - v4);
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v40 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_196();
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for Proto_MILSpec_Dimension(v17);
  v19 = OUTLINED_FUNCTION_24(v18);
  v21 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = *(v0 + 24);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_14:
    OUTLINED_FUNCTION_35();
    return;
  }

  v44 = MEMORY[0x277D84F90];
  sub_257484540(0, v26, 0);
  OUTLINED_FUNCTION_193();
  v28 = v25 + v27;
  v42 = *(v21 + 72);
  v43 = v14;
  while (1)
  {
    sub_2576FA1C0();
    v29 = OUTLINED_FUNCTION_415();
    sub_257487308(v29);
    sub_2576FA218(v24, type metadata accessor for Proto_MILSpec_Dimension);
    v30 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v30, v31, v14);
    if (!v32)
    {
      break;
    }

    sub_2574695E4(v1, &qword_27F879D28, &qword_257744648);
    v33 = 0;
LABEL_8:
    v35 = 1;
LABEL_11:
    v37 = *(v44 + 16);
    v36 = *(v44 + 24);
    if (v37 >= v36 >> 1)
    {
      v39 = OUTLINED_FUNCTION_13_1(v36);
      sub_257484540(v39, v37 + 1, 1);
    }

    *(v44 + 16) = v37 + 1;
    v38 = v44 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    v14 = v43;
    v28 += v42;
    if (!--v26)
    {
      goto LABEL_14;
    }
  }

  sub_2576FBBA0();
  sub_2576FBBA0();
  OUTLINED_FUNCTION_294();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576FBBA0();
    v33 = *v41;
    sub_2576FA218(v41, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    goto LABEL_8;
  }

  sub_2576FBBA0();
  v33 = *v40;
  sub_2576FA218(v40, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

void MLProgram.ValueType.TensorParameters.shape.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_MILSpec_Dimension(v6);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_28();
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574844E8(v9, v8, 0);
    v10 = v26;
    v11 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
    v12 = (v3 + 40);
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v14 == 1)
      {
        v18 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
        OUTLINED_FUNCTION_112_2(v18);
        *v1 = v13 & 1;
      }

      else
      {
        v19 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
        OUTLINED_FUNCTION_112_2(v19);
        if (v13 < 0)
        {
          __break(1u);
          return;
        }

        *v1 = v13;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v11);
      sub_25751BB28();
      v24 = *(v26 + 16);
      v23 = *(v26 + 24);
      if (v24 >= v23 >> 1)
      {
        v25 = OUTLINED_FUNCTION_13_1(v23);
        sub_2574844E8(v25, v24 + 1, 1);
      }

      *(v26 + 16) = v24 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
      v12 += 16;
      if (!--v8)
      {

        goto LABEL_12;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_12:

  *(v0 + 24) = v10;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.TensorParameters.shape.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TensorParameters.shape.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.TensorParameters.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Value(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_153();
  v4 = type metadata accessor for Proto_MILSpec_Value(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v7 = sub_2577438E4();
  v8 = v7;
  v9 = 0;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v25 = v7 + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v9 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_2576FA1C0();
      sub_2576FBBA0();
      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = (*(v8 + 48) + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      sub_2576FBBA0();
      v22 = *(v8 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v8 + 16) = v24;

      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      v16 = *(v6 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLProgram.ValueType.TensorParameters.attributes.setter(uint64_t a1)
{
  v2 = sub_2576FB8C0(a1);

  *(v1 + 32) = v2;
  return result;
}

uint64_t MLProgram.ValueType.TensorParameters.attributes.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TensorParameters.attributes.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F7704(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_2576FB8C0(v4);

    *(v2 + 32) = v5;
  }

  else
  {
    v7 = sub_2576FB8C0(v3);

    *(v2 + 32) = v7;
  }

  return result;
}

BOOL static MLProgram.ValueType.TensorParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257476914(*v2, *(v1 + 8), *v0, *(v0 + 8)) && *(v1 + 16) == *(v0 + 16))
  {
    sub_25747C000();
    if (v3)
    {
      sub_257476DC8();
      if (v4)
      {
        type metadata accessor for Proto_MILSpec_TensorType(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_17_27();
        v7 = sub_2576FA2D0(v5, v6, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v7))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void MLProgram.ValueType.TensorParameters.customMirror.getter()
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
  type metadata accessor for MLProgram.ValueType.TensorParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257744E70;
  *(v10 + 32) = 0x6570795461746164;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 72) = &type metadata for MLProgram.DataType;
  MLProgram.ValueType.TensorParameters.dataType.getter((v10 + 48));
  *(v10 + 80) = 1802396018;
  *(v10 + 88) = 0xE400000000000000;
  v11 = MEMORY[0x277D83B88];
  *(v10 + 96) = *(v0 + 16);
  *(v10 + 120) = v11;
  *(v10 + 128) = 0x6570616873;
  *(v10 + 136) = 0xE500000000000000;
  MLProgram.ValueType.TensorParameters.shape.getter();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881598, &unk_257775580);
  *(v10 + 144) = v13;
  *(v10 + 168) = v14;
  *(v10 + 176) = 0x7475626972747461;
  *(v10 + 184) = 0xEA00000000007365;
  MLProgram.ValueType.TensorParameters.attributes.getter();
  v16 = v15;
  *(v10 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v10 + 192) = v16;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v2);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

void MLProgram.ValueType.TupleParameters.types.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_35_15();
  v6 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v9 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for Proto_MILSpec_ValueType(v9);
  OUTLINED_FUNCTION_63();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_134_0();
  v17 = *v1;
  v18 = *(*v1 + 16);
  if (v18)
  {
    v35 = v6;
    v38 = MEMORY[0x277D84F90];
    sub_257484A20(0, v18, 0);
    v19 = v38;
    OUTLINED_FUNCTION_193();
    v21 = v17 + v20;
    v34 = *(v11 + 72);
    do
    {
      sub_2576FA1C0();
      sub_2576FA1C0();
      v22 = *(v15 + *(v36 + 20));
      v23 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296(v22 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v37);
      sub_257487308(v22 + v23);
      OUTLINED_FUNCTION_155(v0, 1, v35);
      if (v24)
      {
        sub_2574695E4(v0, &qword_27F879D40, &qword_257744660);
        v25 = OUTLINED_FUNCTION_120_1();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        sub_2576FA218(v2, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FA218(v15, type metadata accessor for Proto_MILSpec_ValueType);
      }

      else
      {
        sub_2576FA218(v2, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FA218(v15, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FBBA0();
        OUTLINED_FUNCTION_153_0();
        sub_2576FBBA0();
        OUTLINED_FUNCTION_176();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            type metadata accessor for MLProgram.ValueType.ListParameters(0);
            v32 = swift_allocBox();
            OUTLINED_FUNCTION_8_39();
            sub_2576FBBA0();
            v25 = v32 | 0x2000000000000000;
            break;
          case 2:
            type metadata accessor for MLProgram.ValueType.TupleParameters(0);
            v30 = swift_allocBox();
            OUTLINED_FUNCTION_10_45();
            sub_2576FBBA0();
            v25 = v30 | 0x4000000000000000;
            break;
          case 3:
            type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
            v31 = swift_allocBox();
            OUTLINED_FUNCTION_9_37();
            sub_2576FBBA0();
            v25 = v31 | 0x6000000000000000;
            break;
          case 4:
            type metadata accessor for MLProgram.ValueType.StateParameters(0);
            v29 = swift_allocBox();
            OUTLINED_FUNCTION_11_39();
            sub_2576FBBA0();
            v25 = v29 | 0x8000000000000000;
            break;
          default:
            v25 = OUTLINED_FUNCTION_120_1();
            OUTLINED_FUNCTION_13_28();
            sub_2576FBBA0();
            break;
        }
      }

      v38 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        v33 = OUTLINED_FUNCTION_13_1(v26);
        sub_257484A20(v33, v27 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v27 + 1;
      *(v19 + 8 * v27 + 32) = v25;
      v21 += v34;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_35();
}

void MLProgram.ValueType.TupleParameters.types.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_153();
  v10 = type metadata accessor for MLProgram.ValueType.TupleParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for MLProgram.ValueType.ListParameters(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for MLProgram.ValueType.TensorParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v39 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_0();
  v21 = *(v3 + 16);
  if (v21)
  {
    v37 = v0;
    v22 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257485260(v22, v21, 0);
    v23 = 32;
    v24 = v40;
    v38 = v3;
    do
    {
      v25 = *(v3 + v23);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v26 = *(v39 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_12_15();
        swift_once();
      }

      *(v1 + v26) = qword_27F87B038;
      switch(v25 >> 61)
      {
        case 1uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_8_39();
          OUTLINED_FUNCTION_110_0();
          break;
        case 2uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_10_45();
          OUTLINED_FUNCTION_110_0();
          break;
        case 3uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_9_37();
          OUTLINED_FUNCTION_110_0();
          break;
        case 4uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_11_39();
          OUTLINED_FUNCTION_110_0();
          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_13_28();
          OUTLINED_FUNCTION_110_0();
          break;
      }

      v27 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v1 + v26);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
        OUTLINED_FUNCTION_448(v33);
        v32 = sub_2574E503C(v32);
        *(v1 + v26) = v32;
      }

      OUTLINED_FUNCTION_93_2(v32 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type);
      sub_25751BB28();
      swift_endAccess();
      v35 = *(v40 + 16);
      v34 = *(v40 + 24);
      if (v35 >= v34 >> 1)
      {
        v36 = OUTLINED_FUNCTION_13_1(v34);
        sub_257485260(v36, v35 + 1, 1);
      }

      *(v40 + 16) = v35 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_14_27();
      sub_2576FBBA0();
      v23 += 8;
      --v21;
      v3 = v38;
    }

    while (v21);

    v0 = v37;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  *v0 = v24;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.TupleParameters.types.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TupleParameters.types.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F84A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t MLProgram.ValueType.TupleParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_MILSpec_TupleType(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static MLProgram.ValueType.TupleParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  sub_2574796A0();
  result = 0;
  if (v0)
  {
    type metadata accessor for Proto_MILSpec_TupleType(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_17_27();
    v3 = sub_2576FA2D0(v1, v2, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v3))
    {
      return 1;
    }
  }

  return result;
}

void MLProgram.ValueType.TupleParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.ValueType.TupleParameters(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 0x7365707974;
  *(v5 + 40) = 0xE500000000000000;
  MLProgram.ValueType.TupleParameters.types.getter();
  v7 = v6;
  *(v5 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8815A0, &unk_257775590);
  *(v5 + 48) = v7;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_100_2();
  v13(v12);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.ListParameters.type.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.ListParameters.type.getter();
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.ListParameters.length.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for Proto_MILSpec_Dimension(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_134_0();
  v11 = *(v1 + *(type metadata accessor for Proto_MILSpec_ListType(0) + 20));
  v12 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length;
  OUTLINED_FUNCTION_296(v11 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_MILSpec_ListTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__length, &v25);
  sub_257487308(v11 + v12);
  v13 = OUTLINED_FUNCTION_171_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v6);
  sub_2574695E4(v4, &qword_27F87B8D0, &qword_2577755A0);
  if (EnumTagSinglePayload == 1)
  {
    *v0 = 0;
    *(v0 + 8) = 1;
  }

  else
  {
    sub_257487308(v11 + v12);
    v16 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v16, v17, v6);
    if (v18)
    {
      type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v23 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v23, v24, v6);
      if (!v18)
      {
        sub_2574695E4(v2, &qword_27F87B8D0, &qword_2577755A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
    }

    sub_2577020B4(v3, v0);
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576F8B18(uint64_t a1@<X8>)
{
  MLProgram.ValueType.ListParameters.length.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

void MLProgram.ValueType.ListParameters.length.setter()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_35_15();
  v6 = type metadata accessor for Proto_MILSpec_Dimension(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v8 == 1)
  {
    type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v0 = v7 & 1;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    sub_25751BB28();
    sub_2574DE7E0();
    OUTLINED_FUNCTION_434();
    return;
  }

  type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if ((v7 & 0x8000000000000000) == 0)
  {
    *v0 = v7;
    goto LABEL_5;
  }

  __break(1u);
}

void (*MLProgram.ValueType.ListParameters.length.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v4);
  v3[3] = OUTLINED_FUNCTION_125_1();
  v3[4] = OUTLINED_FUNCTION_125_1();
  v5 = type metadata accessor for Proto_MILSpec_Dimension(0);
  v3[5] = v5;
  OUTLINED_FUNCTION_13(v5);
  v3[6] = OUTLINED_FUNCTION_125_1();
  v3[7] = OUTLINED_FUNCTION_125_1();
  MLProgram.ValueType.ListParameters.length.getter();
  return sub_2576F8DD0;
}

void sub_2576F8DD0()
{
  OUTLINED_FUNCTION_433();
  v1 = v0;
  v3 = *v2;
  v4 = **v2;
  v5 = *(*v2 + 8);
  v6 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  if (v1)
  {
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v10 = v3[3];
    if (v5)
    {
      goto LABEL_5;
    }

    v15 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
    OUTLINED_FUNCTION_127_0(v15);
    if ((v4 & 0x8000000000000000) == 0)
    {
      *v3[3] = v4;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = v3[4];
  if (!v5)
  {
    v16 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
    OUTLINED_FUNCTION_127_0(v16);
    if ((v4 & 0x8000000000000000) == 0)
    {
      *v3[4] = v4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_5:
  v14 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  OUTLINED_FUNCTION_127_0(v14);
  *v10 = v4 & 1;
LABEL_10:
  v18 = v3[6];
  v17 = v3[7];
  v19 = v3[3];
  v20 = v3[4];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
  sub_25751BB28();
  sub_2574DE7E0();
  free(v17);
  free(v18);
  free(v20);
  free(v19);
  OUTLINED_FUNCTION_434();

  free(v24);
}

void MLProgram.ValueType.ListParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.ValueType.ListParameters(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257743FF0;
  *(v5 + 32) = 1701869940;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 72) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.ListParameters.type.getter();
  *(v5 + 80) = 0x6874676E656CLL;
  *(v5 + 88) = 0xE600000000000000;
  *(v5 + 120) = &type metadata for MLProgram.ShapeDimension;
  MLProgram.ValueType.ListParameters.length.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_100_2();
  v11(v10);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

void sub_2576F928C()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for Proto_MILSpec_ValueType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v29[-v16];
  v18 = *(v1 + *(v6(0) + 20));
  v19 = *v4;
  OUTLINED_FUNCTION_296(v18 + v19, &v30);
  sub_257487308(v18 + v19);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v8);
  sub_2574695E4(v17, &qword_27F879E10, &qword_257744730);
  if (EnumTagSinglePayload == 1)
  {
    v21 = OUTLINED_FUNCTION_120_1();
    v29[7] = 3;
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    *v0 = v21;
  }

  else
  {
    sub_257487308(v18 + v19);
    v22 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v22, v23, v8);
    if (v24)
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = *(v8 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_12_15();
        swift_once();
      }

      *(v12 + v25) = qword_27F87B038;
      v26 = OUTLINED_FUNCTION_188();
      v28 = __swift_getEnumTagSinglePayload(v26, v27, v8);

      if (v28 != 1)
      {
        sub_2574695E4(v2, &qword_27F879E10, &qword_257744730);
      }
    }

    else
    {
      sub_2576FBBA0();
    }

    sub_2576F0F64();
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576F951C()
{
  OUTLINED_FUNCTION_433();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_78();
  v5 = type metadata accessor for Proto_MILSpec_ValueType(v4);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = *(v6 + 28);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v9 + v10) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
  }

  else
  {
    v15 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v15);

    v17 = sub_2574E503C(v16);

    *(v9 + v10) = v17;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v1(v9);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.DictionaryParameters.keyType.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.DictionaryParameters.keyType.getter(v1);
  return OUTLINED_FUNCTION_43();
}

uint64_t MLProgram.ValueType.DictionaryParameters.valueType.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.DictionaryParameters.valueType.getter(v1);
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.DictionaryParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257743FF0;
  *(v5 + 32) = 0x6570795479656BLL;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 72) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.DictionaryParameters.keyType.getter(v5);
  *(v5 + 80) = 0x70795465756C6176;
  *(v5 + 88) = 0xE900000000000065;
  *(v5 + 120) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.DictionaryParameters.valueType.getter(v6);
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_100_2();
  v12(v11);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F9ACC(uint64_t (*a1)(void))
{
  v3 = a1();
  OUTLINED_FUNCTION_87_4(v3, v4, v5);
  OUTLINED_FUNCTION_61_5();
  v6 = OUTLINED_FUNCTION_205();
  sub_257483A28(v6, v7, v1);
  return v2;
}