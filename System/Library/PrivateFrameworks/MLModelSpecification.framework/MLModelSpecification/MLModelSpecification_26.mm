unint64_t sub_25770B914()
{
  result = qword_27F8816C0;
  if (!qword_27F8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816C0);
  }

  return result;
}

unint64_t sub_25770B968()
{
  result = qword_27F8816C8;
  if (!qword_27F8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816C8);
  }

  return result;
}

uint64_t sub_25770B9BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_25770BA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25770BAA8()
{
  result = qword_27F8816D0;
  if (!qword_27F8816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816D0);
  }

  return result;
}

uint64_t sub_25770BAFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25770BB54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

unint64_t sub_25770BBB0()
{
  result = qword_27F8816E8;
  if (!qword_27F8816E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816E8);
  }

  return result;
}

uint64_t sub_25770BC2C(uint64_t a1)
{
  result = sub_257743094();
  if (v2 <= 0x3F)
  {
    result = sub_257742F44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_14_29()
{
  *(v0 - 376) = 0;
  *(v0 - 384) = 0;
  *(v0 - 392) = 0;
  *(v0 - 400) = 0;
  *(v0 - 336) = 0xE000000000000000;
  *(v0 - 344) = 0xE000000000000000;
  *(v0 - 360) = 0xE000000000000000;
  *(v0 - 368) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_28_28()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0xE000000000000000;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;
}

void sub_25770BF48()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for PrecisionRecallCurve(0);
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000257781E70;
  v8 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v21 = inited;
    v23 = MEMORY[0x277D84F90];
    sub_257484040(0, v9, 0);
    v10 = v23;
    OUTLINED_FUNCTION_193();
    v12 = v8 + v11;
    v22 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v12, v6);
      v13 = sub_25770F838();
      v15 = v14;
      v17 = v16;
      sub_25770CBC0(v6);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_257484040((v18 > 1), v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 24 * v19;
      *(v20 + 32) = v13;
      *(v20 + 40) = v15;
      *(v20 + 48) = v17;
      v12 += v22;
      --v9;
    }

    while (v9);

    inited = v21;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t ClassConfidenceThresholding.precisionRecallCurves.getter()
{
  v1 = type metadata accessor for PrecisionRecallCurve(0);
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
    sub_257484298(0, v9, 0);
    v10 = v20;
    v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
    OUTLINED_FUNCTION_24(v11);
    v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v13, v7);
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_257484298(v16 > 1, v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      OUTLINED_FUNCTION_193();
      sub_25770CC1C(v7, v20 + v18 + *(v4 + 72) * v17);
      v13 += v15;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void ClassConfidenceThresholding.precisionRecallCurves.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for PrecisionRecallCurve(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v2 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_9_40(MEMORY[0x277D84F90]);
    v16 = v23;
    OUTLINED_FUNCTION_193();
    v18 = v2 + v17;
    v19 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v18, v9);
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v9, v14);
      sub_25770CBC0(v9);
      v21 = *(v23 + 16);
      v20 = *(v23 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_8_42(v20);
      }

      *(v23 + 16) = v21 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_60(v23 + v22);
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

void (*ClassConfidenceThresholding.precisionRecallCurves.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  return sub_25770C510;
}

void sub_25770C510(uint64_t a1, char a2)
{
  if (a2)
  {

    ClassConfidenceThresholding.precisionRecallCurves.setter();
  }

  else
  {
    ClassConfidenceThresholding.precisionRecallCurves.setter();
  }
}

uint64_t ClassConfidenceThresholding.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25770C5AC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PrecisionRecallCurve(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v1 + 16);
  if (v16)
  {
    v24 = v3;
    OUTLINED_FUNCTION_9_40(MEMORY[0x277D84F90]);
    v17 = v25;
    OUTLINED_FUNCTION_193();
    v19 = v1 + v18;
    v20 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_1_79();
      sub_25770CCC4(v19, v10);
      OUTLINED_FUNCTION_0_99();
      sub_25770CCC4(v10, v15);
      sub_25770CBC0(v10);
      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_8_42(v21);
      }

      *(v25 + 16) = v22 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_60(v25 + v23);
      v19 += v20;
      --v16;
    }

    while (v16);

    v3 = v24;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *v3 = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t ClassConfidenceThresholding.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  OUTLINED_FUNCTION_5_54();
  sub_25770CDB0(v1, v2, &unk_257746E4C);

  return sub_2577435F4();
}

uint64_t ClassConfidenceThresholding.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  OUTLINED_FUNCTION_5_54();
  sub_25770CDB0(v0, v1, &unk_257746E4C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25770C91C(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding(0);
  sub_25770CDB0(&qword_27F87A570, type metadata accessor for Proto_ClassConfidenceThresholding, &unk_257746E4C);
  sub_2577435F4();
  return sub_257743A64();
}

void ClassConfidenceThresholding.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &a9 - v29;
  type metadata accessor for ClassConfidenceThresholding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  sub_25770CCC4(v20, v33 - v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2577442B0;
  *(v34 + 32) = 0xD000000000000015;
  *(v34 + 40) = 0x800000025777A4A0;
  v35 = ClassConfidenceThresholding.precisionRecallCurves.getter();
  *(v34 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881700, &qword_2577761F0);
  *(v34 + 48) = v35;
  v36 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v36);
  (*(v24 + 104))(v27, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25770CBC0(uint64_t a1)
{
  v2 = type metadata accessor for PrecisionRecallCurve(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25770CC1C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ClassConfidenceThresholding(uint64_t a1)
{
  result = qword_281537930;
  if (!qword_281537930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770CCC4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25770CDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25770CE20(uint64_t a1)
{
  result = type metadata accessor for Proto_ClassConfidenceThresholding(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_60@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + *(v2 + 72) * v1;

  return sub_25770CC1C(v3, v5);
}

void OUTLINED_FUNCTION_8_42(unint64_t a1@<X8>)
{

  sub_257485390(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_9_40(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  sub_257485390(0, v1, 0);
}

uint64_t sub_25770CF4C()
{
  CustomModelConfiguration.parameters.getter();
  sub_2576A8ACC(v3, v4, v5, v6, v7, v8, v9, v10, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v12 = v11;

  v62 = v12;
  sub_25770E0E4(&v62);
  v13 = v62;
  v14 = *(v62 + 16);
  if (v14)
  {
    v64 = MEMORY[0x277D84F90];
    sub_257484060(0, v14, 0);
    v15 = v64;
    v16 = (v13 + 64);
    while (2)
    {
      v17 = *(v16 - 4);
      v18 = *(v16 - 3);
      v20 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = *v16;
      v16 += 40;

      v22 = OUTLINED_FUNCTION_194();
      sub_2576AAC1C(v22, v23, v21);

      v24 = OUTLINED_FUNCTION_194();
      sub_2576AAC1C(v24, v25, v21);
      v26 = OUTLINED_FUNCTION_194();
      sub_25770EEF8(v26, v27, v21);
      switch(v21)
      {
        case 1:
          v62 = 34;
          v63 = 0xE100000000000000;
          v36 = OUTLINED_FUNCTION_194();
          MEMORY[0x259C64E90](v36);
          MEMORY[0x259C64E90](34, 0xE100000000000000);

          v37 = OUTLINED_FUNCTION_194();
          sub_25770EEF8(v37, v38, 1);
          v1 = v62;
          v2 = v63;
          goto LABEL_9;
        case 2:
          v62 = v20;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 2;
          goto LABEL_8;
        case 3:
          LOBYTE(v62) = v20 & 1;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 3;
          goto LABEL_8;
        case 4:
          v62 = v20;
          v63 = v19;
          v31 = OUTLINED_FUNCTION_194();
          sub_257486740(v31, v32);
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 4;
          goto LABEL_8;
        default:
          v62 = v20;
          sub_257743674();
          OUTLINED_FUNCTION_6_55();
          v28 = OUTLINED_FUNCTION_194();
          v30 = 0;
LABEL_8:
          sub_25770EEF8(v28, v29, v30);
LABEL_9:
          v64 = v15;
          v34 = *(v15 + 16);
          v33 = *(v15 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_257484060(v33 > 1, v34 + 1, 1);
            v15 = v64;
          }

          *(v15 + 16) = v34 + 1;
          v35 = v15 + 40 * v34;
          *(v35 + 32) = v17;
          *(v35 + 40) = v18;
          *(v35 + 48) = v1;
          *(v35 + 56) = v2;
          *(v35 + 64) = 0;
          if (--v14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x614E207373616C43;
  *(inited + 40) = 0xEA0000000000656DLL;
  v40 = *v0;
  v41 = v0[1];
  v62 = 34;
  v63 = 0xE100000000000000;
  MEMORY[0x259C64E90](v40, v41);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v42 = v63;
  *(inited + 48) = v62;
  *(inited + 56) = v42;
  *(inited + 64) = 0;
  *(inited + 72) = 0x6574656D61726150;
  *(inited + 80) = 0xEA00000000007372;
  *(inited + 88) = sub_2576AACFC(v15);
  *(inited + 96) = v43;
  *(inited + 104) = 2;
  return sub_2576A6964(inited);
}

uint64_t CustomModelConfiguration.className.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25770D2A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CustomModelConfiguration.className.setter(v1, v2);
}

uint64_t CustomModelConfiguration.className.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*CustomModelConfiguration.className.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void CustomModelConfiguration.parameters.getter()
{
  v1 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881710, &qword_2577762D0);
  v6 = 0;
  v7 = v5 + 64;
  v30 = sub_2577438E4();
  v31 = v5;
  OUTLINED_FUNCTION_41_0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v29 = v13 + 64;
  if ((v9 & v8) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_8:
      v17 = v14 | (v6 << 6);
      v18 = (*(v31 + 48) + 16 * v17);
      v19 = v18[1];
      v33 = *v18;
      sub_25770EE90(*(v31 + 56) + *(v32 + 72) * v17, v4, type metadata accessor for Proto_CustomModel.CustomModelParamValue);
      v20 = *v4;
      v21 = *(v4 + 8);
      v22 = *(v4 + 16);

      sub_257487298(v20, v21, v22);
      sub_25770D5F8(v4);
      v23 = v30;
      switch(v22)
      {
        case 0:
          v21 = 0;
          break;
        case 1:
          break;
        case 2:
          v21 = 0;
          v20 = v20;
          goto LABEL_13;
        case 3:
          v21 = 0;
LABEL_13:
          LOBYTE(v22) = 2;
          break;
        case 4:
          v21 = 0;
          v20 &= 1u;
          LOBYTE(v22) = 3;
          break;
        case 5:
          LOBYTE(v22) = 4;
          break;
        default:
          v20 = 0;
          v21 = 0;
          LOBYTE(v22) = 0;
          v23 = v30;
          break;
      }

      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = (v23[6] + 16 * v17);
      *v24 = v33;
      v24[1] = v19;
      v25 = v23[7] + 24 * v17;
      *v25 = v20;
      *(v25 + 8) = v21;
      *(v25 + 16) = v22;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v23[2] = v28;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v12)
      {
        return;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25770D5F8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CustomModelConfiguration.parameters.setter(uint64_t a1)
{
  sub_25770EBA0(a1);
  v3 = v2;

  *(v1 + 16) = v3;
  return result;
}

uint64_t (*CustomModelConfiguration.parameters.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CustomModelConfiguration.parameters.getter();
  *a1 = v3;
  return sub_25770D718;
}

uint64_t sub_25770D718(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_25770EBA0(v4);
    v6 = v5;

    *(v2 + 16) = v6;
  }

  else
  {
    sub_25770EBA0(v3);
    v9 = v8;

    *(v2 + 16) = v9;
  }

  return result;
}

uint64_t CustomModelConfiguration.init(className:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  sub_2577435D4();
  a4[3] = 0;
  a4[4] = 0xE000000000000000;
  type metadata accessor for Proto_CustomModel(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  sub_25770EBA0(a3);
  v9 = v8;

  a4[2] = v9;
  return result;
}

BOOL static CustomModelConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_257743994() & 1) != 0)
  {
    sub_257477E10(a1[2], a2[2]);
    if (v5)
    {
      v6 = a1[3] == a2[3] && a1[4] == a2[4];
      if (v6 || (sub_257743994() & 1) != 0)
      {
        type metadata accessor for Proto_CustomModel(0);
        sub_2577431B4();
        sub_25770EFAC(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_257743644())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CustomModelConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_CustomModel(0);
  OUTLINED_FUNCTION_2_67();
  sub_25770EFAC(v1, v2, &unk_2577472AC);

  return sub_2577435F4();
}

uint64_t CustomModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_CustomModel(0);
  OUTLINED_FUNCTION_2_67();
  sub_25770EFAC(v0, v1, &unk_2577472AC);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25770DA58(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_CustomModel(0);
  sub_25770EFAC(&qword_27F87A5E0, type metadata accessor for Proto_CustomModel, &unk_2577472AC);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t CustomModelConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CustomModelConfiguration(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25770EE90(v0, v13 - v12, type metadata accessor for CustomModelConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257743FF0;
  *(v14 + 32) = 0x6D614E7373616C63;
  *(v14 + 40) = 0xE900000000000065;
  v15 = v0[1];
  v16 = MEMORY[0x277D837D0];
  *(v14 + 48) = *v0;
  *(v14 + 56) = v15;
  *(v14 + 72) = v16;
  *(v14 + 80) = 0x6574656D61726170;
  *(v14 + 88) = 0xEA00000000007372;

  CustomModelConfiguration.parameters.getter();
  v18 = v17;
  *(v14 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881718, &qword_2577762D8);
  *(v14 + 96) = v18;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t static CustomModelConfiguration.ParameterValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {

        goto LABEL_19;
      }

      if (*&v2 != *&v4 || *(a1 + 8) != *(a2 + 8))
      {
        OUTLINED_FUNCTION_98_2();
        v16 = sub_257743994();
        v31 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v31, v32, 1);
        v33 = OUTLINED_FUNCTION_0_100();
        sub_2576AAC1C(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_0_100();
        sub_25770EEF8(v36, v37, v38);
        v19 = OUTLINED_FUNCTION_288();
        v21 = 1;
        goto LABEL_16;
      }

      v10 = 1;
      v48 = OUTLINED_FUNCTION_0_100();
      sub_2576AAC1C(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_0_100();
      sub_2576AAC1C(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_0_100();
      sub_25770EEF8(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_0_100();
      sub_25770EEF8(v57, v58, v59);
      return v10 & 1;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      v22 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v22, v23, 2);
      v24 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v24, v25, 2);
      v10 = *&v2 == *&v4;
      return v10 & 1;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_19;
      }

      v26 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v26, v27, 3);
      v28 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v28, v29, 3);
      v10 = LOBYTE(v4) ^ LOBYTE(v2) ^ 1;
      return v10 & 1;
    case 4:
      if (v5 == 4)
      {
        v11 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v11, v12, 4);
        v13 = OUTLINED_FUNCTION_98_2();
        sub_2576AAC1C(v13, v14, 4);
        v15 = OUTLINED_FUNCTION_98_2();
        v16 = MEMORY[0x259C648D0](v15);
        v17 = OUTLINED_FUNCTION_98_2();
        sub_25770EEF8(v17, v18, 4);
        v19 = OUTLINED_FUNCTION_288();
        v21 = 4;
LABEL_16:
        sub_25770EEF8(v19, v20, v21);
        return v16 & 1;
      }

      else
      {
        v40 = OUTLINED_FUNCTION_98_2();
        sub_257486740(v40, v41);
LABEL_19:
        v42 = OUTLINED_FUNCTION_288();
        sub_2576AAC1C(v42, v43, v5);
        v44 = OUTLINED_FUNCTION_98_2();
        sub_25770EEF8(v44, v45, v3);
        v46 = OUTLINED_FUNCTION_288();
        sub_25770EEF8(v46, v47, v5);
        v10 = 0;
        return v10 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_19;
      }

      v6 = OUTLINED_FUNCTION_98_2();
      sub_25770EEF8(v6, v7, 0);
      v8 = OUTLINED_FUNCTION_288();
      sub_25770EEF8(v8, v9, 0);
      v10 = v2 == v4;
      return v10 & 1;
  }
}

uint64_t CustomModelConfiguration.ParameterValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      MEMORY[0x259C651F0](1);

      result = sub_257743694();
      break;
    case 2:
      MEMORY[0x259C651F0](2);
      result = MEMORY[0x259C651F0](v2);
      break;
    case 3:
      MEMORY[0x259C651F0](3);
      result = sub_257743A34();
      break;
    case 4:
      MEMORY[0x259C651F0](4);

      result = sub_257743114();
      break;
    default:
      MEMORY[0x259C651F0](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      result = MEMORY[0x259C65220](v3);
      break;
  }

  return result;
}

uint64_t CustomModelConfiguration.ParameterValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_257743A14();
  CustomModelConfiguration.ParameterValue.hash(into:)(v3);
  return sub_257743A64();
}

uint64_t sub_25770E090(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_257743A14();
  CustomModelConfiguration.ParameterValue.hash(into:)(v4);
  return sub_257743A64();
}

uint64_t sub_25770E0E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC1FC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25770E150(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25770E150(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FE8, &qword_257744920);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25770E33C(v7, v8, a1, v4);
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
    return sub_25770E254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25770E254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        result = *(v10 + 40);
        if (result == *v10 && *(v10 + 48) == *(v10 + 8))
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

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
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

void sub_25770E33C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_257743994();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_257743994()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
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

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v97 = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
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

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v96 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v96;
          }

          v5 = v97;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v92;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v93;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      v98 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
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

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_25770E9D4(*a3 + 40 * *v85, (*a3 + 40 * *v87), *a3 + 40 * v88, v98);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v100 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_25770E89C(&v100, *result, a3);
LABEL_103:
}

uint64_t sub_25770E89C(uint64_t *a1, char *a2, void *a3)
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
    sub_25770E9D4(*a3 + 40 * *v4, (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
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

uint64_t sub_25770E9D4(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = &a2[-a1] / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_257487364(a1, &a2[-a1] / 40, a4);
    v10 = &v4[40 * v8];
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
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 32) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 16) = v15;
    goto LABEL_17;
  }

  sub_257487364(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_19:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v18 = *(v10 - 5) == *(v6 - 5) && *(v10 - 4) == *(v6 - 4);
    if (!v18 && (sub_257743994() & 1) != 0)
    {
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v19;
      *(v5 + 16) = v20;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = 40 * ((v10 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

void sub_25770EBA0(uint64_t a1)
{
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  OUTLINED_FUNCTION_63();
  v32 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881730, &unk_257776550);
  sub_2577438E4();
  v7 = 0;
  v33 = a1;
  v8 = a1 + 64;
  OUTLINED_FUNCTION_41_0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v30 = v14 + 8;
  v31 = v14;
  if (v11)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_8:
      v18 = v15 | (v7 << 6);
      v19 = (*(v33 + 48) + 16 * v18);
      v20 = v19[1];
      v35 = *v19;
      v21 = *(v33 + 56) + 24 * v18;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 16);
      switch(v25)
      {
        case 1:

          v25 = 1;
          goto LABEL_11;
        case 2:
          v24 = 0;
          if (v23 == v23)
          {
            v23 = v23;
            v25 = 2;
          }

          else
          {
            v25 = 3;
          }

          break;
        case 3:
          v24 = 0;
          v23 = *v21 & 1;
          v25 = 4;
          break;
        case 4:
          sub_257486740(*v21, *(v21 + 8));
          v25 = 5;
LABEL_11:
          v24 = v22;
          break;
        default:
          break;
      }

      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = -1;

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574872D0(*v6, *(v6 + 8), *(v6 + 16));
      *v6 = v23;
      *(v6 + 8) = v24;
      *(v6 + 16) = v25;
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v26 = (v31[6] + 16 * v18);
      *v26 = v35;
      v26[1] = v20;
      sub_25770F0FC(v6, v31[7] + *(v32 + 72) * v18);
      v27 = v31[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v31[2] = v29;
      v11 = v34;
      if (!v34)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        return;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for CustomModelConfiguration(uint64_t a1)
{
  result = qword_281537A20;
  if (!qword_281537A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770EE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25770EEF8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_257486798(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_25770EFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25770EFF8()
{
  result = qword_27F881728;
  if (!qword_27F881728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881728);
  }

  return result;
}

uint64_t sub_25770F074(uint64_t a1)
{
  result = type metadata accessor for Proto_CustomModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25770F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_55()
{
}

uint64_t static NeuralNetwork.Layer.broadcastableSubtract(name:inputNames:outputName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a5;
  v27 = a7;
  v28 = a1;
  v29 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257743FF0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = v26;
  *(v21 + 56) = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = v27;
  *(v22 + 40) = a8;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v22);
  sub_2574897E0(v16);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  sub_25752846C();
  return sub_257634BB4(v20);
}

uint64_t static NeuralNetwork.Layer.BroadcastableSubtractParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  sub_25770F758(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.BroadcastableSubtractParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  v10 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25770F6AC(v1, v12 - v11);
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters(uint64_t a1)
{
  result = qword_27F881738;
  if (!qword_27F881738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770F6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25770F758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25770F7CC(uint64_t a1)
{
  result = type metadata accessor for Proto_SubtractBroadcastableLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25770F838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000257781E90;
  v59 = inited;
  v2 = *(PrecisionRecallCurve.precisionScores.getter() + 16);
  v58 = v0;
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_13_30();
    v4 = sub_257484040(v3, v2, 0);
    v12 = v61;
    do
    {
      OUTLINED_FUNCTION_14_30(v4, v5, v6, v7, v8, v9, v10, v11, v57, v58, v59, v60, SHIDWORD(v60));
      OUTLINED_FUNCTION_4_61();
      if (v14)
      {
        OUTLINED_FUNCTION_7_44(v13);
        v12 = v61;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v15);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v59 + 48) = v12;
  *(v59 + 56) = 0;
  *(v59 + 64) = 1;
  OUTLINED_FUNCTION_21_30();
  *(v18 + 72) = v16 + 15;
  *(v18 + 80) = v17;
  v19 = *(PrecisionRecallCurve.precisionConfidenceThresholds.getter() + 16);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_13_30();
    v21 = sub_257484040(v20, v19, 0);
    v29 = v61;
    do
    {
      OUTLINED_FUNCTION_14_30(v21, v22, v23, v24, v25, v26, v27, v28, v57, v58, v59, v60, SHIDWORD(v60));
      OUTLINED_FUNCTION_4_61();
      if (v14)
      {
        OUTLINED_FUNCTION_7_44(v30);
        v29 = v61;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v15);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *(v59 + 88) = v29;
  *(v59 + 96) = 0;
  *(v59 + 104) = 1;
  strcpy((v59 + 112), "Recall Scores");
  *(v59 + 126) = -4864;
  v31 = *(PrecisionRecallCurve.recallScores.getter() + 16);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_13_30();
    v33 = sub_257484040(v32, v31, 0);
    v41 = v61;
    do
    {
      OUTLINED_FUNCTION_14_30(v33, v34, v35, v36, v37, v38, v39, v40, v57, v58, v59, v60, SHIDWORD(v60));
      OUTLINED_FUNCTION_4_61();
      if (v14)
      {
        OUTLINED_FUNCTION_7_44(v42);
        v41 = v61;
      }

      OUTLINED_FUNCTION_3_70();
    }

    while (!v15);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  *(v59 + 128) = v41;
  *(v59 + 136) = 0;
  *(v59 + 144) = 1;
  OUTLINED_FUNCTION_21_30();
  *(v45 + 152) = v43 + 12;
  *(v45 + 160) = v44;
  v46 = *(PrecisionRecallCurve.recallConfidenceThresholds.getter() + 16);
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_13_30();
    sub_257484040(v47, v46, 0);
    v48 = 32;
    v49 = v61;
    do
    {
      v50 = sub_257743674();
      v52 = v51;
      v54 = *(v61 + 16);
      v53 = *(v61 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_257484040((v53 > 1), v54 + 1, 1);
      }

      *(v61 + 16) = v54 + 1;
      v55 = v61 + 24 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      *(v55 + 48) = 0;
      v48 += 4;
      --v46;
    }

    while (v46);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  *(v59 + 168) = v49;
  *(v59 + 176) = 0;
  *(v59 + 184) = 1;
  return sub_2576A6964(v59);
}

uint64_t PrecisionRecallCurve.precisionScores.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v5 + 20));
  OUTLINED_FUNCTION_2_68();
  if (v6)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v6)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t sub_25770FC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecisionRecallCurve.precisionScores.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_FloatVector(v2);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v4);
  v5 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v5 + 20));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

uint64_t PrecisionRecallCurve.precisionScores.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.precisionScores.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25770FDF8()
{
  OUTLINED_FUNCTION_10_47();
  if (v2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v3 = *(OUTLINED_FUNCTION_17_30() + 20);
    sub_25770FC84(v1 + v3);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v1 + v3);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 20);
    sub_25770FC84(v1 + v4);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v1 + v4);
  }

  free(v0);
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v5 + 24));
  OUTLINED_FUNCTION_2_68();
  if (v6)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v6)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_FloatVector(v2);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v4);
  v5 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v5 + 24));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

uint64_t PrecisionRecallCurve.precisionConfidenceThresholds.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.precisionConfidenceThresholds.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_25771007C()
{
  OUTLINED_FUNCTION_10_47();
  if (v2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v3 = *(OUTLINED_FUNCTION_17_30() + 24);
    sub_25770FC84(v1 + v3);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v1 + v3);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 24);
    sub_25770FC84(v1 + v4);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v1 + v4);
  }

  free(v0);
}

uint64_t PrecisionRecallCurve.recallScores.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v5 + 28));
  OUTLINED_FUNCTION_2_68();
  if (v6)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v6)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t PrecisionRecallCurve.recallScores.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_FloatVector(v2);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v4);
  v5 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v5 + 28));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

uint64_t PrecisionRecallCurve.recallScores.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.recallScores.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_257710300()
{
  OUTLINED_FUNCTION_10_47();
  if (v2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v3 = *(OUTLINED_FUNCTION_17_30() + 28);
    sub_25770FC84(v1 + v3);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v1 + v3);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 28);
    sub_25770FC84(v1 + v4);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v1 + v4);
  }

  free(v0);
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_26_19(*(v5 + 32));
  OUTLINED_FUNCTION_2_68();
  if (v6)
  {
    OUTLINED_FUNCTION_15_28(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_2_68();
    if (!v6)
    {
      sub_25770FC84(v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_28();
  }

  OUTLINED_FUNCTION_24_29();
  sub_2574B5C0C(v1);
  return OUTLINED_FUNCTION_18_27();
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_FloatVector(v2);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_112_2(v4);
  v5 = OUTLINED_FUNCTION_32_15();
  sub_25770FC84(v0 + *(v5 + 32));
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

uint64_t PrecisionRecallCurve.recallConfidenceThresholds.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_29(a1);
  v1[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[3] = __swift_coroFrameAllocStub(*(v3 + 64));
  *v1 = PrecisionRecallCurve.recallConfidenceThresholds.getter();
  return OUTLINED_FUNCTION_43();
}

void sub_257710584()
{
  OUTLINED_FUNCTION_10_47();
  if (v2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v3 = *(OUTLINED_FUNCTION_17_30() + 32);
    sub_25770FC84(v1 + v3);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_5_55(v1 + v3);
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v4 = *(OUTLINED_FUNCTION_17_30() + 32);
    sub_25770FC84(v1 + v4);
    OUTLINED_FUNCTION_28_29();
    OUTLINED_FUNCTION_5_55(v1 + v4);
  }

  free(v0);
}

uint64_t PrecisionRecallCurve.init()(uint64_t a1)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  v1 = type metadata accessor for Proto_FloatVector(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
}

uint64_t PrecisionRecallCurve.init(precisionScores:precisionConfidenceThresholds:recallScores:recallConfidenceThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Proto_FloatVector(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v12 = v11[5];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  v16 = v11[6];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
  v20 = v11[7];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);
  v24 = v11[8];
  OUTLINED_FUNCTION_44();
  v28 = __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
  OUTLINED_FUNCTION_31_18(v28);
  *v5 = a1;
  sub_25770FC84(a5 + v12);
  sub_2574B5BA8(v5, a5 + v12);
  v29 = OUTLINED_FUNCTION_5_55(a5 + v12);
  OUTLINED_FUNCTION_31_18(v29);
  *v5 = a2;
  sub_25770FC84(a5 + v16);
  sub_2574B5BA8(v5, a5 + v16);
  v30 = OUTLINED_FUNCTION_5_55(a5 + v16);
  OUTLINED_FUNCTION_31_18(v30);
  *v5 = a3;
  sub_25770FC84(a5 + v20);
  sub_2574B5BA8(v5, a5 + v20);
  v31 = OUTLINED_FUNCTION_5_55(a5 + v20);
  OUTLINED_FUNCTION_31_18(v31);
  *v5 = a4;
  sub_25770FC84(a5 + v24);
  sub_2574B5BA8(v5, a5 + v24);
  return OUTLINED_FUNCTION_5_55(a5 + v24);
}

uint64_t PrecisionRecallCurve.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_PrecisionRecallCurve(v0);
  OUTLINED_FUNCTION_8_43();
  sub_257710DAC(v1, v2, &unk_2577484F4);

  return sub_2577435F4();
}

uint64_t PrecisionRecallCurve.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  OUTLINED_FUNCTION_8_43();
  sub_257710DAC(v0, v1, &unk_2577484F4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257710948(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_257710DAC(&qword_27F87A688, type metadata accessor for Proto_PrecisionRecallCurve, &unk_2577484F4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t PrecisionRecallCurve.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for PrecisionRecallCurve(0);
  MEMORY[0x28223BE20](v7);
  sub_257710CB4(v1, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257744E70;
  *(v9 + 32) = 0x6F69736963657270;
  *(v9 + 40) = 0xEF7365726F63536ELL;
  v10 = PrecisionRecallCurve.precisionScores.getter();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v9 + 48) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = 0xD00000000000001DLL;
  *(v9 + 88) = 0x800000025777A6E0;
  *(v9 + 96) = PrecisionRecallCurve.precisionConfidenceThresholds.getter();
  *(v9 + 120) = v11;
  strcpy((v9 + 128), "recallScores");
  *(v9 + 141) = 0;
  *(v9 + 142) = -5120;
  *(v9 + 144) = PrecisionRecallCurve.recallScores.getter();
  *(v9 + 168) = v11;
  *(v9 + 176) = 0xD00000000000001ALL;
  *(v9 + 184) = 0x800000025777A710;
  v12 = PrecisionRecallCurve.recallConfidenceThresholds.getter();
  *(v9 + 216) = v11;
  *(v9 + 192) = v12;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  (*(v4 + 104))(v2, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t type metadata accessor for PrecisionRecallCurve(uint64_t a1)
{
  result = qword_27F881750;
  if (!qword_27F881750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257710CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecisionRecallCurve(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257710DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257710E1C(uint64_t a1)
{
  result = type metadata accessor for Proto_PrecisionRecallCurve(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_3_70()
{
  *(v2 + 16) = v5;
  v6 = v2 + v0 * v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

char *OUTLINED_FUNCTION_7_44@<X0>(unint64_t a1@<X8>)
{

  return sub_257484040((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_9_41()
{

  return type metadata accessor for Proto_FloatVector(0);
}

uint64_t OUTLINED_FUNCTION_14_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{

  return sub_257743674();
}

uint64_t OUTLINED_FUNCTION_15_28@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_16_29(uint64_t a1)
{
  *(a1 + 8) = v1;

  return type metadata accessor for Proto_FloatVector(0);
}

uint64_t OUTLINED_FUNCTION_17_30()
{
  *v0 = v1;

  return type metadata accessor for Proto_PrecisionRecallCurve(0);
}

uint64_t OUTLINED_FUNCTION_24_29()
{
}

uint64_t OUTLINED_FUNCTION_25_28()
{

  return sub_2574B5BA8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2574B5B38(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_28_29()
{

  return sub_2574B5BA8(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_29_20()
{

  return sub_2574B5BA8(v2, v1 + v0);
}

uint64_t OUTLINED_FUNCTION_30_18()
{

  return sub_2574B5BA8(v0, v1 + v2);
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  *v1 = v0;

  return type metadata accessor for Proto_PrecisionRecallCurve(0);
}

uint64_t sub_2577110C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0x6D614E20656C6946;
  *(inited + 40) = 0xE900000000000065;
  v1 = LinkedModelConfiguration.fileName.getter();
  MEMORY[0x259C64E90](v1);
  MEMORY[0x259C64E90](34, 0xE100000000000000);

  *(inited + 48) = 34;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 0;
  v2 = LinkedModelConfiguration.searchPath.getter();
  if (v3)
  {
    MEMORY[0x259C64E90](v2);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    sub_257469AE0();
    inited = v4;
    *(v4 + 16) = 2;
    *(v4 + 72) = 0x5020686372616553;
    *(v4 + 80) = 0xEB00000000687461;
    *(v4 + 88) = 34;
    *(v4 + 96) = 0xE100000000000000;
    *(v4 + 104) = 0;
  }

  return sub_2576AACFC(inited);
}

uint64_t LinkedModelConfiguration.fileName.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Proto_LinkedModelFile(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  sub_257711390(v1 + *(v9 + 28), v0);
  v10 = OUTLINED_FUNCTION_35_0(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_16_30(v10);
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v11)
    {
      sub_2574695E4(v0, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_101();
    v12 = OUTLINED_FUNCTION_292();
    sub_257711660(v12, v13, v14);
  }

  v15 = *v7;

  OUTLINED_FUNCTION_7_45();
  return v15;
}

uint64_t sub_257711390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257711400(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_257711458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LinkedModelConfiguration.fileName.setter(v1, v2);
}

uint64_t LinkedModelConfiguration.fileName.setter(uint64_t a1, uint64_t a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = type metadata accessor for Proto_LinkedModelFile(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  v16 = *(v15 + 28);
  sub_257711390(v3 + v16, v4);
  OUTLINED_FUNCTION_35_0(v4);
  if (v17)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v4);
    if (!v17)
    {
      sub_2574695E4(v4, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_101();
    sub_257711660(v4, v13, v18);
  }

  *v13 = a1;
  v13[1] = a2;
  sub_2574695E4(v3 + v16, &qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_0_101();
  sub_257711660(v13, v3 + v16, v19);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  sub_2574695E4(v2, &qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_6_56();
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_257711660(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t (*LinkedModelConfiguration.fileName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkedModelConfiguration.fileName.getter();
  a1[1] = v3;
  return sub_257711708;
}

uint64_t sub_257711708(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_292();
    LinkedModelConfiguration.fileName.setter(v2, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_292();
    return LinkedModelConfiguration.fileName.setter(v5, v6);
  }
}

uint64_t LinkedModelConfiguration.searchPath.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = type metadata accessor for Proto_LinkedModelFile(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_43();
  sub_257711390(v1 + *(v9 + 32), v0);
  v10 = OUTLINED_FUNCTION_35_0(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_16_30(v10);
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v11)
    {
      sub_2574695E4(v0, &qword_27F87AFB8, &unk_2577766E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_101();
    v12 = OUTLINED_FUNCTION_292();
    sub_257711660(v12, v13, v14);
  }

  v15 = *v7;

  OUTLINED_FUNCTION_7_45();
  return v15;
}

uint64_t sub_2577118C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LinkedModelConfiguration.searchPath.setter(v1, v2);
}

uint64_t LinkedModelConfiguration.searchPath.setter(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v13 = type metadata accessor for Proto_LinkedModelFile(0);
  OUTLINED_FUNCTION_4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  if (a2)
  {
    sub_2574DAF10();
    v20 = *(v13 + 24);
    sub_257711390(&v19[v20], v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
    {
      *v12 = 0;
      v12[1] = 0xE000000000000000;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
      {
        sub_2574695E4(v3, &qword_27F87AFB8, &unk_2577766E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_101();
      sub_257711660(v3, v12, v22);
    }

    *v12 = a1;
    v12[1] = a2;
    sub_2574695E4(&v19[v20], &qword_27F87AFB8, &unk_2577766E0);
    OUTLINED_FUNCTION_0_101();
    sub_257711660(v12, &v19[v20], v23);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
  }

  else
  {
    sub_2574DAF10();
    v21 = *(v13 + 24);
    sub_2574695E4(&v17[v21], &qword_27F87AFB8, &unk_2577766E0);
    __swift_storeEnumTagSinglePayload(&v17[v21], 1, 1, v8);
  }

  sub_2574695E4(v2, &qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_6_56();
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t (*LinkedModelConfiguration.searchPath.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkedModelConfiguration.searchPath.getter();
  a1[1] = v3;
  return sub_257711BA8;
}

uint64_t sub_257711BA8(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_292();
    LinkedModelConfiguration.searchPath.setter(v2, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_292();
    return LinkedModelConfiguration.searchPath.setter(v5, v6);
  }
}

uint64_t LinkedModelConfiguration.init(fileName:searchPath:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  v4 = OUTLINED_FUNCTION_55_0();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for Proto_LinkedModel(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  LinkedModelConfiguration.fileName.setter(a1, a2);
  v6 = OUTLINED_FUNCTION_292();
  return LinkedModelConfiguration.searchPath.setter(v6, v7);
}

uint64_t LinkedModelConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_LinkedModel(0);
  OUTLINED_FUNCTION_5_56();
  sub_257712194(v1, v2, &unk_25774C040);

  return sub_2577435F4();
}

uint64_t LinkedModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_LinkedModel(0);
  OUTLINED_FUNCTION_5_56();
  sub_257712194(v0, v1, &unk_25774C040);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257711D8C(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_LinkedModel(0);
  sub_257712194(&qword_27F87AFE8, type metadata accessor for Proto_LinkedModel, &unk_25774C040);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t LinkedModelConfiguration.customMirror.getter()
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
  v9 = &v22 - v8;
  type metadata accessor for LinkedModelConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25771209C(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  *(v13 + 32) = 0x656D614E656C6966;
  *(v13 + 40) = 0xE800000000000000;
  v14 = LinkedModelConfiguration.fileName.getter();
  v15 = MEMORY[0x277D837D0];
  *(v13 + 48) = v14;
  *(v13 + 56) = v16;
  *(v13 + 72) = v15;
  *(v13 + 80) = 0x6150686372616573;
  *(v13 + 88) = 0xEA00000000006874;
  v17 = LinkedModelConfiguration.searchPath.getter();
  v19 = v18;
  *(v13 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881760, &qword_2577766F0);
  *(v13 + 96) = v17;
  *(v13 + 104) = v19;
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for LinkedModelConfiguration(uint64_t a1)
{
  result = qword_281537A10;
  if (!qword_281537A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25771209C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkedModelConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257712194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257712204(uint64_t a1)
{
  result = type metadata accessor for Proto_LinkedModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_80()
{

  return sub_257711400(v0, type metadata accessor for Proto_LinkedModelFile);
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return sub_257711660(v1, v0, type metadata accessor for Proto_LinkedModelFile);
}

uint64_t OUTLINED_FUNCTION_7_45()
{

  return sub_257711400(v0, type metadata accessor for Proto_StringParameter);
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return sub_2574DAF10();
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for Proto_StringParameter(0);
}

uint64_t OUTLINED_FUNCTION_15_29()
{

  return type metadata accessor for Proto_StringParameter(0);
}

uint64_t OUTLINED_FUNCTION_16_30(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0xD000000000000011;
  *(v1 + 72) = 0x8000000257781510;
  v3 = 1702195828;
  if (!*(v0 + 8))
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v4 = 0xE400000000000000;
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return v1;
}

uint64_t static NeuralNetwork.Layer.concatenateND(name:inputNames:outputName:axis:interleave:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v20[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *v15 = 0;
  *(v15 + 8) = 0;
  type metadata accessor for Proto_ConcatNDLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v15 = a4;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a5 + v17) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v16);
  sub_2574897E0(v11);
  v18 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  sub_25752846C();
  return sub_257634BB4(v15);
}

uint64_t static NeuralNetwork.Layer.Kind.concatenateND(axis:interleave:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_81(a1);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.init(axis:interleave:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_81(a1);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ConcatenateNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

_BYTE *(*NeuralNetwork.Layer.ConcatenateNDParameters.interleaveInputs.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_25766FBF8;
}

BOOL static NeuralNetwork.Layer.ConcatenateNDParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    type metadata accessor for Proto_ConcatNDLayerParams(0);
    sub_2577431B4();
    sub_257712B60(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateNDParameters.customMirror.getter()
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
  type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters(0);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_257712AB4(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  *(v13 + 32) = 1936291937;
  *(v13 + 40) = 0xE400000000000000;
  v14 = MEMORY[0x277D83B88];
  *(v13 + 48) = *v1;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0xD000000000000010;
  *(v13 + 88) = 0x8000000257781EF0;
  v15 = *(v1 + 8);
  *(v13 + 120) = MEMORY[0x277D839B0];
  *(v13 + 96) = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters(uint64_t a1)
{
  result = qword_27F881770;
  if (!qword_27F881770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257712AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257712B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257712BD4(uint64_t a1)
{
  result = type metadata accessor for Proto_ConcatNDLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_81@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;

  return type metadata accessor for Proto_ConcatNDLayerParams(0);
}

uint64_t sub_257712C64(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_4();
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_257714A18(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2574695E4(v8, &qword_27F87A068, &qword_2577449A0);
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v2 = 2;
    *(v2 + 8) = 1;
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
    return OUTLINED_FUNCTION_12_45();
  }

  else
  {
    OUTLINED_FUNCTION_12_45();
    sub_25771417C();
    sub_25771417C();
    return sub_257713320();
  }
}

void sub_257712E44()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_6();
  v3 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  type metadata accessor for VisionFeaturePrintKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257743FF0;
    *(inited + 32) = 1684957515;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = xmmword_257776870;
    *(inited + 64) = 0;
    *(inited + 72) = 0x6E6F6973726556;
    *(inited + 80) = 0xE700000000000000;
    *(inited + 88) = sub_257743674();
    *(inited + 96) = v21;
    *(inited + 104) = 0;
    sub_2576A6964(inited);
    OUTLINED_FUNCTION_0_102();
    v23 = v6;
LABEL_11:
    sub_2577141D8(v23, v22);
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_4_62();
  sub_25771417C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2577442C0;
  *(v8 + 32) = 1684957515;
  *(v8 + 40) = 0xE400000000000000;
  *(v8 + 48) = xmmword_257776880;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0x6E6F6973726556;
  *(v8 + 80) = 0xE700000000000000;
  *(v8 + 88) = sub_257743674();
  *(v8 + 96) = v9;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0x7374757074754FLL;
  *(v8 + 120) = 0xE700000000000000;
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_10:
    *(v8 + 128) = v12;
    *(v8 + 136) = 0;
    *(v8 + 144) = 1;
    sub_2576A6964(v8);
    OUTLINED_FUNCTION_8_44();
    v23 = v0;
    goto LABEL_11;
  }

  v24 = v8;
  v25 = v0;
  v27 = MEMORY[0x277D84F90];
  sub_257484040(0, v11, 0);
  v13 = 0;
  v12 = v27;
  v14 = (v10 + 40);
  v26 = v11;
  while (v13 < *(v10 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = *(v27 + 16);
    v18 = *(v27 + 24);

    if (v17 >= v18 >> 1)
    {
      sub_257484040((v18 > 1), v17 + 1, 1);
    }

    ++v13;
    *(v27 + 16) = v17 + 1;
    v19 = v27 + 24 * v17;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    *(v19 + 48) = 0;
    v14 += 2;
    if (v26 == v13)
    {
      v8 = v24;
      v0 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t VisionFeaturePrintKind.ObjectParameters.version.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_2577131AC()
{
  v0 = OUTLINED_FUNCTION_16_1();
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(v0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  type metadata accessor for VisionFeaturePrintKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_62();
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
  }

  sub_25771417C();
  sub_25771417C();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257713320()
{
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  OUTLINED_FUNCTION_18_1();
  swift_getEnumCaseMultiPayload();
  sub_25771417C();
  type metadata accessor for VisionFeaturePrintKind(0);

  return swift_storeEnumTagMultiPayload();
}

void static VisionFeaturePrintKind.scene(version:)()
{
  v1 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2575332FC();
  if ((v6 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v4 = v5;
    *(v4 + 8) = v6 & 1;
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t VisionFeaturePrintKind.SceneParameters.init(version:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  *(a2 + 8) = a1 < 3;
  return result;
}

void static VisionFeaturePrintKind.object(version:outputs:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(v4);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25753095C();
  if ((v6 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v2 = v5;
    *(v2 + 8) = v6 & 1;
    *(v2 + 16) = a2;
    type metadata accessor for VisionFeaturePrintKind(0);
    OUTLINED_FUNCTION_18_1();

    swift_storeEnumTagMultiPayload();
  }
}

void VisionFeaturePrintKind.ObjectParameters.init(version:outputs:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25753095C();
  if ((v5 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = a1;
  }
}

void static VisionFeaturePrintKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v26 = OUTLINED_FUNCTION_13(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  v27 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = (v29 - v28);
  type metadata accessor for VisionFeaturePrintKind(0);
  OUTLINED_FUNCTION_4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881780, &unk_257776890);
  OUTLINED_FUNCTION_13(v37);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  sub_2577143F4();
  sub_2577143F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_69();
    sub_2577143F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_4_62();
      sub_25771417C();
      v41 = *v34;
      v42 = *v20;
      if (v34[8])
      {
        v41 = *v34 != 0;
      }

      if (*(v20 + 8) == 1)
      {
        if (v42)
        {
          if (v41 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v41)
        {
LABEL_22:
          OUTLINED_FUNCTION_11_44();
          sub_2577141D8(v20, v52);
          v49 = v34;
          v48 = v24;
LABEL_23:
          sub_2577141D8(v49, v48);
          OUTLINED_FUNCTION_13_31();
          goto LABEL_24;
        }
      }

      else if (v41 != v42)
      {
        goto LABEL_22;
      }

      if (sub_257479C78(*(v34 + 2), *(v20 + 16)))
      {
        type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
        v24 = sub_2577431B4();
        OUTLINED_FUNCTION_3_71();
        sub_2577143AC(v50, v51, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_8_44();
    v44 = v34;
  }

  else
  {
    OUTLINED_FUNCTION_2_69();
    sub_2577143F4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_82();
      sub_25771417C();
      if (sub_257487360(*v36, v36[8], *v30))
      {
        type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_71();
        sub_2577143AC(v45, v46, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_102();
      sub_2577141D8(v30, v47);
      OUTLINED_FUNCTION_0_102();
      v49 = v36;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_102();
    v44 = v36;
  }

  sub_2577141D8(v44, v43);
  sub_2574695E4(v40, &qword_27F881780, &unk_257776890);
LABEL_24:
  OUTLINED_FUNCTION_35();
}

uint64_t VisionFeaturePrintKind.hash(into:)()
{
  v1 = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_9_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for VisionFeaturePrintKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_2_69();
  sub_2577143F4();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_62();
    sub_25771417C();
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
    sub_2577143AC(&qword_27F880278, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects, &unk_25776B5D8);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_8_44();
    v9 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
    sub_25771417C();
    MEMORY[0x259C651F0](0);
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
    sub_2577143AC(&qword_27F880288, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene, &unk_25776B598);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_0_102();
    v9 = v0;
  }

  return sub_2577141D8(v9, v8);
}

uint64_t VisionFeaturePrintKind.hashValue.getter()
{
  sub_257743A14();
  VisionFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_257713BC4(uint64_t a1)
{
  sub_257743A14();
  VisionFeaturePrintKind.hash(into:)();
  return sub_257743A64();
}

void (*VisionFeaturePrintKind.SceneParameters.version.modify(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257713C3C;
}

BOOL static VisionFeaturePrintKind.SceneParameters.== infix(_:_:)()
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
    }

    else if (v1)
    {
      return 0;
    }
  }

  else if (v1 != v3)
  {
    return 0;
  }

  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_71();
  v6 = sub_2577143AC(v4, v5, MEMORY[0x277D216D0]);
  return (OUTLINED_FUNCTION_4_2(v6) & 1) != 0;
}

void VisionFeaturePrintKind.SceneParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_21_31();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for VisionFeaturePrintKind.SceneParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  sub_2577143F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_15_30(v8, xmmword_2577442B0);
  v9[4].n128_u64[1] = MEMORY[0x277D83B88];
  v9[3].n128_u64[0] = v10;
  v11 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v11);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v0);
  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_35();
}

void (*VisionFeaturePrintKind.ObjectParameters.version.modify(void *a1))(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_257713FD8;
}

uint64_t VisionFeaturePrintKind.ObjectParameters.outputs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*VisionFeaturePrintKind.ObjectParameters.outputs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25766B8DC;
}

uint64_t static VisionFeaturePrintKind.ObjectParameters.== infix(_:_:)()
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
    OUTLINED_FUNCTION_3_71();
    v8 = sub_2577143AC(v6, v7, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25771417C()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2577141D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_257714278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_24_30();
  OUTLINED_FUNCTION_211();

  return sub_2577435F4();
}

uint64_t sub_257714328(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_24_30();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2577143AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2577143F4()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257714498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_24_30();
  sub_2577435F4();
  return sub_257743A64();
}

void VisionFeaturePrintKind.ObjectParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_21_31();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for VisionFeaturePrintKind.ObjectParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  sub_2577143F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_15_30(v8, xmmword_257743FF0);
  if (*(v0 + 8))
  {
    v10 = v10;
  }

  v12 = MEMORY[0x277D83B88];
  v9[3].n128_u64[0] = v10;
  v9[4].n128_u64[1] = v12;
  v9[5].n128_u64[0] = 0x7374757074756FLL;
  v9[5].n128_u64[1] = v11;
  v13 = *(v0 + 16);
  v8[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  v8[6].n128_u64[0] = v13;
  v14 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v14);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v0);

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2577148B4(uint64_t a1)
{
  result = type metadata accessor for VisionFeaturePrintKind.SceneParameters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VisionFeaturePrintKind.ObjectParameters(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2577149A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257714A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_2577141D8(v0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return sub_2577141D8(v0, type metadata accessor for VisionFeaturePrintKind);
}

__n128 *OUTLINED_FUNCTION_15_30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E6F6973726576;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_16_31(uint64_t a1@<X8>)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_18_41(uint64_t result)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *v2 = result;
  *(v2 + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_32()
{

  return sub_257743AA4();
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return sub_2577143AC(v2, v1, v0);
}

uint64_t NeuralNetwork.Layer.GRUParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  *(v1 + 32) = 0x6953207475706E49;
  *(v1 + 40) = 0xEA0000000000657ALL;
  v2 = *(v0 + *(type metadata accessor for Proto_GRULayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v2 + 16, v14);
  v13[0] = *(v2 + 16);
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x532074757074754FLL;
  *(v1 + 72) = 0xEB00000000657A69;
  OUTLINED_FUNCTION_296(v2 + 24, v13);
  v12[0] = *(v2 + 24);
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v4;
  *(v1 + 96) = 0x65636E6575716553;
  *(v1 + 104) = 0xEF74757074754F20;
  OUTLINED_FUNCTION_296(v2 + 40, v12);
  if (*(v2 + 40))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v2 + 40))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  strcpy((v1 + 128), "Reverse Input");
  *(v1 + 142) = -4864;
  v7 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  OUTLINED_FUNCTION_296(v2 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput, &v11);
  if (*(v2 + v7))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v2 + v7))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v1 + 144) = v8;
  *(v1 + 152) = v9;
  return v1;
}

uint64_t NeuralNetwork.Layer.GRUParameters.namedWeights.getter()
{
  v1 = v0;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v267 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v9);
  v241 = (&v239 - v10);
  v11 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v19);
  v21 = &v239 - v20;
  v22 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  v32 = (&v239 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v239 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v239 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v239 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v239 - v57;
  v59 = *(v1 + *(type metadata accessor for Proto_GRULayerParams(0) + 20));
  v60 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix, v276);
  sub_25749E8D0(v59 + v60, v58);
  OUTLINED_FUNCTION_7_46(v58);
  sub_25749E940(v58);
  v61 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_25749E8D0(v59 + v60, v56);
    OUTLINED_FUNCTION_34_0(v56);
    if (v62)
    {
      *v21 = MEMORY[0x277D84F90];
      *(v21 + 8) = xmmword_257745740;
      *(v21 + 24) = xmmword_257745740;
      *(v21 + 40) = xmmword_257745740;
      v21[56] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v63 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(&v21[v1], v64, v65, v63);
      OUTLINED_FUNCTION_34_0(v56);
      if (!v62)
      {
        sub_25749E940(v56);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v56, v21, v66);
    }

    sub_2576FF45C(v21, v32);
    v67 = v241;
    *v241 = 0x657461647055;
    *(v67 + 8) = 0xE600000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v32, v67 + v68, v69);
    sub_257469D34();
    v61 = v70;
    v1 = *(v70 + 16);
    if (v1 >= *(v70 + 24) >> 1)
    {
      sub_257469D34();
      v61 = v222;
    }

    v71 = v267;
    *(v61 + 16) = v1 + 1;
    sub_25749E9A8(v67, v61 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v1);
  }

  v72 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix, v275);
  sub_25749E8D0(v72 + v59, v53);
  OUTLINED_FUNCTION_7_46(v53);
  sub_25749E940(v53);
  if (v1 == 1)
  {
    v73 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_25749E8D0(v72 + v59, v50);
    v74 = OUTLINED_FUNCTION_34_0(v50);
    if (v62)
    {
      v73 = MEMORY[0x277D84F90];
      v75 = v242;
      *v242 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_11_45(v74, xmmword_257745740);
      v76 = OUTLINED_FUNCTION_19_33();
      v77 = v75 + v1;
      v1 = v75;
      OUTLINED_FUNCTION_25_5(v77, v78, v79, v76);
      OUTLINED_FUNCTION_34_0(v50);
      v72 = v243;
      if (!v62)
      {
        sub_25749E940(v50);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_29_10();
      sub_25749EA18(v80, v81, v82);
      v73 = MEMORY[0x277D84F90];
      v72 = v243;
    }

    v83 = v240;
    sub_2576FF45C(v1, v240);
    OUTLINED_FUNCTION_18_42();
    *v72 = v84 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    v72[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v83, v72 + v85, v86);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v223;
    }

    OUTLINED_FUNCTION_12_46();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v224;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v72, v88 + v89 * v83);
  }

  v90 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, v274);
  OUTLINED_FUNCTION_180();
  sub_25749E8D0(v91, v92);
  OUTLINED_FUNCTION_7_46(v72);
  sub_25749E940(v72);
  if (v1 == 1)
  {
    v93 = v261;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    sub_25749E8D0(v94, v95);
    v96 = OUTLINED_FUNCTION_34_0(v1);
    v93 = v261;
    if (v62)
    {
      v90 = v244;
      *v244 = v73;
      OUTLINED_FUNCTION_6_3(v96, xmmword_257745740);
      v97 = OUTLINED_FUNCTION_19_33();
      v98 = v90 + v1;
      v1 = v254;
      OUTLINED_FUNCTION_25_5(v98, v99, v100, v97);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v62)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6();
      sub_25749EA18(v101, v102, v103);
    }

    OUTLINED_FUNCTION_20_26();
    sub_2576FF45C(v90, v104);
    OUTLINED_FUNCTION_21_32();
    v105 = v257;
    *v257 = v106;
    v105[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v108 + v107, v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v225;
    }

    OUTLINED_FUNCTION_12_46();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v226;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v257, v110 + v111 * v90);
  }

  v112 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix, v273);
  OUTLINED_FUNCTION_38_6();
  sub_25749E8D0(v113, v114);
  OUTLINED_FUNCTION_7_46(v90);
  sub_25749E940(v90);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    sub_25749E8D0(v115, v116);
    v117 = OUTLINED_FUNCTION_34_0(v112);
    if (v62)
    {
      v90 = v246;
      *v246 = v73;
      OUTLINED_FUNCTION_6_3(v117, xmmword_257745740);
      v118 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v90 + v1, v119, v120, v118);
      OUTLINED_FUNCTION_34_0(v112);
      if (!v62)
      {
        sub_25749E940(v112);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6();
      sub_25749EA18(v121, v122, v123);
    }

    v1 = 0x8000000257781F30;
    v124 = v245;
    sub_2576FF45C(v90, v245);
    v125 = v258;
    *v258 = 0xD000000000000010;
    v125[1] = 0x8000000257781F30;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v124, v127 + v126, v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v227;
    }

    OUTLINED_FUNCTION_13_32();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v228;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v258, v129 + v130 * v124);
  }

  v131 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix, v272);
  OUTLINED_FUNCTION_38_6();
  sub_25749E8D0(v132, v133);
  OUTLINED_FUNCTION_7_46(v90);
  sub_25749E940(v90);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    sub_25749E8D0(v134, v135);
    v136 = OUTLINED_FUNCTION_34_0(v131);
    if (v62)
    {
      v90 = v247;
      *v247 = v73;
      OUTLINED_FUNCTION_6_3(v136, xmmword_257745740);
      v137 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v90 + v1, v138, v139, v137);
      OUTLINED_FUNCTION_34_0(v131);
      if (!v62)
      {
        sub_25749E940(v131);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_38_6();
      sub_25749EA18(v140, v141, v142);
    }

    OUTLINED_FUNCTION_20_26();
    sub_2576FF45C(v90, v143);
    OUTLINED_FUNCTION_18_42();
    v145 = v260;
    *v260 = v144 | 0x6552207400000000;
    v145[1] = 0xEF6E6F6973727563;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v147 + v146, v148);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v229;
    }

    OUTLINED_FUNCTION_13_32();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v230;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v260, v149 + v150 * v131);
  }

  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, v271);
  OUTLINED_FUNCTION_38_6();
  sub_25749E8D0(v151, v152);
  OUTLINED_FUNCTION_7_46(v90);
  sub_25749E940(v90);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_38_6();
    sub_25749E8D0(v153, v154);
    OUTLINED_FUNCTION_34_0(v90);
    if (v62)
    {
      *v93 = v73;
      *(v93 + 8) = xmmword_257745740;
      *(v93 + 24) = xmmword_257745740;
      *(v93 + 40) = xmmword_257745740;
      *(v93 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v155 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v93 + v1, v156, v157, v155);
      OUTLINED_FUNCTION_34_0(v90);
      v159 = v249;
      if (!v62)
      {
        sub_25749E940(v90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v90, v93, v158);
      v159 = v249;
    }

    v1 = 0x8000000257781F10;
    v160 = v248;
    sub_2576FF45C(v93, v248);
    *v159 = 0xD000000000000010;
    v159[1] = 0x8000000257781F10;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v160, v159 + v161, v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v231;
    }

    OUTLINED_FUNCTION_12_46();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v232;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v159, v163 + v164 * v160);
  }

  v165 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector, v270);
  v166 = v259;
  sub_25749E8D0(v59 + v165, v259);
  OUTLINED_FUNCTION_7_46(v166);
  sub_25749E940(v166);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_29_10();
    sub_25749E8D0(v167, v168);
    v169 = OUTLINED_FUNCTION_34_0(v1);
    if (v62)
    {
      v165 = v250;
      *v250 = v73;
      OUTLINED_FUNCTION_11_45(v169, xmmword_257745740);
      v170 = OUTLINED_FUNCTION_19_33();
      v171 = v165 + v1;
      v1 = v255;
      OUTLINED_FUNCTION_25_5(v171, v172, v173, v170);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v62)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_180();
      sub_25749EA18(v174, v175, v176);
    }

    OUTLINED_FUNCTION_20_26();
    sub_2576FF45C(v165, v177);
    v178 = v263;
    *v263 = 0x4220657461647055;
    v178[1] = 0xEB00000000736169;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v180 + v179, v181);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v233;
    }

    OUTLINED_FUNCTION_13_32();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v234;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v263, v182 + v183 * v165);
  }

  v184 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector, v269);
  v185 = v262;
  sub_25749E8D0(v59 + v184, v262);
  OUTLINED_FUNCTION_7_46(v185);
  sub_25749E940(v185);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_29_10();
    sub_25749E8D0(v186, v187);
    v188 = OUTLINED_FUNCTION_34_0(v1);
    if (v62)
    {
      v184 = v251;
      *v251 = v73;
      OUTLINED_FUNCTION_11_45(v188, xmmword_257745740);
      v189 = OUTLINED_FUNCTION_19_33();
      v190 = v184 + v1;
      v1 = v256;
      OUTLINED_FUNCTION_25_5(v190, v191, v192, v189);
      OUTLINED_FUNCTION_34_0(v1);
      if (!v62)
      {
        sub_25749E940(v1);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_180();
      sub_25749EA18(v193, v194, v195);
    }

    OUTLINED_FUNCTION_20_26();
    sub_2576FF45C(v184, v196);
    OUTLINED_FUNCTION_18_42();
    v198 = v265;
    *v265 = v197 | 0x6942207400000000;
    v198[1] = 0xEA00000000007361;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v200 + v199, v201);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v235;
    }

    OUTLINED_FUNCTION_13_32();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v236;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v265, v202 + v203 * v184);
  }

  v204 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  OUTLINED_FUNCTION_296(v59 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, v268);
  v205 = v264;
  sub_25749E8D0(v59 + v204, v264);
  OUTLINED_FUNCTION_7_46(v205);
  sub_25749E940(v205);
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    sub_25749E8D0(v206, v207);
    OUTLINED_FUNCTION_34_0(v204);
    if (v62)
    {
      v212 = v252;
      *v252 = v73;
      *(v212 + 1) = xmmword_257745740;
      *(v212 + 3) = xmmword_257745740;
      *(v212 + 5) = xmmword_257745740;
      *(v212 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v208 = OUTLINED_FUNCTION_19_33();
      OUTLINED_FUNCTION_25_5(v212 + v1, v209, v210, v208);
      OUTLINED_FUNCTION_34_0(v204);
      v211 = v204;
      v214 = v253;
      if (!v62)
      {
        sub_25749E940(v211);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      v212 = v252;
      sub_25749EA18(v204, v252, v213);
      v214 = v253;
    }

    OUTLINED_FUNCTION_20_26();
    sub_2576FF45C(v212, v215);
    OUTLINED_FUNCTION_21_32();
    *v214 = v216 & 0xFFFFFFFFFFFFLL | 0x4220000000000000;
    v214[1] = 0xEB00000000736169;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v1, v214 + v217, v218);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_57();
      v61 = v237;
    }

    OUTLINED_FUNCTION_12_46();
    if (v87)
    {
      OUTLINED_FUNCTION_6_57();
      v61 = v238;
    }

    OUTLINED_FUNCTION_2_70();
    sub_25749E9A8(v214, v219 - 0x14FFFFFFFF8C9E97 * v220);
  }

  return v61;
}

uint64_t NeuralNetwork.Layer.GRUParameters.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_GRULayerParams(0) + 20);
  if (qword_27F879578 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27F87BF30;
}

unint64_t sub_25771605C()
{
  result = qword_27F87DF00;
  if (!qword_27F87DF00)
  {
    type metadata accessor for Proto_GRULayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DF00);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.GRUParameters(uint64_t a1)
{
  result = qword_27F8817C0;
  if (!qword_27F8817C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257716128(uint64_t a1)
{
  result = type metadata accessor for Proto_GRULayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_5_57()
{

  sub_257469D34();
}

void OUTLINED_FUNCTION_6_57()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_19_33()
{

  return type metadata accessor for Proto_QuantizationParams(0);
}

__n128 Diagnostic.init(severity:kind:property:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2[1].n128_u8[0];
  *a5 = *a1;
  result = *a2;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t Diagnostic.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_257466F40(v2, v3, v4);
}

uint64_t Diagnostic.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_257467018(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t Diagnostic.property.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static Diagnostic.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v9 = *(a1 + 1);
  v8 = *(a1 + 2);
  v10 = a1[24];
  v11 = a2[24];
  v18[0] = v9;
  v18[1] = v8;
  v19 = v10;
  v15 = v2;
  v16[0] = v7;
  v16[1] = v6;
  v17 = v11;
  sub_257466F40(v9, v8, v10);
  sub_257466F40(v7, v6, v11);
  v12 = static Diagnostic.Kind.== infix(_:_:)(v18, v16);
  sub_257467018(v7, v6, v11);
  sub_257467018(v9, v8, v10);
  if (!v12)
  {
    return 0;
  }

  if (v15 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_257743994();
}

uint64_t Diagnostic.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  return sub_257743A64();
}

BOOL static Diagnostic.Kind.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_53;
      }

      v31 = OUTLINED_FUNCTION_205();
      sub_257467018(v31, v32, 1);
      v33 = OUTLINED_FUNCTION_263();
      sub_257467018(v33, v34, 1);
      return v2 == v5 && v3 == v6;
    case 2:
      if (v7 == 2)
      {
        v13 = *a1;
        if (v2 != v5 || v3 != v6)
        {
          v15 = sub_257743994();
          v16 = OUTLINED_FUNCTION_263();
          sub_257466F40(v16, v17, 2);
          v18 = OUTLINED_FUNCTION_0_103();
          sub_257466F40(v18, v19, v20);
          v21 = OUTLINED_FUNCTION_0_103();
          sub_257467018(v21, v22, v23);
          v24 = OUTLINED_FUNCTION_263();
          sub_257467018(v24, v25, 2);
          return v15 & 1;
        }

        sub_257466F40(v13, v3, 2);
        v36 = OUTLINED_FUNCTION_0_103();
        sub_257466F40(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_0_103();
        sub_257467018(v39, v40, v41);
        v30 = OUTLINED_FUNCTION_0_103();
LABEL_45:
        sub_257467018(v30, v42, v43);
        return 1;
      }

      else
      {

LABEL_53:
        v54 = OUTLINED_FUNCTION_263();
        sub_257466F40(v54, v55, v7);
        v56 = OUTLINED_FUNCTION_205();
        sub_257467018(v56, v57, v4);
        v58 = OUTLINED_FUNCTION_263();
        sub_257467018(v58, v59, v7);
        return 0;
      }

    case 3:
      switch(v2)
      {
        case 1:
          if (v7 != 3 || v5 != 1 || v6 != 0)
          {
            goto LABEL_53;
          }

          v60 = OUTLINED_FUNCTION_205();
          sub_257467018(v60, v61, 3);
          v35 = 1;
          sub_257467018(1, 0, 3);
          return v35;
        case 2:
          if (v7 != 3 || v5 != 2 || v6 != 0)
          {
            goto LABEL_53;
          }

          v46 = OUTLINED_FUNCTION_205();
          sub_257467018(v46, v47, 3);
          v30 = 2;
          goto LABEL_44;
        case 3:
          if (v7 != 3 || v5 != 3 || v6 != 0)
          {
            goto LABEL_53;
          }

          v50 = OUTLINED_FUNCTION_205();
          sub_257467018(v50, v51, 3);
          v30 = 3;
          goto LABEL_44;
        default:
          if (v7 != 3 || (v6 | v5) != 0)
          {
            goto LABEL_53;
          }

          v28 = OUTLINED_FUNCTION_205();
          sub_257467018(v28, v29, 3);
          v30 = 0;
LABEL_44:
          v42 = 0;
          v43 = 3;
          break;
      }

      goto LABEL_45;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_53;
      }

      v8 = OUTLINED_FUNCTION_205();
      sub_257467018(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_263();
      sub_257467018(v10, v11, 0);
      return v2 == v5;
  }
}

uint64_t Diagnostic.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 4) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v10 = *(v0 + 4);

    MEMORY[0x259C64E90](8250, 0xE200000000000000);
  }

  else
  {
    v10 = 0;
  }

  v4 = 0xE700000000000000;
  v5 = 0x676E696E726177;
  if (v1 != 1)
  {
    v5 = 1868983913;
    v4 = 0xE400000000000000;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x726F727265;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259C64E90](v6, v7);

  MEMORY[0x259C64E90](8250, 0xE200000000000000);
  v8 = Diagnostic.Kind.description.getter();
  MEMORY[0x259C64E90](v8);

  return v10;
}

uint64_t Diagnostic.Severity.description.getter()
{
  v1 = 0x676E696E726177;
  if (*v0 != 1)
  {
    v1 = 1868983913;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

unint64_t Diagnostic.Kind.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      MEMORY[0x259C64E90](0xD000000000000022, 0x8000000257782000);
      OUTLINED_FUNCTION_263();
      v8 = sub_257743974();
      MEMORY[0x259C64E90](v8);

      MEMORY[0x259C64E90](0xD000000000000022, 0x8000000257782030);
      OUTLINED_FUNCTION_263();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();

      OUTLINED_FUNCTION_5_58();
      v10 = v4 + 15;
      v5 = v2;
      v6 = v1;
      goto LABEL_8;
    case 3:
      switch(v2)
      {
        case 1:
          result = 0xD000000000000019;
          break;
        case 2:
          result = 0xD000000000000019;
          break;
        case 3:
          result = 0xD000000000000019;
          break;
        default:
          result = 0xD000000000000018;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_9_39();
      sub_257743834();

      OUTLINED_FUNCTION_5_58();
      v10 = v3 + 7;
LABEL_7:
      v9 = sub_257743974();
      MEMORY[0x259C64E90](v9);

      v5 = 46;
      v6 = 0xE100000000000000;
LABEL_8:
      MEMORY[0x259C64E90](v5, v6);
      return v10;
  }
}

unint64_t sub_257716BA8()
{
  result = qword_27F8817D0;
  if (!qword_27F8817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8817D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20MLModelSpecification10DiagnosticV4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_257716C38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_257716C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Diagnostic.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_257716DA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_257716DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_257716E2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_257716E7C(void *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  ++*v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v5 + 16);
  if (v4 != v6)
  {
    if (v4 < v6)
    {
      v10 = *(type metadata accessor for FeatureDescription(0) - 8);
      v11 = v4 + 1;
      v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4;
      v1[2] = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
      v14 = *(v13 + 48);
      *a1 = v3;
      sub_2577179F4(v12, a1 + v14);
      v8 = a1;
      v9 = 0;
      v7 = v13;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  *(v1 + 24) = 1;
LABEL_5:
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
  v8 = a1;
  v9 = 1;
LABEL_8:

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

MLModelSpecification::Analysis __swiftcall Model.analysis()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  sub_257717050(&v3);
  sub_25763D14C(v3);
  sub_257717150(v1, &v3);
  sub_25763D14C(v3);
  sub_257717654(v1, &v3);
  sub_25763D14C(v3);
  return result;
}

void sub_257717050(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Proto_Model(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4 <= 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v6 = sub_257743604();
    v8 = v7;
    *a1 = v5;
    sub_25767A064();
    v9 = *(*a1 + 16);
    sub_25767A0B0(v9);
    v5 = *a1;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 48 * v9;
    *(v10 + 32) = 0;
    *(v10 + 40) = v4;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = v6;
    *(v10 + 72) = v8;
  }

  *a1 = v5;
}

uint64_t sub_257717150@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v51 = a1;
  v47 = a2;
  v5 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3();
  v48 = v7 - v6;
  v50 = type metadata accessor for FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for FeatureDescription(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_3();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817E0, &qword_257776DC8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v46 - v17);
  v58 = MEMORY[0x277D84F90];
  Model.inputs.getter();
  v20 = *(v19 + 16);

  if (!v20)
  {
    v54 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    sub_257743604();
    sub_25746996C();
    v22 = v21;
    v3 = *(v21 + 16);
    if (v3 >= *(v21 + 24) >> 1)
    {
      sub_25746996C();
      v22 = v45;
    }

    *(v22 + 16) = v3 + 1;
    v23 = v22 + 48 * v3;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    OUTLINED_FUNCTION_7_47(v22, v23);
  }

  Model.inputs.getter();
  v54 = 0;
  v55 = v24;
  v56 = 0;
  v57 = 0;
  v52 = xmmword_2577442B0;
  v49 = v11;
  while (1)
  {
    sub_257716E7C(v18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v25) == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_0_104();
    sub_257717A58(v18 + v26, v15, v27);
    v28 = *v15;
    v29 = v15[1];
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = *v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      OUTLINED_FUNCTION_5_59();
      v31 = sub_257743974();
      v3 = v32;
      MEMORY[0x259C64E90](v31);

      MEMORY[0x259C64E90](10333, 0xE200000000000000);
      MEMORY[0x259C64E90](v28, v29);
      v33 = 41;
    }

    else
    {
      OUTLINED_FUNCTION_5_59();
      v34 = sub_257743974();
      MEMORY[0x259C64E90](v34);

      v33 = 93;
    }

    MEMORY[0x259C64E90](v33, 0xE100000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_6_58(inited);
    v36 = v51;
    v53 = v51;

    sub_25763D200(v3);
    v3 = v53;
    v37 = v4;
    v38 = *(v4 + *(type metadata accessor for Proto_Model(0) + 20));
    swift_beginAccess();
    sub_257670130(v3, *(v38 + 16), &v53);

    sub_25763D14C(v53);
    v39 = swift_initStackObject();
    OUTLINED_FUNCTION_6_58(v39);
    v53 = v36;

    sub_25763D200(v3);
    v40 = v49;
    FeatureDescription.type.getter();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v41 = v48;
      sub_257717A58(v40, v48, type metadata accessor for FeatureType.ShapedArrayParameters);
      sub_257702808();

      sub_257717AB8(v41, type metadata accessor for FeatureType.ShapedArrayParameters);
      v42 = v53;
    }

    else
    {

      sub_257717AB8(v40, type metadata accessor for FeatureType);
      v42 = MEMORY[0x277D84F90];
    }

    sub_25763D14C(v42);
    OUTLINED_FUNCTION_1_83();
    sub_257717AB8(v15, v43);
    v4 = v37;
  }

  *v47 = v58;
  return result;
}

uint64_t sub_257717654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v37 = a2;
  v4 = type metadata accessor for FeatureDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817D8, &qword_257776DC0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v44 = MEMORY[0x277D84F90];
  Model.outputs.getter();
  v13 = *(v12 + 16);

  if (!v13)
  {
    v42[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    sub_257743604();
    sub_25746996C();
    v15 = v14;
    v16 = *(v14 + 16);
    v17 = v16 + 1;
    if (v16 >= *(v14 + 24) >> 1)
    {
LABEL_15:
      sub_25746996C();
      v15 = v35;
    }

    *(v15 + 16) = v17;
    v18 = v15 + 48 * v16;
    *(v18 + 32) = 0;
    *(v18 + 40) = xmmword_257776DB0;
    OUTLINED_FUNCTION_7_47(v15, v18);
  }

  Model.outputs.getter();
  v17 = v19;
  v16 = 0;
  v41 = *(v19 + 16);
  v38 = xmmword_2577442B0;
  while (v41 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v20 = *(v39 + 48);
    sub_2577179F4(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, &v11[v20]);
    OUTLINED_FUNCTION_0_104();
    sub_257717A58(&v11[v20], v8, v21);
    v23 = *v8;
    v22 = v8[1];
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = *v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      OUTLINED_FUNCTION_4_64();
      v25 = sub_257743974();
      MEMORY[0x259C64E90](v25);

      MEMORY[0x259C64E90](10333, 0xE200000000000000);
      MEMORY[0x259C64E90](v23, v22);
      v26 = 41;
    }

    else
    {
      OUTLINED_FUNCTION_4_64();
      v27 = sub_257743974();
      MEMORY[0x259C64E90](v27);

      v26 = 93;
    }

    MEMORY[0x259C64E90](v26, 0xE100000000000000);
    v28 = v43[0];
    v29 = v43[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    inited = swift_initStackObject();
    *(inited + 16) = v38;
    *(inited + 32) = v28;
    *(inited + 40) = v29;
    v43[0] = v40;

    sub_25763D200(inited);
    v31 = v43[0];
    v32 = *(v3 + *(type metadata accessor for Proto_Model(0) + 20));
    swift_beginAccess();
    sub_257670130(v31, *(v32 + 16), v43);

    sub_25763D14C(v43[0]);
    OUTLINED_FUNCTION_1_83();
    sub_257717AB8(v8, v33);
    ++v16;
  }

  *v37 = v44;
  return result;
}

uint64_t sub_2577179F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257717A58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_257717AB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_4_64()
{
  *(v1 - 120) = v0;
  *(v1 - 112) = 0x5B74757074756FLL;
  *(v1 - 104) = 0xE700000000000000;
}

void OUTLINED_FUNCTION_5_59()
{
  *(v1 - 152) = v0;
  *(v1 - 144) = 0x5B7475706E69;
  *(v1 - 136) = 0xE600000000000000;
}

__n128 OUTLINED_FUNCTION_6_58(__n128 *a1)
{
  result = *(v3 - 288);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v1;
  return result;
}

void OUTLINED_FUNCTION_7_47(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 3;
  *(a2 + 64) = v2;
  *(a2 + 72) = v3;
  *(v4 - 96) = a1;
}

void sub_257717BB0()
{
  OUTLINED_FUNCTION_31();
  v33[1] = v2;
  v4 = v3;
  v5 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v7 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v33[0] = v10 - v9;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_64();
  v24 = type metadata accessor for Proto_MILSpec_Value(v23);
  sub_257487308(v4 + *(v24 + 20));
  v25 = 1;
  OUTLINED_FUNCTION_155(v20, 1, v12);
  if (!v26)
  {
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    sub_25771B9C4();
    sub_257661830();
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v16, v27);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v25, 1, v5);
  OUTLINED_FUNCTION_155(v1, 1, v5);
  if (v26)
  {
    sub_2574695E4(v1, &qword_27F880A30, &qword_25776ED00);
  }

  else
  {
    OUTLINED_FUNCTION_360();
    sub_25771B9C4();
    OUTLINED_FUNCTION_263();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v0 = v33[0];
      sub_25771BA1C();
      v29 = *v0;
      v30 = v0[1];

      sub_25771BACC(&v34, v29, v30);

      v31 = type metadata accessor for MLProgram.Value.BlobFileValue;
    }

    else
    {
      v31 = type metadata accessor for MLProgram.Value.Representation;
    }

    sub_25771BA74(v0, v31);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v1, v32);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25771810C()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v5 = type metadata accessor for MLProgram.Value.Dictionary(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v141 = v8 - v7;
  v9 = OUTLINED_FUNCTION_153();
  v10 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v140 = v13 - v12;
  v14 = OUTLINED_FUNCTION_153();
  v15 = type metadata accessor for MLProgram.Value.List(v14);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v139 = v18 - v17;
  v19 = OUTLINED_FUNCTION_153();
  v20 = type metadata accessor for MLProgram.ValueType.ListParameters(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v138 = v23 - v22;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for MLProgram.Value.Tuple(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v137 = v28 - v27;
  v29 = OUTLINED_FUNCTION_153();
  v30 = type metadata accessor for MLProgram.ValueType.TupleParameters(v29);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v36 = OUTLINED_FUNCTION_13(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v136 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881810, &qword_257776EF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  v42 = (&v135 - v41);
  v43 = OUTLINED_FUNCTION_153();
  type metadata accessor for MLProgram.Value.ImmediateValue(v43);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v45);
  OUTLINED_FUNCTION_29();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v135 - v48;
  MLProgram.Value.representation.getter(v47, v50, v51, v52, v53, v54, v55, v56, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v57 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_155(v49, 1, v57);
  if (v58)
  {
    MLProgram.Value.type.getter();
    v146 = v142;
    sub_2576F17A0();
    v60 = v59;
    sub_2576A66C8(0, v61, v62, v59);
    OUTLINED_FUNCTION_67_3();

    v63 = OUTLINED_FUNCTION_263();
    sub_257483A28(v63, v64, v60);
    goto LABEL_28;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_25771BA1C();
    MLProgram.Value.type.getter();
    v77 = v42 + *(v39 + 48);
    *v42 = v146;
    sub_25771B9C4();
    switch(*v42 >> 61)
    {
      case 1uLL:
        if (OUTLINED_FUNCTION_65_6() != 2)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_23_29();
        v34 = v138;
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v96 = v139;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        inited = swift_initStackObject();
        v98 = OUTLINED_FUNCTION_6_59(inited, xmmword_257743FF0);
        inited[3].n128_u64[0] = sub_2576F210C(v98);
        inited[3].n128_u64[1] = v99;
        inited[4].n128_u8[0] = v100;
        OUTLINED_FUNCTION_16_32();
        inited[4].n128_u64[1] = v101;
        inited[5].n128_u64[0] = v102;
        sub_2576635D8();
        inited[5].n128_u64[1] = v103;
        inited[6].n128_u64[0] = v104;
        inited[6].n128_u8[8] = v105;
        sub_2576A6964(inited);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v96, type metadata accessor for MLProgram.Value.List);
        v95 = type metadata accessor for MLProgram.ValueType.ListParameters;
        goto LABEL_24;
      case 2uLL:
        if (OUTLINED_FUNCTION_65_6() != 1)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_22_27();
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v106 = v137;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        v107 = swift_initStackObject();
        OUTLINED_FUNCTION_6_59(v107, xmmword_257743FF0);
        sub_2576F2344();
        v107[3].n128_u64[0] = v108;
        v107[3].n128_u64[1] = v109;
        v107[4].n128_u8[0] = v110;
        OUTLINED_FUNCTION_16_32();
        v107[4].n128_u64[1] = v111;
        v107[5].n128_u64[0] = v112;
        sub_2576635C0();
        v107[5].n128_u64[1] = v113;
        v107[6].n128_u64[0] = v114;
        v107[6].n128_u8[8] = v115;
        sub_2576A6964(v107);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v106, type metadata accessor for MLProgram.Value.Tuple);
        v95 = type metadata accessor for MLProgram.ValueType.TupleParameters;
        goto LABEL_24;
      case 3uLL:
        if (OUTLINED_FUNCTION_65_6() != 3)
        {
          goto LABEL_27;
        }

        swift_projectBox();
        OUTLINED_FUNCTION_26_20();
        v34 = v140;
        sub_25771B9C4();
        OUTLINED_FUNCTION_156();
        v85 = v141;
        sub_25771BA1C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        v86 = swift_initStackObject();
        v87 = OUTLINED_FUNCTION_6_59(v86, xmmword_257743FF0);
        v86[3].n128_u64[0] = sub_2576F4D1C(v87);
        v86[3].n128_u64[1] = v88;
        v86[4].n128_u8[0] = v89;
        OUTLINED_FUNCTION_16_32();
        v86[4].n128_u64[1] = v90;
        v86[5].n128_u64[0] = v91;
        sub_257663788();
        v86[5].n128_u64[1] = v92;
        v86[6].n128_u64[0] = v93;
        v86[6].n128_u8[8] = v94;
        sub_2576A6964(v86);
        OUTLINED_FUNCTION_67_3();
        sub_25771BA74(v85, type metadata accessor for MLProgram.Value.Dictionary);
        v95 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_24:
        v116 = v95;
        v117 = v34;
        goto LABEL_25;
      case 4uLL:
        goto LABEL_27;
      default:
        if (OUTLINED_FUNCTION_65_6())
        {
LABEL_27:
          OUTLINED_FUNCTION_11_46();
          sub_2574695E4(v42, &qword_27F881810, &qword_257776EF0);
        }

        else
        {
          swift_projectBox();
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = v77[16];
          OUTLINED_FUNCTION_27_24();
          v81 = v136;
          sub_25771B9C4();
          MLProgram.ValueType.TensorParameters.shape.getter();
          v83 = *(v82 + 16);

          if (v83 || (v142 = v79, v143 = v78, LOBYTE(v144) = v80, sub_257662F00() != 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            v118 = swift_initStackObject();
            OUTLINED_FUNCTION_6_59(v118, xmmword_257743FF0);
            sub_2576F1B84();
            v118[3].n128_u64[0] = v119;
            v118[3].n128_u64[1] = v120;
            v118[4].n128_u8[0] = v121;
            OUTLINED_FUNCTION_16_32();
            v118[4].n128_u64[1] = v122;
            v118[5].n128_u64[0] = v123;
            v142 = v79;
            v143 = v78;
            LOBYTE(v144) = v80;
            v118[5].n128_u64[1] = sub_257662FA0();
            v118[6].n128_u64[0] = v124;
            v118[6].n128_u8[8] = v125;
            sub_2576A6964(v118);
            OUTLINED_FUNCTION_67_3();
            v126 = OUTLINED_FUNCTION_222();
            sub_257664F74(v126, v127, v80);
            OUTLINED_FUNCTION_7_48();
            v117 = v81;
LABEL_25:
            sub_25771BA74(v117, v116);
            OUTLINED_FUNCTION_11_46();
          }

          else
          {
            if (v80)
            {
              v84 = 4;
            }

            else
            {
              v84 = 0;
            }

            switch((v78 >> 60) & 3 | v84)
            {
              case 1uLL:
                if (!*(v79 + 16))
                {
                  goto LABEL_48;
                }

                LODWORD(v142) = *(v79 + 32);
                goto LABEL_41;
              case 2uLL:
                if (!*(v79 + 16))
                {
                  goto LABEL_45;
                }

                LOBYTE(v142) = *(v79 + 32);
                goto LABEL_41;
              case 3uLL:
                if (!*(v79 + 16))
                {
                  goto LABEL_46;
                }

                v142 = 34;
                v143 = 0xE100000000000000;

                v128 = OUTLINED_FUNCTION_280();
                MEMORY[0x259C64E90](v128);
                MEMORY[0x259C64E90](34, 0xE100000000000000);
                v129 = OUTLINED_FUNCTION_222();
                sub_257664F74(v129, v130, v80);

                OUTLINED_FUNCTION_7_48();
                v132 = v136;
                goto LABEL_42;
              case 4uLL:
                if (!*(v79 + 16))
                {
                  goto LABEL_44;
                }

                v142 = *(v79 + 32);
                goto LABEL_41;
              case 5uLL:
                if (!*(v79 + 16))
                {
                  goto LABEL_49;
                }

                v142 = *(v79 + 32);
                goto LABEL_41;
              case 6uLL:
                LOBYTE(v142) = sub_2577430F4();
                goto LABEL_41;
              default:
                if (!*(v79 + 16))
                {
                  goto LABEL_47;
                }

                LODWORD(v142) = *(v79 + 32);
LABEL_41:
                sub_257743674();
                OUTLINED_FUNCTION_67_3();
                v133 = OUTLINED_FUNCTION_222();
                sub_257664F74(v133, v134, v80);
                OUTLINED_FUNCTION_7_48();
                v132 = v81;
LABEL_42:
                sub_25771BA74(v132, v131);
                OUTLINED_FUNCTION_11_46();

                break;
            }
          }
        }

        break;
    }

    goto LABEL_28;
  }

  sub_25771BA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v66 = swift_initStackObject();
  OUTLINED_FUNCTION_6_59(v66, xmmword_2577442C0);
  MLProgram.Value.type.getter();
  v145 = v146;
  sub_2576F17A0();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v66[3].n128_u64[0] = v68;
  v66[3].n128_u64[1] = v70;
  v66[4].n128_u8[0] = v72;
  v66[4].n128_u64[1] = 0x656D614E656C6966;
  v66[5].n128_u64[0] = 0xE800000000000000;
  v73 = *v4;
  v74 = v4[1];
  v142 = 34;
  v143 = 0xE100000000000000;
  MEMORY[0x259C64E90](v73, v74);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v75 = v143;
  v66[5].n128_u64[1] = v142;
  v66[6].n128_u64[0] = v75;
  v66[6].n128_u8[8] = 0;
  v66[7].n128_u64[0] = 0x74657366666FLL;
  v66[7].n128_u64[1] = 0xE600000000000000;
  if ((v4[2] & 0x8000000000000000) == 0)
  {
    v142 = v4[2];
    sub_25771B970();
    v66[8].n128_u64[0] = sub_2577437D4();
    v66[8].n128_u64[1] = v76;
    v66[9].n128_u8[0] = 0;
    sub_2576A6964(v66);
    OUTLINED_FUNCTION_67_3();
    sub_25771BA74(v4, type metadata accessor for MLProgram.Value.BlobFileValue);
LABEL_28:
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t MLProgram.Value.debugDescription.getter()
{
  sub_25771810C();
  v1 = v0;
  sub_2576A66C8(0, v2, v3, v0);
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, v1);
  return OUTLINED_FUNCTION_277();
}

void MLProgram.Value.init(_:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817E8, &qword_257776DD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  *(v7 + 32) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x2000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18_43();
  v8 = OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_13_33(v8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v9);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v10 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v10, v11, v12, v5);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v13);
  OUTLINED_FUNCTION_434();
}

{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2577442B0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x3000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18_43();
  v10 = OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_13_33(v10);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v11);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v12 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v12, v13, v14, v7);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v15);
  OUTLINED_FUNCTION_434();
}

{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F28, &qword_257744850);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  *(v7 + 32) = v2;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_54_7(0x1000000000000000);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18_43();
  v8 = OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_13_33(v8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v9);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v10 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v10, v11, v12, v5);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v13);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.Value.init(_:)(float a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8817F0, &qword_257776DD8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  *(v7 + 32) = a1;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_53_6();
  *v1 = v7;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18_43();
  v8 = OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_13_33(v8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v9);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v10 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v10, v11, v12, v5);

  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(v1, v13);
}

uint64_t MLProgram.Value.init(_:)(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B20, &unk_2577440E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  *(v7 + 32) = a1;
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_53_6();
  *v1 = v7;
  *(v1 + 8) = 0x1000000000000000;
  *(v1 + 16) = 1;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_42_16();
  OUTLINED_FUNCTION_263();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18_43();
  v8 = OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_13_33(v8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12_47(v9);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_292();
  sub_25771B9C4();
  v10 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v10, v11, v12, v5);

  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(v1, v13);
}

void MLProgram.Value.init(_:shape:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_15();
}

{
  OUTLINED_FUNCTION_40_15();
}

void sub_257719338()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v47 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *(v6 + 16);
  if (v20)
  {
    v43 = v3;
    v44 = v1;
    v45 = v15;
    v46 = v8;
    v48 = MEMORY[0x277D84F90];
    sub_257484540(0, v20, 0);
    v21 = v48;
    v22 = *(v48 + 16);
    v23 = 16 * v22;
    v24 = 32;
    do
    {
      v25 = *(v6 + v24);
      v48 = v21;
      v26 = *(v21 + 24);
      v27 = v22 + 1;
      if (v22 >= v26 >> 1)
      {
        sub_257484540((v26 > 1), v22 + 1, 1);
        v21 = v48;
      }

      *(v21 + 16) = v27;
      v28 = v21 + v23;
      *(v28 + 32) = v25;
      *(v28 + 40) = 0;
      v23 += 16;
      v24 += 8;
      v22 = v27;
      --v20;
    }

    while (v20);

    v15 = v45;
    v8 = v46;
    LOBYTE(v1) = v44;
    v3 = v43;
  }

  else
  {
  }

  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v29 = swift_allocBox();
  LOBYTE(v48) = v47;
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v19 = v8;
  *(v19 + 8) = v3;
  *(v19 + 16) = v1 & 1;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v30 = type metadata accessor for Proto_MILSpec_Value(0);
  v31 = *(v30 + 20);
  v32 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v10 + v31, v33, v34, v32);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v35 = *(v30 + 28);
  v36 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v10 + v35, v37, v38, v36);
  v48 = v29;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v15);
  MLProgram.Value.representation.setter(v14);

  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v19, v42);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateTensor(dataType:shape:contents:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v26 = OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v8;
  *(v0 + 8) = v9;
  *(v0 + 16) = v10;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_18_43();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v4 + v12, v14, v15, v13);
  v16 = OUTLINED_FUNCTION_280();
  sub_257667B4C(v16, v17, v10);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = *(v11 + 28);
  v19 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v4 + v18, v20, v21, v19);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v22 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_50_8(v22, v23, v24, v26);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v25);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateList<A>(type:length:contents:)()
{
  OUTLINED_FUNCTION_31();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v42 = v39 - v13;
  OUTLINED_FUNCTION_48_7();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v39[1] = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_0();
  v21 = *v8;
  v22 = *v6;
  v23 = *(v6 + 8);
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v24 = swift_allocBox();
  v45 = v21;
  v43 = v22;
  v44 = v23;

  MLProgram.ValueType.ListParameters.init(type:length:)();
  (*(v15 + 16))(v19, v40, v4);
  MLProgram.Value.List.init<A>(_:)(v19, v4, v41, v0);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v25 = OUTLINED_FUNCTION_18_43();
  v26 = *(v25 + 20);
  v27 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v30 = OUTLINED_FUNCTION_25_5(v10 + v26, v28, v29, v27);
  OUTLINED_FUNCTION_57_4(v30);
  v31 = *(v25 + 28);
  v32 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v10 + v31, v33, v34, v32);
  v43 = v24 | 0x2000000000000000;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  sub_25771B9C4();
  v35 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v35, v36, v37);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v38);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2577199CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Value.documentation.setter(v1, v2);
}

uint64_t MLProgram.Value.documentation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*MLProgram.Value.documentation.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void MLProgram.Value.type.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_280();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24[-v16];
  v18 = *(type metadata accessor for Proto_MILSpec_Value(0) + 28);
  sub_257487308(v0 + v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v3);
  sub_2574695E4(v17, &qword_27F879E10, &qword_257744730);
  if (EnumTagSinglePayload == 1)
  {
    type metadata accessor for MLProgram.ValueType.TensorParameters(0);
    v20 = swift_allocBox();
    v24[15] = 3;
    OUTLINED_FUNCTION_53_6();
    *v2 = v20;
  }

  else
  {
    sub_257487308(v0 + v18);
    OUTLINED_FUNCTION_155(v14, 1, v3);
    if (v21)
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v22 = *(v3 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27F878FF0);
      }

      *(v7 + v22) = qword_27F87B038;
      v23 = __swift_getEnumTagSinglePayload(v14, 1, v3);

      if (v23 != 1)
      {
        sub_2574695E4(v14, &qword_27F879E10, &qword_257744730);
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_30();
      OUTLINED_FUNCTION_277();
      sub_25771BA1C();
    }

    sub_2576F0F64();
  }

  OUTLINED_FUNCTION_35();
}

void MLProgram.Value.type.setter()
{
  OUTLINED_FUNCTION_433();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for Proto_MILSpec_ValueType(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = *(v6 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27F878FF0);
  }

  *(v1 + v8) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
  }

  else
  {
    type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    swift_allocObject();

    v14 = sub_2574E503C(v13);

    *(v1 + v8) = v14;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v15 = type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574695E4(v2 + *(v15 + 28), &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_28_30();
  sub_25771BA1C();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  OUTLINED_FUNCTION_434();
}

uint64_t (*MLProgram.Value.type.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  MLProgram.Value.type.getter();
  return sub_257719F60;
}

void sub_257719F60(void *a1, char a2)
{
  if (a2)
  {

    MLProgram.Value.type.setter();
  }

  else
  {
    MLProgram.Value.type.setter();
  }
}

void MLProgram.Value.representation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v24 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_64();
  v32 = type metadata accessor for Proto_MILSpec_Value(v31);
  sub_257487308(v18 + *(v32 + 20));
  v33 = 1;
  OUTLINED_FUNCTION_155(v19, 1, v24);
  if (!v34)
  {
    OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_360();
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    sub_25771B9C4();
    sub_257661830();
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v28, v35);
    v33 = 0;
  }

  v36 = type metadata accessor for MLProgram.Value.Representation(0);
  __swift_storeEnumTagSinglePayload(v23, v33, 1, v36);
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25771A12C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_257487308(a1);
  return MLProgram.Value.representation.setter(v4);
}

uint64_t MLProgram.Value.representation.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_271();
  sub_257487308(a1);
  v9 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_155(v6, 1, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_277();
    sub_2574695E4(v11, v12, &qword_25776ED00);
    sub_2574695E4(v6, &qword_27F880A30, &qword_25776ED00);
    v14 = 1;
  }

  else
  {
    sub_257661640();
    sub_2574695E4(a1, &qword_27F880A30, &qword_25776ED00);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v6, v13);
    v14 = 0;
  }

  v15 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1, v14, 1, v15);
  type metadata accessor for Proto_MILSpec_Value(0);
  return sub_25751BB28();
}

void MLProgram.Value.representation.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[3] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v8);
  v3[4] = OUTLINED_FUNCTION_56_6();
  v9 = OUTLINED_FUNCTION_56_6();
  v3[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v10);
  v3[6] = OUTLINED_FUNCTION_56_6();
  v3[7] = OUTLINED_FUNCTION_56_6();
  v11 = OUTLINED_FUNCTION_56_6();
  v3[8] = v11;
  v12 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
  *(v3 + 18) = v12;
  sub_257487308(v0 + v12);
  v13 = 1;
  OUTLINED_FUNCTION_155(v9, 1, v4);
  if (!v14)
  {
    OUTLINED_FUNCTION_24_31();
    sub_25771BA1C();
    OUTLINED_FUNCTION_9_43();
    OUTLINED_FUNCTION_263();
    sub_25771B9C4();
    sub_257661830();
    OUTLINED_FUNCTION_8_45();
    sub_25771BA74(v7, v15);
    v13 = 0;
  }

  v16 = type metadata accessor for MLProgram.Value.Representation(0);
  __swift_storeEnumTagSinglePayload(v11, v13, 1, v16);
  OUTLINED_FUNCTION_35();
}

void sub_25771A51C()
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
    MLProgram.Value.representation.setter(v5);
    sub_2574695E4(v3, &qword_27F880A30, &qword_25776ED00);
  }

  else
  {
    sub_257487308((*v0)[8]);
    v11 = type metadata accessor for MLProgram.Value.Representation(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v11);
    v13 = v1[7];
    v14 = v1[8];
    if (EnumTagSinglePayload == 1)
    {
      v15 = OUTLINED_FUNCTION_263();
      sub_2574695E4(v15, v16, &qword_25776ED00);
      sub_2574695E4(v13, &qword_27F880A30, &qword_25776ED00);
      v17 = 1;
    }

    else
    {
      sub_257661640();
      sub_2574695E4(v14, &qword_27F880A30, &qword_25776ED00);
      OUTLINED_FUNCTION_0_105();
      sub_25771BA74(v13, v18);
      v17 = 0;
    }

    v2 = v1[7];
    v3 = v1[8];
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(v7, v17, 1, v1[1]);
    sub_25751BB28();
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

uint64_t MLProgram.Value.init(type:representation:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_271();
  v7 = OUTLINED_FUNCTION_18_43();
  v8 = *(v7 + 20);
  v9 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(a2 + v8, v10, v11, v9);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(v7 + 28);
  v13 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(a2 + v12, v14, v15, v13);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  MLProgram.Value.representation.setter(v2);
  OUTLINED_FUNCTION_0_105();
  return sub_25771BA74(a1, v20);
}

void static MLProgram.Value.blob(type:fileName:offset:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v6;
  v0[1] = v4;
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v0[2] = v2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_43();
    v10 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
    OUTLINED_FUNCTION_12_47(v10);

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v11 = type metadata accessor for Proto_MILSpec_ValueType(0);
    OUTLINED_FUNCTION_20_27(v11);
    MLProgram.Value.type.setter();
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_51_7();
    v12 = OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_34_17(v12, v13, v14);
    OUTLINED_FUNCTION_0_105();
    sub_25771BA74(v0, v15);
    OUTLINED_FUNCTION_35();
  }
}

void static MLProgram.Value.immediateTensor(parameters:contents:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_27_24();
  sub_25771B9C4();
  *v0 = v8;
  *(v0 + 8) = v9;
  *(v0 + 16) = v10;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v11 = OUTLINED_FUNCTION_18_43();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v4 + v12, v14, v15, v13);
  v16 = OUTLINED_FUNCTION_280();
  sub_257667B4C(v16, v17, v10);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = *(v11 + 28);
  v19 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v4 + v18, v20, v21, v19);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v22 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v22, v23, v24);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v25);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateTuple(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_22_27();
  sub_25771B9C4();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_18_43();
  v4 = OUTLINED_FUNCTION_46_12();
  v5 = OUTLINED_FUNCTION_12_47(v4);
  OUTLINED_FUNCTION_57_4(v5);
  v6 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v6);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v7 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v7, v8, v9);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v10);
  OUTLINED_FUNCTION_434();
}

void static MLProgram.Value.immediateTuple<A>(_:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - v10;
  OUTLINED_FUNCTION_48_7();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v39 = type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = (v19 - v18);
  sub_257665DA0(sub_25771AE70, 0, v3, &type metadata for MLProgram.ValueType, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v21);
  type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v22 = swift_allocBox();
  *v23 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_MILSpec_TupleType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  MLProgram.ValueType.TupleParameters.types.setter();
  (*(v12 + 16))(v16, v5, v3);
  MLProgram.Value.Tuple.init<A>(_:)(v16, v3, v1, v20);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  v24 = v39;
  swift_storeEnumTagMultiPayload();
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v25 = type metadata accessor for Proto_MILSpec_Value(0);
  v26 = *(v25 + 20);
  v27 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_25_5(v7 + v26, v28, v29, v27);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v30 = *(v25 + 28);
  v31 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v7 + v30, v32, v33, v31);
  v41 = v22 | 0x4000000000000000;
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  v34 = v40;
  sub_25771B9C4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v24);
  MLProgram.Value.representation.setter(v34);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v20, v38);
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.immediateList(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_23_29();
  sub_25771B9C4();
  OUTLINED_FUNCTION_222();
  sub_25771B9C4();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_18_43();
  v4 = OUTLINED_FUNCTION_46_12();
  v5 = OUTLINED_FUNCTION_12_47(v4);
  OUTLINED_FUNCTION_57_4(v5);
  v6 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v6);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v7 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v7, v8, v9);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v10);
  OUTLINED_FUNCTION_434();
}

void static MLProgram.Value.immediateDictionary(parameters:contents:)()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_49_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  swift_allocBox();
  OUTLINED_FUNCTION_26_20();
  sub_25771B9C4();
  OUTLINED_FUNCTION_29_21();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_18_43();
  v4 = OUTLINED_FUNCTION_46_12();
  v5 = OUTLINED_FUNCTION_12_47(v4);
  OUTLINED_FUNCTION_57_4(v5);
  v6 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v6);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v7 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v7, v8, v9);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v10);
  OUTLINED_FUNCTION_434();
}

void static MLProgram.Value.immediateDictionary(keyType:valueType:contents:)()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  swift_allocBox();

  MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
  OUTLINED_FUNCTION_29_21();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_18_43();
  v4 = OUTLINED_FUNCTION_46_12();
  v5 = OUTLINED_FUNCTION_12_47(v4);
  OUTLINED_FUNCTION_57_4(v5);
  v6 = OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_20_27(v6);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v7 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v7, v8, v9);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v10);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_25_29();
  sub_25771B894(v1, v2, &unk_25774F018);

  return sub_2577435F4();
}

uint64_t MLProgram.Value.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_25_29();
  sub_25771B894(v0, v1, &unk_25774F018);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25771B348(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_25771B894(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value, &unk_25774F018);
  sub_2577435F4();
  return sub_257743A64();
}

void MLProgram.Value.init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E58, &qword_257744780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = *(v2 + 16);
  *(inited + 40) = 0;
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_36_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v9 = OUTLINED_FUNCTION_18_43();
  v10 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_12_47(v10);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(v9 + 28);
  v12 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_25_5(v4 + v11, v13, v14, v12);
  MLProgram.Value.type.setter();
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_51_7();
  v15 = OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_34_17(v15, v16, v17);
  OUTLINED_FUNCTION_0_105();
  sub_25771BA74(v0, v18);
  OUTLINED_FUNCTION_434();
}

uint64_t type metadata accessor for MLProgram.Value(uint64_t a1)
{
  result = qword_27F881800;
  if (!qword_27F881800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25771B894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25771B904(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25771B970()
{
  result = qword_27F881818;
  if (!qword_27F881818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881818);
  }

  return result;
}

uint64_t sub_25771B9C4()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_25771BA1C()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_25771BA74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_25771BACC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_257743A14();
  sub_257743694();
  v8 = sub_257743A64();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_257743994() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  v17 = OUTLINED_FUNCTION_360();
  sub_25771BE70(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_25771BC14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  result = sub_257743824();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_257740E08(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_257743A14();
    sub_257743694();
    result = sub_257743A64();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_25771BE70(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25771BC14(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25771C130(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_257743A14();
      sub_257743694();
      result = sub_257743A64();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_257743994() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_25771BFD8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2577439A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_25771BFD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  v2 = *v0;
  v3 = sub_257743814();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25771C130(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881820, qword_257776EF8);
  result = sub_257743824();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_257743A14();

        sub_257743694();
        result = sub_257743A64();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_6_59(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869940;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return type metadata accessor for MLProgram.Value.Representation(0);
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_25771BA74(v0, type metadata accessor for MLProgram.Value.ImmediateValue);
}

uint64_t OUTLINED_FUNCTION_12_47(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_43()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;

  return type metadata accessor for Proto_MILSpec_Value(0);
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_29_21()
{

  return sub_25771B9C4();
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);

  return MLProgram.Value.representation.setter(v3);
}

uint64_t OUTLINED_FUNCTION_41_16()
{

  return type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_50_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return MLProgram.Value.representation.setter(v4);
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_25771B9C4();
}

void OUTLINED_FUNCTION_53_6()
{

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
}

uint64_t OUTLINED_FUNCTION_54_7@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;

  return type metadata accessor for MLProgram.Value.ImmediateValue(0);
}

void OUTLINED_FUNCTION_55_8()
{

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
}

void *OUTLINED_FUNCTION_56_6()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return type metadata accessor for Proto_MILSpec_ValueType(0);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return type metadata accessor for Proto_MILSpec_ValueType(0);
}

void sub_25771C79C()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v109 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v95 = &v93 - v7;
  v8 = type metadata accessor for SparseSupportVector(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_6();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v103 = xmmword_257743FF0;
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x657372617053;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = xmmword_2577754B0;
  *(inited + 64) = 0;
  *(inited + 72) = 0x73726F74636556;
  *(inited + 80) = 0xE700000000000000;
  v13 = SparseSupportVectorCollection.vectors.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v94 = inited;
    v15 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_20_28();
    sub_257484040(v16, v17, v18);
    v101 = v115;
    OUTLINED_FUNCTION_193();
    v93 = v13;
    v97 = v13 + v20;
    v96 = *(v11 + 72);
    v102 = v6;
    v99 = v0;
    v98 = v14;
    do
    {
      v100 = v19;
      OUTLINED_FUNCTION_0_106();
      sub_25771E9F0(v21, v0);
      v22 = *v0;
      v23 = *(*v0 + 16);
      if (v23)
      {
        v114 = v15;
        v24 = OUTLINED_FUNCTION_20_28();
        sub_2574853E8(v24, v25, v26);
        v27 = v95;
        v28 = v114;
        v29 = type metadata accessor for Proto_SparseNode(0);
        OUTLINED_FUNCTION_24(v29);
        v31 = v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v33 = *(v32 + 72);
        do
        {
          OUTLINED_FUNCTION_6_60();
          sub_25771E9F0(v31, v27);
          v114 = v28;
          v35 = *(v28 + 16);
          v34 = *(v28 + 24);
          if (v35 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_174(v34);
            OUTLINED_FUNCTION_32_17();
            sub_2574853E8(v37, v38, v39);
            v27 = v95;
            v28 = v114;
          }

          *(v28 + 16) = v35 + 1;
          OUTLINED_FUNCTION_193();
          OUTLINED_FUNCTION_5_60();
          sub_25771EA4C(v27, v36);
          v31 += v33;
          --v23;
        }

        while (v23);
      }

      else
      {
        v28 = v15;
      }

      v40 = *(v28 + 16);
      if (v40)
      {
        v114 = v15;
        sub_257484040(0, v40, 0);
        v41 = v114;
        OUTLINED_FUNCTION_193();
        v106 = v28 + v43;
        v105 = *(v44 + 72);
        v108 = v28;
        v107 = v40;
        do
        {
          v112 = v41;
          v111 = v42;
          OUTLINED_FUNCTION_11_47();
          sub_25771E9F0(v45, v6);
          v46 = swift_initStackObject();
          *(v46 + 16) = v103;
          *(v46 + 32) = 0x7865646E49;
          v47 = v46 + 32;
          *(v46 + 40) = 0xE500000000000000;
          v113 = *v6;
          *(v46 + 48) = sub_257743674();
          *(v46 + 56) = v48;
          *(v46 + 64) = 0;
          *(v46 + 72) = 0x65756C6156;
          *(v46 + 80) = 0xE500000000000000;
          v113 = *(v6 + 1);
          *(v46 + 88) = sub_257743674();
          *(v46 + 96) = v49;
          v110 = v46;
          *(v46 + 104) = 0;
          v50 = OUTLINED_FUNCTION_19_34();
          sub_257483754(v50, v51, v52);
          v53 = 0;
          v54 = 0;
          v55 = v113;
          do
          {
            v56 = v53;
            v57 = *(v47 + v54);
            v58 = *(v47 + v54 + 8);
            v113 = v55;
            v60 = *(v55 + 16);
            v59 = *(v55 + 24);

            if (v60 >= v59 >> 1)
            {
              sub_257483754((v59 > 1), v60 + 1, 1);
              v55 = v113;
            }

            *(v55 + 16) = v60 + 1;
            v61 = v55 + 16 * v60;
            *(v61 + 32) = v57;
            *(v61 + 40) = v58;
            v53 = 1;
            v54 = 40;
          }

          while ((v56 & 1) == 0);
          v62 = OUTLINED_FUNCTION_19_34();
          sub_257484040(v62, v63, v64);
          v65 = 0;
          v66 = 0;
          v67 = v113;
          do
          {
            v68 = v65;
            v70 = *(v47 + v66 + 16);
            v69 = *(v47 + v66 + 24);
            v71 = *(v47 + v66 + 32);
            sub_2576A8798(v70, v69, v71);
            v113 = v67;
            v73 = *(v67 + 16);
            v72 = *(v67 + 24);
            if (v73 >= v72 >> 1)
            {
              OUTLINED_FUNCTION_174(v72);
              OUTLINED_FUNCTION_32_17();
              sub_257484040(v75, v76, v77);
              v67 = v113;
            }

            *(v67 + 16) = v73 + 1;
            v74 = v67 + 24 * v73;
            *(v74 + 32) = v70;
            *(v74 + 40) = v69;
            *(v74 + 48) = v71;
            v65 = 1;
            v66 = 40;
          }

          while ((v68 & 1) == 0);

          OUTLINED_FUNCTION_14_32();
          v6 = v102;
          sub_25771EB2C();
          v41 = v112;
          v114 = v112;
          v79 = *(v112 + 16);
          v78 = *(v112 + 24);
          if (v79 >= v78 >> 1)
          {
            OUTLINED_FUNCTION_174(v78);
            OUTLINED_FUNCTION_32_17();
            sub_257484040(v81, v82, v83);
            v41 = v114;
          }

          v42 = v111 + 1;
          *(v41 + 16) = v79 + 1;
          v80 = v41 + 24 * v79;
          *(v80 + 32) = v55;
          *(v80 + 40) = v67;
          *(v80 + 48) = 2;
          v15 = MEMORY[0x277D84F90];
        }

        while (v42 != v107);
      }

      else
      {

        v41 = v15;
      }

      OUTLINED_FUNCTION_1_85();
      v0 = v99;
      sub_25771EB2C();
      v84 = v101;
      v115 = v101;
      v86 = *(v101 + 16);
      v85 = *(v101 + 24);
      v87 = v98;
      if (v86 >= v85 >> 1)
      {
        OUTLINED_FUNCTION_174(v85);
        OUTLINED_FUNCTION_32_17();
        sub_257484040(v89, v90, v91);
        v84 = v115;
      }

      v19 = v100 + 1;
      *(v84 + 16) = v86 + 1;
      v101 = v84;
      v88 = v84 + 24 * v86;
      *(v88 + 32) = v41;
      *(v88 + 40) = 0;
      *(v88 + 48) = 1;
    }

    while (v19 != v87);

    inited = v94;
    v92 = v101;
  }

  else
  {

    v92 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v92;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t SparseSupportVectorCollection.vectors.getter()
{
  v4 = type metadata accessor for SparseSupportVector(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_17_2();
    sub_257483674(v11, v12, v13);
    v10 = v24;
    v14 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v14);
    v16 = v8 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v17 + 72);
    do
    {
      OUTLINED_FUNCTION_2_71();
      sub_25771E9F0(v16, v1);
      OUTLINED_FUNCTION_24_2();
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_174(v19);
        sub_257483674(v22, v2, 1);
        v10 = v24;
      }

      *(v10 + 16) = v2;
      OUTLINED_FUNCTION_9_44();
      sub_25771EA4C(v1, v21 + *(v7 + 72) * v3);
      v16 += v18;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void SparseSupportVectorCollection.vectors.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for SparseSupportVector(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_SparseVector(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257483FE8(v18, v19, v20);
    v21 = v29;
    OUTLINED_FUNCTION_193();
    v23 = v0 + v22;
    v24 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_0_106();
      sub_25771E9F0(v23, v9);
      OUTLINED_FUNCTION_2_71();
      sub_25771E9F0(v9, v16);
      OUTLINED_FUNCTION_1_85();
      sub_25771EB2C();
      OUTLINED_FUNCTION_27_2();
      if (v26)
      {
        v28 = OUTLINED_FUNCTION_174(v25);
        sub_257483FE8(v28, v6, 1);
        v21 = v29;
      }

      *(v21 + 16) = v6;
      OUTLINED_FUNCTION_193();
      sub_25771EA4C(v16, v21 + v27 + *(v13 + 72) * v0);
      v23 += v24;
      --v17;
    }

    while (v17);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *v1 = v21;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SparseSupportVectorCollection.vectors.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = SparseSupportVectorCollection.vectors.getter();
  return sub_25771D288;
}

uint64_t SparseSupportVectorCollection.startIndex.getter()
{
  SparseSupportVectorCollection.vectors.getter();

  return 0;
}

uint64_t SparseSupportVectorCollection.count.getter()
{
  v0 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

Swift::Int __swiftcall SparseSupportVectorCollection.index(after:)(Swift::Int after)
{
  SparseSupportVectorCollection.vectors.getter();

  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SparseSupportVectorCollection.index(before:)(Swift::Int before)
{
  SparseSupportVectorCollection.vectors.getter();

  result = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t SparseSupportVectorCollection.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = SparseSupportVectorCollection.vectors.getter();
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

  v5 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_24(v5);
  OUTLINED_FUNCTION_0_106();
  sub_25771E9F0(v6, a2);
}

void sub_25771D470(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = type metadata accessor for SparseSupportVector(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  sub_25771E9F0(a1, v7);
  SparseSupportVectorCollection.subscript.setter(v7, v8);
}

void SparseSupportVectorCollection.subscript.setter(uint64_t a1, unint64_t a2)
{
  v4 = SparseSupportVectorCollection.vectors.getter();
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

  sub_25767A120(v4, v5, v6, v7);
  v4 = v11;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v4 + 16) > a2)
  {
    v8 = type metadata accessor for SparseSupportVector(0);
    OUTLINED_FUNCTION_24(v8);
    sub_25771EAA8(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * a2);
    SparseSupportVectorCollection.vectors.setter();
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
    return;
  }

LABEL_7:
  __break(1u);
}

void (*SparseSupportVectorCollection.subscript.modify(unint64_t *a1, unint64_t a2))(unint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v5 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  a1[3] = v8;
  result = SparseSupportVectorCollection.vectors.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 2) > a2)
  {
    OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v10, v8);

    return sub_25771D6E8;
  }

  __break(1u);
  return result;
}

void sub_25771D6E8(unint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  if (a2)
  {
    sub_25771E9F0(a1[3], v2);
    SparseSupportVectorCollection.subscript.setter(v2, v4);
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
  }

  else
  {
    SparseSupportVectorCollection.subscript.setter(a1[3], v4);
  }

  free(v3);

  free(v2);
}

void (*sub_25771D784(void *a1, uint64_t *a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[1] = v2;
  v6 = *(type metadata accessor for SparseSupportVector(0) - 8);
  v7 = *(v6 + 64);
  v5[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *a2;
  v5[3] = v8;
  v5[4] = v9;
  v10 = SparseSupportVectorCollection.vectors.getter();
  v11 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C();
  if (v11)
  {
    sub_25771E9F0(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8);
LABEL_3:

    return sub_25771D910;
  }

  result = sub_2576A87F4();
  if (v7 == 8)
  {
    *v5 = result;
    sub_25771E9F0(v5, v8);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_25771D910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 16);
  if (a2)
  {
    sub_25771E9F0(*(*a1 + 24), v5);
    SparseSupportVectorCollection.subscript.setter(v5, v4);
    OUTLINED_FUNCTION_1_85();
    sub_25771EB2C();
  }

  else
  {
    SparseSupportVectorCollection.subscript.setter(*(*a1 + 24), v4);
  }

  free(v3);
  free(v5);

  free(v2);
}

void (*sub_25771D9C4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_25771F7A4();
  return sub_257679C40;
}

void sub_25771DA28(uint64_t *a1@<X8>, uint64_t (*a2)(char *)@<X0>, uint64_t a3@<X1>)
{
  sub_25771FD98(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

uint64_t sub_25771DA60@<X0>(void *a1@<X8>)
{
  result = SparseSupportVectorCollection.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t sub_25771DA88@<X0>(uint64_t *a1@<X8>)
{
  result = SparseSupportVectorCollection.count.getter();
  *a1 = result;
  return result;
}

void (*sub_25771DAB0(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SparseSupportVector(v3);
  OUTLINED_FUNCTION_24(v4);
  v6 = *(v5 + 64);
  v7 = __swift_coroFrameAllocStub(v6);
  v2[1] = v7;
  SparseSupportVectorCollection.vectors.getter();
  v8 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C();
  if (v8)
  {
    OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v9, v7);
LABEL_3:

    return sub_25771DBE0;
  }

  result = sub_2576A87F4();
  if (v6 == 8)
  {
    *v2 = result;
    OUTLINED_FUNCTION_0_106();
    sub_25771E9F0(v2, v7);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_25771DBE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_1_85();
  sub_25771EB2C();

  free(v1);
}

uint64_t sub_25771DC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257720478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_25771DC5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = SparseSupportVectorCollection.index(after:)(v2);
  *v1 = result;
  return result;
}

void sub_25771DC84()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SparseSupportVector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = *v0;
  v7 = j__OUTLINED_FUNCTION_32(*v1);
  if (!v7)
  {
LABEL_10:
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

    *v0 = v6 + 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v8 = v7;
  v18 = sub_2576C1F20();
  sub_257695CB0(v8);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  v9 = j__OUTLINED_FUNCTION_289();
  v10 = 0;
  while ((v9 & 1) != 0)
  {
    v11 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v11);
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(v12, v2);
LABEL_8:
    ++v10;
    sub_2576C1F2C();
    v16 = *(v18 + 16);
    sub_2576C1FB8(v16);
    sub_2576C2020(v16, v2);
    nullsub_6();
    if (v8 == v10)
    {

      goto LABEL_10;
    }
  }

  sub_2576A8420();
  v13 = OUTLINED_FUNCTION_30();
  v14 = type metadata accessor for Proto_SparseVector(v13);
  OUTLINED_FUNCTION_13(v14);
  if (*(v15 + 64) == 8)
  {
    v17 = &v18;
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(&v17, v2);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

Swift::Int sub_25771DE2C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = SparseSupportVectorCollection.index(before:)(v2);
  *v1 = result;
  return result;
}

void sub_25771DE54()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for SparseSupportVector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = *v0;
  v7 = j__OUTLINED_FUNCTION_32(*v1);
  if (!v7)
  {
LABEL_10:
    if (__OFSUB__(v6, 1))
    {
      goto LABEL_13;
    }

    *v0 = v6 - 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v8 = v7;
  v18 = sub_2576C1F20();
  sub_257695CB0(v8);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  v9 = j__OUTLINED_FUNCTION_289();
  v10 = 0;
  while ((v9 & 1) != 0)
  {
    v11 = type metadata accessor for Proto_SparseVector(0);
    OUTLINED_FUNCTION_24(v11);
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(v12, v2);
LABEL_8:
    ++v10;
    sub_2576C1F2C();
    v16 = *(v18 + 16);
    sub_2576C1FB8(v16);
    sub_2576C2020(v16, v2);
    nullsub_6();
    if (v8 == v10)
    {

      goto LABEL_10;
    }
  }

  sub_2576A8420();
  v13 = OUTLINED_FUNCTION_30();
  v14 = type metadata accessor for Proto_SparseVector(v13);
  OUTLINED_FUNCTION_13(v14);
  if (*(v15 + 64) == 8)
  {
    v17 = &v18;
    OUTLINED_FUNCTION_2_71();
    sub_25771E9F0(&v17, v2);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_25771DFFC@<X0>(uint64_t a1@<X8>)
{
  sub_25771E9F0(v1, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60) + 36);
  SparseSupportVectorCollection.vectors.getter();

  result = sub_25771EB2C();
  *(a1 + v3) = 0;
  return result;
}

uint64_t SparseSupportVector.nodes.getter()
{
  v3 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_17_2();
    sub_2574853E8(v8, v9, v10);
    v7 = v21;
    v11 = type metadata accessor for Proto_SparseNode(0);
    OUTLINED_FUNCTION_24(v11);
    v13 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_6_60();
      sub_25771E9F0(v13, v1);
      OUTLINED_FUNCTION_24_2();
      if (v17)
      {
        v19 = OUTLINED_FUNCTION_174(v16);
        sub_2574853E8(v19, v2, 1);
        v7 = v21;
      }

      *(v7 + 16) = v2;
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_60();
      sub_25771EA4C(v1, v18);
      v13 += v15;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void SparseSupportVector.nodes.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for SparseSupportVector.SparseNode(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_SparseNode(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485440(v18, v19, v20);
    v21 = v29;
    OUTLINED_FUNCTION_193();
    v23 = v0 + v22;
    v24 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_11_47();
      sub_25771E9F0(v23, v9);
      OUTLINED_FUNCTION_6_60();
      sub_25771E9F0(v9, v16);
      OUTLINED_FUNCTION_14_32();
      sub_25771EB2C();
      OUTLINED_FUNCTION_27_2();
      if (v26)
      {
        v28 = OUTLINED_FUNCTION_174(v25);
        sub_257485440(v28, v6, 1);
        v21 = v29;
      }

      *(v21 + 16) = v6;
      OUTLINED_FUNCTION_193();
      sub_25771EA4C(v16, v21 + v27 + *(v13 + 72) * v0);
      v23 += v24;
      --v17;
    }

    while (v17);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *v1 = v21;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SparseSupportVector.nodes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = SparseSupportVector.nodes.getter();
  return sub_25771E458;
}

uint64_t sub_25771E470(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_25771E50C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F90];
  a2(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return a3(a1);
}

BOOL sub_25771E59C(void *a1, void *a2, uint64_t (*a3)(void, void), void (*a4)(void))
{
  result = 0;
  if (a3(*a1, *a2))
  {
    a4(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_12_48();
    v6 = sub_25771EBC8(v5);
    if (OUTLINED_FUNCTION_4_2(v6))
    {
      return 1;
    }
  }

  return result;
}

void SparseSupportVector.init(dictionaryLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SparseSupportVector.SparseNode(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    v11 = OUTLINED_FUNCTION_20_28();
    sub_2574853E8(v11, v12, v13);
    v14 = 0;
    v15 = (a1 + 40);
    while (v14 < *(a1 + 16))
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      *v8 = 0;
      *(v8 + 8) = 0;
      type metadata accessor for Proto_SparseNode(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v16 < 0xFFFFFFFF80000000)
      {
        goto LABEL_13;
      }

      if (v16 > 0x7FFFFFFF)
      {
        goto LABEL_14;
      }

      *v8 = v16;
      *(v8 + 8) = v17;
      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_174(v18);
        sub_2574853E8(v21, v19 + 1, 1);
      }

      ++v14;
      *(v22 + 16) = v19 + 1;
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_60();
      sub_25771EA4C(v8, v20);
      v15 += 2;
      if (v9 == v14)
      {

        v10 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

LABEL_11:
    *a2 = v10;
    type metadata accessor for Proto_SparseVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    SparseSupportVector.nodes.setter();
  }
}

uint64_t SparseSupportVector.SparseNode.init(index:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  type metadata accessor for Proto_SparseNode(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *a2 = a1;
    *(a2 + 8) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t SparseSupportVector.SparseNode.index.setter(uint64_t result)
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