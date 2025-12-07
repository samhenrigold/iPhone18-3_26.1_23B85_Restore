uint64_t MLProgram.Function.debugDescription.getter()
{
  sub_257650478();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

unint64_t sub_25765368C(uint64_t a1, uint64_t a2)
{
  sub_257743A14();
  sub_257743694();
  v4 = sub_257743A64();

  return sub_257653704(a1, a2, v4);
}

unint64_t sub_257653704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_257743994() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2576537B8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void *sub_257653818(uint64_t a1)
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
      sub_257653FCC(*(v36 + 56) + *(v33 + 72) * v19, v32);
      v24 = v34;
      sub_257653FCC(v23, v34);

      sub_257654024(v23, type metadata accessor for MLProgram.Value);
      v7 = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v7[6] + 16 * v19);
      *v25 = v21;
      v25[1] = v22;
      result = sub_257653D3C(v24, v7[7] + *(v35 + 72) * v19);
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

void sub_257653AF8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Block(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v33 = v4;
  v5 = OUTLINED_FUNCTION_153();
  v6 = type metadata accessor for MLProgram.Block(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A8, &unk_25776CFF0);
  sub_2577438E4();
  v9 = 0;
  v34 = a1;
  v10 = a1 + 64;
  OUTLINED_FUNCTION_41_0();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v30 = v16 + 64;
  v31 = v16;
  if ((v12 & v11) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v19 = v17 | (v9 << 6);
      v20 = (*(v34 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      OUTLINED_FUNCTION_25_8();
      sub_257653FCC(v23, v32);
      OUTLINED_FUNCTION_44_5();
      sub_257653FCC(v32, v33);

      OUTLINED_FUNCTION_17_10();
      sub_257654024(v32, v24);
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (*(v31 + 48) + 16 * v19);
      *v25 = v21;
      v25[1] = v22;
      OUTLINED_FUNCTION_43_7();
      sub_257653D3C(v33, v26);
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v31 + 16) = v29;
      if (!v13)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        return;
      }

      ++v18;
      if (*(v10 + 8 * v9))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257653D3C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for MLProgram.Function(uint64_t a1)
{
  result = qword_27F880688;
  if (!qword_27F880688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257653E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257653E98(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Function(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_257653F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = type metadata accessor for MLProgram.Block(0);
    OUTLINED_FUNCTION_13(v6);
    OUTLINED_FUNCTION_25_8();
    sub_257653FCC(v7, a1);

    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_257653FC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_257653FCC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_257654024(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_257654024(v0, type metadata accessor for MLProgram.ValueType.TensorParameters);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return sub_257653D3C(v4, a2);
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{

  return sub_257743894();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_projectBox();
}

uint64_t sub_257654400@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v5 = type metadata accessor for AudioFeaturePrintKind(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_25765560C(a1);
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v1, v9);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v9, v2);
  OUTLINED_FUNCTION_7_16();
  sub_257655674(v2, a1);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

uint64_t sub_257654518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  OUTLINED_FUNCTION_4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_2576556D0(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_25765560C(v9);
    type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v2 = 1;
    *(v2 + 8) = 1;
    OUTLINED_FUNCTION_0_43();
    sub_257655674(v2, a2);
    return OUTLINED_FUNCTION_10_21();
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    sub_257655674(v9, v16);
    sub_257655674(v16, v14);
    OUTLINED_FUNCTION_7_16();
    return sub_257655674(v14, a2);
  }
}

uint64_t sub_2576546DC()
{
  v2 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for AudioFeaturePrintKind(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v0, v1);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 1684957515;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = xmmword_25776D000;
  *(inited + 64) = 0;
  OUTLINED_FUNCTION_13_10();
  *(v9 + 72) = v10;
  *(v9 + 80) = v11;
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v12;
  *(inited + 104) = 0;
  v13 = sub_2576A6964(inited);
  OUTLINED_FUNCTION_9_12();
  return v13;
}

uint64_t AudioFeaturePrintKind.SoundParameters.version.getter()
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

void static AudioFeaturePrintKind.sound(version:)(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574A5B08();
  if ((v7 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *v5 = v6;
    *(v5 + 8) = v7 & 1;
    OUTLINED_FUNCTION_0_43();
    sub_257655674(v5, a1);
  }
}

uint64_t AudioFeaturePrintKind.SoundParameters.init(version:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  *(a2 + 8) = a1 < 2;
  return result;
}

BOOL static AudioFeaturePrintKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_4_20();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806B0, &qword_25776D010);
  v11 = OUTLINED_FUNCTION_13(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_257655280(a1, &v22 - v13);
  sub_257655280(a2, &v14[v15]);
  sub_257655674(v14, v9);
  sub_257655674(&v14[v15], v7);
  v16 = *v9;
  v17 = *v7;
  if (v9[8])
  {
    v16 = *v9 != 0;
  }

  if (v7[8] == 1)
  {
    if (v17)
    {
      if (v16 != 1)
      {
LABEL_6:
        sub_257655740(v7, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
        sub_257655740(v9, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
        return 0;
      }
    }

    else if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_6;
  }

  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_8_13();
  sub_257654F98(v18, v19, MEMORY[0x277D216D0]);
  v20 = sub_257743644();
  sub_257655740(v7, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
  sub_257655740(v9, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
  return (v20 & 1) != 0;
}

uint64_t AudioFeaturePrintKind.hash(into:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_20();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for AudioFeaturePrintKind(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_2_30();
  sub_257655280(v1, v10);
  OUTLINED_FUNCTION_0_43();
  sub_257655674(v10, v5);
  MEMORY[0x259C651F0](0);
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v11, v12, &unk_2577463C8);
  sub_2577435F4();
  return OUTLINED_FUNCTION_9_12();
}

uint64_t AudioFeaturePrintKind.hashValue.getter()
{
  sub_257743A14();
  AudioFeaturePrintKind.hash(into:)(v1);
  return sub_257743A64();
}

uint64_t sub_257654CFC(uint64_t a1)
{
  sub_257743A14();
  AudioFeaturePrintKind.hash(into:)(v2);
  return sub_257743A64();
}

unint64_t AudioFeaturePrintKind.SoundParameters.version.setter(unint64_t result)
{
  *v1 = result;
  *(v1 + 8) = result < 2;
  return result;
}

uint64_t (*AudioFeaturePrintKind.SoundParameters.version.modify(void *a1))()
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_257654D94;
}

void *sub_257654D94(void *result)
{
  v1 = result[1];
  v2 = *result < 2uLL;
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

BOOL static AudioFeaturePrintKind.SoundParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_8_13();
  sub_257654F98(v4, v5, MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

uint64_t AudioFeaturePrintKind.SoundParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v1, v2, &unk_2577463C8);

  return sub_2577435F4();
}

uint64_t AudioFeaturePrintKind.SoundParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  OUTLINED_FUNCTION_1_31();
  sub_257654F98(v0, v1, &unk_2577463C8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257654F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257654FE0(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  sub_257654F98(&qword_27F87A3C0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound, &unk_2577463C8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t AudioFeaturePrintKind.SoundParameters.customMirror.getter()
{
  v2 = v0;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257655280(v2, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  *(swift_allocObject() + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_13_10();
  v12[4] = v13;
  v12[5] = v14;
  v15 = *v2;
  if (*(v2 + 8))
  {
    v15 = *v2 != 0;
  }

  v12[9] = MEMORY[0x277D83B88];
  v12[6] = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t sub_257655280(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257655400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_25745AAD0);
}

uint64_t sub_257655458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745AB14);
}

uint64_t sub_2576554C0(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeaturePrintKind.SoundParameters(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2576555A0(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25765560C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257655674(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576556D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257655740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_257655740(v0, type metadata accessor for AudioFeaturePrintKind.SoundParameters);
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return sub_257655740(v0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);
}

uint64_t NeuralNetwork.Quantization.bitCount.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Quantization.bitCount.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Quantization.bitCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t NeuralNetwork.Quantization.kind.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(v3);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806C8, &qword_25776D188);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for Proto_QuantizationParams(0);
  sub_257655B60(v1 + *(v15 + 20), v2);
  v16 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) != 1)
  {
    sub_257656328();
    sub_2576563C0();
    sub_257655DFC();
    sub_257656418(v8, type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType);
    v16 = 0;
  }

  v17 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  __swift_storeEnumTagSinglePayload(v14, v16, 1, v17);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) != 1)
  {
    return sub_257656328();
  }

  type metadata accessor for Proto_LinearQuantizationParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v18;
  OUTLINED_FUNCTION_205();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v14, 1, v17);
  if (result != 1)
  {
    return sub_2574695E4(v14, &qword_27F8806C8, &qword_25776D188);
  }

  return result;
}

uint64_t sub_257655B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257655BF0(uint64_t a1)
{
  v1 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576563C0();
  return NeuralNetwork.Quantization.kind.setter(v3);
}

uint64_t NeuralNetwork.Quantization.kind.setter(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v4 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v6 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  sub_2574695E4(v1 + v6, &qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_29_8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_10_22();
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }

  sub_257656328();
  sub_257656328();
  v7 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v1 + v6, 0, 1, v7);
}

uint64_t sub_257655DFC()
{
  v0 = OUTLINED_FUNCTION_18_14();
  type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(v0);
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_205();
  sub_257656328();
  OUTLINED_FUNCTION_29_8();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Quantization.Kind.linear(scale:bias:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  type metadata accessor for Proto_LinearQuantizationParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  v3[1] = v0;
  OUTLINED_FUNCTION_29_8();
  swift_storeEnumTagMultiPayload();
}

void (*NeuralNetwork.Quantization.kind.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Quantization.kind.getter();
  return sub_257655F84;
}

void sub_257655F84(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2576563C0();
    NeuralNetwork.Quantization.kind.setter(v2);
    OUTLINED_FUNCTION_1_32();
    sub_257656418(v3, v4);
  }

  else
  {
    NeuralNetwork.Quantization.kind.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Quantization.init(bitCount:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  *a3 = 0;
  v9 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  v10 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  __swift_storeEnumTagSinglePayload(a3 + v9, 1, 1, v10);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    NeuralNetwork.Quantization.kind.setter(v3);
    OUTLINED_FUNCTION_1_32();
    return sub_257656418(a2, v12);
  }

  return result;
}

void NeuralNetwork.Quantization.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
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
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for NeuralNetwork.Quantization(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257743FF0;
  *(v10 + 32) = 0x746E756F43746962;
  *(v10 + 40) = 0xE800000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v10;
    v12 = MEMORY[0x277D83B88];
    *(v10 + 48) = *v0;
    *(v10 + 72) = v12;
    *(v10 + 80) = 1684957547;
    *(v10 + 88) = 0xE400000000000000;
    *(v10 + 120) = type metadata accessor for NeuralNetwork.Quantization.Kind(0);
    __swift_allocate_boxed_opaque_existential_0((v11 + 96));
    NeuralNetwork.Quantization.kind.getter();
    v13 = sub_257743A74();
    OUTLINED_FUNCTION_15_7(v13);
    (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v2);
    OUTLINED_FUNCTION_12_18();
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t NeuralNetwork.Quantization.LinearParameters.init(scale:bias:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  type metadata accessor for Proto_LinearQuantizationParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t sub_257656328()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576563C0()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_257656418(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t static NeuralNetwork.Quantization.Kind.lookupTable(table:)()
{
  v2 = OUTLINED_FUNCTION_18_14();
  type metadata accessor for Proto_LookUpTableQuantizationParams(v2);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v0;
  OUTLINED_FUNCTION_29_8();
  swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Quantization.LookupTableParameters.init(table:)()
{
  v2 = OUTLINED_FUNCTION_18_14();
  type metadata accessor for Proto_LookUpTableQuantizationParams(v2);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v0;
  return result;
}

void static NeuralNetwork.Quantization.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v28 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  type metadata accessor for NeuralNetwork.Quantization.Kind(0);
  OUTLINED_FUNCTION_4();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v35 = (&a9 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806D0, &unk_25776D190);
  OUTLINED_FUNCTION_13(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_2576563C0();
  sub_2576563C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_10_22();
      sub_257656328();
      if (sub_257479B60(*v33, *v20))
      {
        type metadata accessor for Proto_LookUpTableQuantizationParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_2_31();
        sub_257656FF4(v40, v41, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_44();
      sub_257656418(v20, v42);
      OUTLINED_FUNCTION_0_44();
      v48 = v33;
LABEL_15:
      sub_257656418(v48, v49);
      OUTLINED_FUNCTION_1_32();
      sub_257656418(v39, v50);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_44();
    v44 = v33;
  }

  else
  {
    OUTLINED_FUNCTION_3_30();
    sub_2576563C0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_13();
      sub_257656328();
      if (sub_257479B60(*v35, *v21) & 1) != 0 && (sub_257479B60(v35[1], v21[1]))
      {
        type metadata accessor for Proto_LinearQuantizationParams(0);
        v25 = sub_2577431B4();
        OUTLINED_FUNCTION_2_31();
        sub_257656FF4(v45, v46, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_8_14();
      sub_257656418(v21, v47);
      v48 = v35;
      v49 = v25;
      goto LABEL_15;
    }

    v43 = type metadata accessor for NeuralNetwork.Quantization.LinearParameters;
    v44 = v35;
  }

  sub_257656418(v44, v43);
  sub_2574695E4(v39, &qword_27F8806D0, &unk_25776D190);
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Quantization.LinearParameters.scale.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*NeuralNetwork.Quantization.LinearParameters.scale.modify(void *a1))(void *, char)
{
  OUTLINED_FUNCTION_21_11(a1);

  return sub_257656938;
}

uint64_t NeuralNetwork.Quantization.LinearParameters.bias.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Quantization.LinearParameters.bias.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

BOOL static NeuralNetwork.Quantization.LinearParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257479B60(*v2, *v3) & 1) != 0 && (sub_257479B60(*(v1 + 8), *(v0 + 8)))
  {
    type metadata accessor for Proto_LinearQuantizationParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_31();
    v6 = sub_257656FF4(v4, v5, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v6))
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Quantization.LinearParameters.customMirror.getter()
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
  type metadata accessor for NeuralNetwork.Quantization.LinearParameters(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257743FF0;
  *(v11 + 32) = 0x656C616373;
  *(v11 + 40) = 0xE500000000000000;
  v12 = *v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v11 + 48) = v12;
  *(v11 + 72) = v13;
  *(v11 + 80) = 1935763810;
  v14 = v2[1];
  *(v11 + 120) = v13;
  *(v11 + 88) = 0xE400000000000000;
  *(v11 + 96) = v14;
  v15 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v15);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v3);

  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Quantization.LookupTableParameters.table.modify(void *a1))(void *, char)
{
  OUTLINED_FUNCTION_21_11(a1);

  return sub_2576571EC;
}

BOOL static NeuralNetwork.Quantization.LookupTableParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (sub_257479B60(*v0, *v1))
  {
    type metadata accessor for Proto_LookUpTableQuantizationParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_31();
    v4 = sub_257656FF4(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Quantization.LookupTableParameters.customMirror.getter()
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
  type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576563C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = 0x656C626174;
  *(v11 + 40) = 0xE500000000000000;
  v12 = *v2;
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v11 + 48) = v12;
  v13 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v13);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v3);

  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257656FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257657080(uint64_t a1)
{
  result = type metadata accessor for NeuralNetwork.Quantization.LinearParameters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Quantization.LookupTableParameters(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257657174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_11(void *a1)
{
  result = *v1;
  a1[1] = v1;
  a1[2] = result;
  *a1 = result;
  return result;
}

void sub_257657310()
{
  OUTLINED_FUNCTION_31();
  v93 = *MEMORY[0x277D85DE8];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  OUTLINED_FUNCTION_63();
  v71 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_196();
  v73 = v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880750, &unk_25776D490);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_196();
  v78 = v8;
  MLProgram.functions.getter();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = MEMORY[0x277D84F90];
  v72 = v0;
  if (v11)
  {
    v92 = MEMORY[0x277D84F90];
    sub_257484060(0, v11, 0);
    v13 = v12;
    v14 = sub_25774107C();
    v16 = v15;
    v18 = v17;
    v77 = v10 + 64;
    v76 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v10 + 32))
    {
      if (((*(v77 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (*(v10 + 36) != v16)
      {
        goto LABEL_29;
      }

      v83 = v11;
      v86 = v18;
      v88 = v16;
      v19 = *(v81 + 48);
      v20 = (*(v10 + 48) + 16 * v14);
      v21 = *v20;
      v22 = v20[1];
      v23 = type metadata accessor for MLProgram.Function(0);
      OUTLINED_FUNCTION_13(v23);
      OUTLINED_FUNCTION_3_31();
      sub_25765C59C(v24, v78 + v19);
      *v79 = v21;
      v79[1] = v22;
      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v78 + v19, v79 + v25);
      v90 = 34;
      v91 = 0xE100000000000000;

      MEMORY[0x259C64E90](v21, v22);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      sub_2574AD5D8(v79, v80, &qword_27F880750, &unk_25776D490);

      v26 = *(v81 + 48);
      sub_257650478();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      OUTLINED_FUNCTION_16_8();
      sub_25765C454(v80 + v26, v33);
      sub_2574695E4(v79, &qword_27F880750, &unk_25776D490);
      v92 = v13;
      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_257484060(v34 > 1, v35 + 1, 1);
        v13 = v92;
      }

      *(v13 + 16) = v35 + 1;
      v36 = v13 + 40 * v35;
      *(v36 + 32) = 34;
      *(v36 + 40) = 0xE100000000000000;
      *(v36 + 48) = v28;
      *(v36 + 56) = v30;
      *(v36 + 64) = v32;
      v10 = v76;
      v14 = sub_25765C51C(v14, v88, v86 & 1, v76);
      v16 = v37;
      v18 = v38;
      --v11;
      if (v83 == 1)
      {

        sub_257653FC0(v14, v16, v18 & 1);
        v0 = v72;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_38_4();
  *(v40 + 32) = v41;
  *(v40 + 40) = 0xE900000000000073;
  *(inited + 48) = sub_2576AACFC(v13);
  *(inited + 56) = v42;
  *(inited + 64) = 2;
  MLProgram.attributes.getter();
  v44 = *(v43 + 16);

  if (v44)
  {
    MLProgram.attributes.getter();
    v90 = sub_2576A8BA8(v45, v46, v47, v48);
    sub_25765A304(&v90);

    v49 = v90;
    v50 = *(v90 + 16);
    if (v50)
    {
      v90 = v12;
      sub_257484060(0, v50, 0);
      v51 = v90;
      v52 = v49 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v82 = *(v71 + 72);
      do
      {
        sub_2574AD5D8(v52, v73, &qword_27F879D18, &unk_257775F30);
        sub_2574AD5D8(v73, v74, &qword_27F879D18, &unk_257775F30);
        v87 = v74[1];
        v89 = *v74;
        sub_25765C454(v74 + *(v75 + 48), type metadata accessor for MLProgram.Value);
        sub_2574AD5D8(v73, v74, &qword_27F879D18, &unk_257775F30);

        v53 = *(v75 + 48);
        sub_25771810C();
        v84 = v55;
        v85 = v54;
        v57 = v56;
        sub_2574695E4(v73, &qword_27F879D18, &unk_257775F30);
        sub_25765C454(v74 + v53, type metadata accessor for MLProgram.Value);
        v90 = v51;
        v59 = *(v51 + 16);
        v58 = *(v51 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_257484060(v58 > 1, v59 + 1, 1);
          v51 = v90;
        }

        *(v51 + 16) = v59 + 1;
        v60 = v51 + 40 * v59;
        *(v60 + 32) = v89;
        *(v60 + 40) = v87;
        *(v60 + 48) = v85;
        *(v60 + 56) = v84;
        *(v60 + 64) = v57;
        v52 += v82;
        --v50;
      }

      while (v50);
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    v61 = sub_2576AACFC(v51);
    v63 = v62;
    sub_257469AE0();
    inited = v64;
    *(v64 + 16) = 2;
    OUTLINED_FUNCTION_76_3();
    *(v65 + 72) = v66;
    *(v65 + 80) = 0xEA00000000007365;
    *(v65 + 88) = v61;
    *(v65 + 96) = v63;
    *(v65 + 104) = 2;
    v0 = v72;
  }

  v67 = *(v0 + 24);
  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    v90 = 34;
    v91 = 0xE100000000000000;
    MEMORY[0x259C64E90]();
    MEMORY[0x259C64E90](34, 0xE100000000000000);
    v16 = v90;
    v10 = v91;
    v14 = *(inited + 16);
    v11 = v14 + 1;
    if (v14 < *(inited + 24) >> 1)
    {
LABEL_25:
      *(inited + 16) = v11;
      v69 = inited + 40 * v14;
      strcpy((v69 + 32), "documentation");
      *(v69 + 46) = -4864;
      *(v69 + 48) = v16;
      *(v69 + 56) = v10;
      *(v69 + 64) = 0;
      goto LABEL_26;
    }

LABEL_30:
    sub_257469AE0();
    inited = v70;
    goto LABEL_25;
  }

LABEL_26:
  sub_2576AACFC(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257657AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_25765368C(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    OUTLINED_FUNCTION_4();
    sub_25765C59C(v10 + *(v12 + 72) * v9, a5);
    OUTLINED_FUNCTION_21();
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    OUTLINED_FUNCTION_44();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_257657BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for MLProgram.Function(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_2574695E4(a1, &qword_27F880730, &qword_25776D388);
    sub_25765BC84(a2, a3, v4);

    sub_2574695E4(v4, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    sub_25765C3FC(a1, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    sub_25765BDAC(v15, a2, a3);

    *v5 = v17;
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static ModelKind.mlProgram(main:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880718, &qword_25776D370);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880720, &qword_25776D378) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2577442B0;
  v7 = (v6 + v5);
  *v7 = 1852399981;
  v7[1] = 0xE400000000000000;
  OUTLINED_FUNCTION_3_31();
  sub_25765C59C(a1, v8 + v9);
  type metadata accessor for MLProgram.Function(0);
  v10 = sub_2577435D4();
  MLProgram.init(version:functions:)(1, v10, a2);
  type metadata accessor for ModelKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MLProgram.init(version:functions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Proto_MILSpec_Function(0);
  sub_2577435D4();
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  type metadata accessor for Proto_MILSpec_Value(0);
  a3[4] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Program(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  sub_25765B944(a2);
  v7 = v6;

  a3[1] = v7;
  return result;
}

uint64_t (*MLProgram.version.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

void MLProgram.functions.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Function(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v8 = OUTLINED_FUNCTION_30_7(v7);
  v9 = type metadata accessor for Proto_MILSpec_Function(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880728, &qword_25776D380);
  v13 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v13);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v14);
      OUTLINED_FUNCTION_18_15();
      sub_25765C59C(v16, v0);
      OUTLINED_FUNCTION_17_11();
      v17 = v0;
      v0 = v22;
      sub_25765C3FC(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v22, v18);
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

uint64_t MLProgram.functions.setter(uint64_t a1)
{
  sub_25765B944(a1);
  v3 = v2;

  *(v1 + 8) = v3;
  return result;
}

uint64_t (*MLProgram.functions.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.functions.getter();
  *a1 = v3;
  return sub_257658220;
}

uint64_t sub_257658220(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_25765B944(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 8) = v2;
  }

  else
  {
    sub_25765B944(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t MLProgram.mainFunction.getter()
{
  MLProgram.functions.getter();
  OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_28_10();
  sub_257657AC0(v1, v2, v0, v3, v4);
}

void sub_257658314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574AD5D8(a1, &v4 - v3, &qword_27F880730, &qword_25776D388);
  MLProgram.mainFunction.setter();
}

void MLProgram.mainFunction.setter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLProgram.Function(0);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v10 = OUTLINED_FUNCTION_13(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_2574AD5D8(v3, v25 - v14, &qword_27F880730, &qword_25776D388);
  MLProgram.functions.getter();
  v17 = v16;
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    sub_2574695E4(v15, &qword_27F880730, &qword_25776D388);
    v18 = OUTLINED_FUNCTION_28_10();
    sub_25765368C(v18, v19);
    if (v20)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
      sub_257743894();
      v17 = v25[0];

      OUTLINED_FUNCTION_0_45();
      sub_25765C3FC(v21, v13);
      sub_2577438B4();
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v13, v22, 1, v4);
    sub_2574695E4(v13, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v15, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v17;
    sub_25765BDAC(v8, 1852399981, 0xE400000000000000);
    v17 = v25[0];
  }

  sub_25765B944(v17);
  v24 = v23;

  sub_2574695E4(v3, &qword_27F880730, &qword_25776D388);

  *(v1 + 8) = v24;
  OUTLINED_FUNCTION_35();
}

void (*MLProgram.mainFunction.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  MLProgram.functions.getter();
  OUTLINED_FUNCTION_13_11();
  v6 = OUTLINED_FUNCTION_28_10();
  sub_257657AC0(v6, v7, v1, v8, v9);

  return sub_25765872C;
}

void sub_25765872C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2574AD5D8(*(a1 + 16), v2, &qword_27F880730, &qword_25776D388);
    MLProgram.mainFunction.setter();
    sub_2574695E4(v3, &qword_27F880730, &qword_25776D388);
  }

  else
  {
    MLProgram.mainFunction.setter();
  }

  free(v3);

  free(v2);
}

uint64_t sub_2576587F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.documentation.setter(v1, v2);
}

uint64_t MLProgram.documentation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*MLProgram.documentation.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576359C0;
}

void MLProgram.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Value(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v8 = OUTLINED_FUNCTION_30_7(v7);
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
      sub_25765C59C(v16, v0);
      v17 = OUTLINED_FUNCTION_39_2();
      v0 = v22;
      sub_25765C3FC(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_14_9();
      sub_25765C3FC(v22, v18);
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

uint64_t MLProgram.attributes.setter(uint64_t a1)
{
  v2 = sub_25765B64C(a1);

  *(v1 + 32) = v2;
  return result;
}

uint64_t (*MLProgram.attributes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.attributes.getter();
  *a1 = v3;
  return sub_257658B3C;
}

uint64_t sub_257658B3C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_25765B64C(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 32) = v2;
  }

  else
  {
    sub_25765B64C(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 32) = v2;
  }

  return result;
}

uint64_t MLProgram.weightsFileNames()()
{
  v2 = MEMORY[0x277D84FA0];
  sub_257658C08(v0, &v2);
  return v2;
}

void sub_257658C08(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  MLProgram.functions.getter();
  v8 = 0;
  v11 = v9 + 64;
  v10 = *(v9 + 64);
  v38 = v9;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  if ((v13 & v10) == 0)
  {
LABEL_5:
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        MLProgram.attributes.getter();
        v24 = v23;
        v25 = 0;
        v26 = v23 + 64;
        v27 = 1 << *(v23 + 32);
        v28 = -1;
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        v29 = v28 & *(v23 + 64);
        for (i = (v27 + 63) >> 6; v29; v25 = v31)
        {
          v31 = v25;
LABEL_18:
          v32 = (*(v24 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v29)))));
          v34 = *v32;
          v33 = v32[1];
          MLProgram.attributes.getter();
          v36 = v35;

          sub_257657AC0(v34, v33, v36, type metadata accessor for MLProgram.Value, v4);

          v37 = type metadata accessor for MLProgram.Value(0);
          if (__swift_getEnumTagSinglePayload(v4, 1, v37) == 1)
          {
            goto LABEL_25;
          }

          v29 &= v29 - 1;

          sub_25771C364();
          sub_25765C454(v4, type metadata accessor for MLProgram.Value);
        }

        while (1)
        {
          v31 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v31 >= i)
          {

            return;
          }

          v29 = *(v26 + 8 * v31);
          ++v25;
          if (v29)
          {
            goto LABEL_18;
          }
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v14 = *(v11 + 8 * v16);
      ++v8;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  while (1)
  {
    v16 = v8;
LABEL_8:
    v17 = (*(v38 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v19 = *v17;
    v18 = v17[1];
    MLProgram.functions.getter();
    v21 = v20;

    sub_257657AC0(v19, v18, v21, type metadata accessor for MLProgram.Function, v7);

    v22 = type metadata accessor for MLProgram.Function(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v22) == 1)
    {
      break;
    }

    v14 &= v14 - 1;

    sub_2576520E8(v7, v39);
    sub_25765C454(v7, type metadata accessor for MLProgram.Function);
    v8 = v16;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall MLProgram.updateWeightsFileName(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;

  sub_257658FD0(v1, countAndFlagsBits, object);
}

uint64_t sub_257658FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a2;
  v5 = type metadata accessor for MLProgram.Value(0);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v77 - v10;
  v11 = type metadata accessor for MLProgram.Function(0);
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v77 - v16;
  MLProgram.functions.getter();
  v19 = v17 + 64;
  v18 = *(v17 + 64);
  v87 = v17;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v93 = a3;
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v25 = 0;
  v90 = a1;
  v82 = v23;
  v83 = v19;
  v85 = v11;
  if (v22)
  {
    while (1)
    {
      v88 = v25;
LABEL_9:
      v27 = (*(v87 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v22)))));
      v28 = *v27;
      v29 = v27[1];
      MLProgram.functions.getter();
      v31 = v30;

      swift_isUniquelyReferenced_nonNull_native();
      v94 = v31;
      v32 = sub_25765368C(v28, v29);
      v34 = v86;
      if (__OFADD__(*(v31 + 16), (v33 & 1) == 0))
      {
        break;
      }

      v35 = v32;
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
      if (sub_257743894())
      {
        v37 = sub_25765368C(v28, v29);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_44;
        }

        v35 = v37;
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_42;
      }

      v39 = v94;
      v40 = *(v84 + 72) * v35;
      v41 = v92;
      sub_25765C3FC(*(v94 + 56) + v40, v92);
      v42 = v85;
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v85);
      v43 = v93;

      sub_257652434(v41, v91, v43);
      sub_2574AD5D8(v41, v34, &qword_27F880730, &qword_25776D388);
      if (__swift_getEnumTagSinglePayload(v34, 1, v42) == 1)
      {
        sub_2574695E4(v34, &qword_27F880730, &qword_25776D388);
        sub_2576493CC(*(v39 + 48) + 16 * v35);
        sub_2577438B4();
      }

      else
      {
        v44 = v34;
        v45 = v78;
        sub_25765C3FC(v44, v78);
        sub_25765C3FC(v45, *(v39 + 56) + v40);
      }

      v25 = v88;
      v19 = v83;
      v22 &= v22 - 1;
      sub_2574695E4(v92, &qword_27F880730, &qword_25776D388);
      sub_25765B944(v39);
      v47 = v46;

      v48 = v90;

      *(v48 + 8) = v47;
      v23 = v82;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

LABEL_40:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v26 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v26);
      ++v24;
      if (v22)
      {
        v88 = v25;
        v24 = v26;
        goto LABEL_9;
      }
    }

    MLProgram.attributes.getter();
    v50 = 0;
    v52 = v49 + 64;
    v51 = *(v49 + 64);
    v92 = v49;
    v53 = 1 << *(v49 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & v51;
    v56 = (v53 + 63) >> 6;
    v87 = v56;
    v88 = v49 + 64;
    if ((v54 & v51) == 0)
    {
LABEL_22:
      while (1)
      {
        v57 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_39;
        }

        if (v57 >= v56)
        {
          swift_bridgeObjectRelease_n();
        }

        v55 = *(v52 + 8 * v57);
        ++v50;
        if (v55)
        {
          v50 = v57;
          break;
        }
      }
    }

    while (1)
    {
      v58 = (*(v92 + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v55)))));
      v22 = *v58;
      v59 = v58[1];
      MLProgram.attributes.getter();
      v61 = v60;

      swift_isUniquelyReferenced_nonNull_native();
      v94 = v61;
      v62 = sub_25765368C(v22, v59);
      if (__OFADD__(*(v61 + 16), (v63 & 1) == 0))
      {
        break;
      }

      v64 = v62;
      v65 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
      if (sub_257743894())
      {
        v66 = sub_25765368C(v22, v59);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_44;
        }

        v64 = v66;
        v22 = v81;
      }

      else
      {
        v22 = v81;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_43;
      }

      v68 = v94;
      v69 = *(v80 + 72) * v64;
      v70 = v89;
      sub_25765C3FC(*(v94 + 56) + v69, v89);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v22);
      v71 = v93;

      sub_257717EB8(v70, v91, v71);
      v72 = v79;
      sub_2574AD5D8(v70, v79, &qword_27F880608, &unk_25776D460);
      if (__swift_getEnumTagSinglePayload(v72, 1, v22) == 1)
      {
        sub_2574695E4(v72, &qword_27F880608, &unk_25776D460);
        sub_2576493CC(*(v68 + 48) + 16 * v64);
        sub_2577438B4();
      }

      else
      {
        v73 = v77;
        sub_25765C3FC(v72, v77);
        sub_25765C3FC(v73, *(v68 + 56) + v69);
      }

      v55 &= v55 - 1;
      sub_2574695E4(v89, &qword_27F880608, &unk_25776D460);
      v74 = sub_25765B64C(v68);

      v75 = v90;

      *(v75 + 32) = v74;
      v56 = v87;
      v52 = v88;
      if (!v55)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_42:
  swift_bridgeObjectRelease_n();
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v85);
  __break(1u);
LABEL_43:
  swift_bridgeObjectRelease_n();
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v22);
  __break(1u);
LABEL_44:
  swift_bridgeObjectRelease_n();
  result = sub_2577439B4();
  __break(1u);
  return result;
}

void sub_257659818()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Value(v1);
  OUTLINED_FUNCTION_63();
  v83 = v3;
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v80 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_0();
  v82 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v92 = v9;
  v10 = type metadata accessor for MLProgram.Function(0);
  OUTLINED_FUNCTION_63();
  v87 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v81 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v88 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v18);
  MLProgram.functions.getter();
  v19 = 0;
  v20 = 0;
  v89 = v10;
  v90 = v21;
  OUTLINED_FUNCTION_41_0();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v93 = v0;
  v85 = v27;
  v86 = v22;
  if ((v24 & v23) == 0)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v96 = v20;
LABEL_7:
    v29 = (*(v90 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v25)))));
    v30 = *v29;
    v31 = v29[1];
    MLProgram.functions.getter();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
    if (sub_257743894())
    {
      v40 = sub_25765368C(v30, v31);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_42;
      }

      v38 = v40;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_40;
    }

    v42 = *(v87 + 72) * v38;
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v43 + v42, v94);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v89);
    sub_257652BA8();
    sub_2574AD5D8(v94, v88, &qword_27F880730, &qword_25776D388);
    if (__swift_getEnumTagSinglePayload(v88, 1, v89) == 1)
    {
      sub_2574695E4(v88, &qword_27F880730, &qword_25776D388);
      sub_2576493CC(*(v33 + 48) + 16 * v38);
      sub_2577438B4();
    }

    else
    {
      sub_25765C3FC(v88, v81);
      sub_25765C3FC(v81, *(v33 + 56) + v42);
    }

    v20 = v96;
    v25 &= v25 - 1;
    sub_2574695E4(v94, &qword_27F880730, &qword_25776D388);
    sub_25765B944(v33);
    v48 = v47;

    *(v93 + 8) = v48;
    v27 = v85;
    v22 = v86;
    if (!v25)
    {
LABEL_3:
      while (1)
      {
        v28 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          MLProgram.attributes.getter();
          v49 = 0;
          v95 = v50;
          OUTLINED_FUNCTION_41_0();
          v54 = v53 & v52;
          v56 = (v55 + 63) >> 6;
          v89 = v56;
          v91 = v51;
          if ((v53 & v52) == 0)
          {
            goto LABEL_19;
          }

          while (1)
          {
            v97 = v20;
LABEL_23:
            v58 = (*(v95 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v54)))));
            v59 = *v58;
            v60 = v58[1];
            MLProgram.attributes.getter();
            v62 = v61;

            swift_isUniquelyReferenced_nonNull_native();
            v98 = v62;
            sub_25765368C(v59, v60);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v63, v64))
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_39_6();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (sub_257743894())
            {
              sub_25765368C(v59, v60);
              OUTLINED_FUNCTION_22_11();
              v66 = v93;
              if (!v67)
              {
                goto LABEL_42;
              }

              v25 = v65;
            }

            else
            {
              v66 = v93;
            }

            if ((v19 & 1) == 0)
            {
              goto LABEL_41;
            }

            LOBYTE(v19) = v98;
            v68 = *(v83 + 72) * v25;
            OUTLINED_FUNCTION_14_9();
            sub_25765C3FC(v69 + v68, v92);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v70, v71, v72, v84);
            sub_257718008();
            sub_2574AD5D8(v92, v82, &qword_27F880608, &unk_25776D460);
            if (__swift_getEnumTagSinglePayload(v82, 1, v84) == 1)
            {
              sub_2574695E4(v82, &qword_27F880608, &unk_25776D460);
              sub_2576493CC(*(v98 + 48) + 16 * v25);
              sub_2577438B4();
            }

            else
            {
              v25 = v80;
              sub_25765C3FC(v82, v80);
              sub_25765C3FC(v80, *(v98 + 56) + v68);
            }

            v54 &= v54 - 1;
            sub_2574695E4(v92, &qword_27F880608, &unk_25776D460);
            v20 = v97;
            v73 = sub_25765B64C(v98);

            *(v66 + 32) = v73;
            v56 = v89;
            v51 = v91;
            if (!v54)
            {
LABEL_19:
              while (1)
              {
                v57 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  goto LABEL_37;
                }

                if (v57 >= v56)
                {

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v54 = *(v51 + 8 * v57);
                ++v49;
                if (v54)
                {
                  v97 = v20;
                  v49 = v57;
                  goto LABEL_23;
                }
              }
            }
          }
        }

        v25 = *(v22 + 8 * v28);
        ++v19;
        if (v25)
        {
          v96 = v20;
          v19 = v28;
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
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v89);
  __break(1u);
LABEL_41:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v84);
  __break(1u);
LABEL_42:
  sub_2577439B4();
  __break(1u);
}

BOOL static MLProgram.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    sub_25747793C();
    if (v4)
    {
      v5 = a1[2] == a2[2] && a1[3] == a2[3];
      if (v5 || (sub_257743994() & 1) != 0)
      {
        sub_257476DC8();
        if (v6)
        {
          type metadata accessor for Proto_MILSpec_Program(0);
          sub_2577431B4();
          sub_25765BF60(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          if (sub_257743644())
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void MLProgram.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_64();
  type metadata accessor for MLProgram(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25765C59C(v0, v13 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257744E70;
  *(v14 + 32) = 0x6E6F6973726576;
  *(v14 + 40) = 0xE700000000000000;
  *(v14 + 48) = *v0;
  OUTLINED_FUNCTION_38_4();
  v15[9] = v17;
  v15[10] = v16;
  v15[11] = 0xE900000000000073;
  MLProgram.functions.getter();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880740, &unk_25776D3A0);
  *(v14 + 96) = v19;
  *(v14 + 120) = v20;
  strcpy((v14 + 128), "documentation");
  v21 = v0[2];
  v22 = v0[3];
  *(v14 + 142) = -4864;
  *(v14 + 144) = v21;
  *(v14 + 152) = v22;
  OUTLINED_FUNCTION_76_3();
  *(v14 + 168) = v24;
  *(v14 + 176) = v23;
  *(v14 + 184) = 0xEA00000000007365;
  MLProgram.attributes.getter();
  v26 = v25;
  *(v14 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v14 + 192) = v26;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.debugDescription.getter()
{
  sub_257657310();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

uint64_t sub_25765A304(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC274();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_25765A3B8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_25765A3B8(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25765A76C(v8, v9, a1, v4);
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
    return sub_25765A500(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25765A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
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
        sub_2574AD5D8(v22, v16, &qword_27F879D18, &unk_257775F30);
        sub_2574AD5D8(v19, v12, &qword_27F879D18, &unk_257775F30);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_257743994();
        sub_2574695E4(v12, &qword_27F879D18, &unk_257775F30);
        result = sub_2574695E4(v16, &qword_27F879D18, &unk_257775F30);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = v35;
          sub_25765C4AC(v22, v35);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_25765C4AC(v25, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v12, &qword_27F879D18, &unk_257775F30);
      result = sub_2574695E4(v16, &qword_27F879D18, &unk_257775F30);
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

void sub_25765A76C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
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
        sub_25765B10C(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v25);
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
  v25 = &unk_257775F30;
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
      sub_2574AD5D8(v28 + v29 * v27, v117, &qword_27F879D18, &unk_257775F30);
      v127 = v29;
      v31 = v118;
      sub_2574AD5D8(v28 + v29 * v26, v118, &qword_27F879D18, &unk_257775F30);
      if (*v30 == *v31 && v30[1] == v31[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v24;
      v25 = &unk_257775F30;
      sub_2574695E4(v118, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v117, &qword_27F879D18, &unk_257775F30);
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
        sub_2574AD5D8(v35, v129, &qword_27F879D18, &unk_257775F30);
        v43 = v130;
        sub_2574AD5D8(v38, v130, &qword_27F879D18, &unk_257775F30);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v27 = v131;
        sub_2574695E4(v130, &qword_27F879D18, &unk_257775F30);
        v25 = &unk_257775F30;
        sub_2574695E4(v129, &qword_27F879D18, &unk_257775F30);
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
            sub_25765C4AC(v48 + v47, v122);
            v49 = v47 < v40 || v25 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_25765C4AC(v122, v48 + v40);
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
        sub_25765B10C(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v101, v127);
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
    v25 = &unk_257775F30;
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
    sub_2574AD5D8(v57, v14, &qword_27F879D18, &unk_257775F30);
    v58 = v135;
    sub_2574AD5D8(v55, v135, &qword_27F879D18, &unk_257775F30);
    if (*v14 == *v58 && v14[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
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
    sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_25765C4AC(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_25765C4AC(v61, v55);
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

uint64_t sub_25765B10C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
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
    sub_257483500(a1, v20 / v19, a4);
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
      sub_2574AD5D8(v28, v17, &qword_27F879D18, &unk_257775F30);
      sub_2574AD5D8(a4, v14, &qword_27F879D18, &unk_257775F30);
      if (*v17 == *v14 && v17[1] == v14[1])
      {
        sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
      }

      else
      {
        v32 = sub_257743994();
        sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
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
  sub_257483500(v22, v23 / v19, a4);
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
    sub_2574AD5D8(v39 + v61, v63, &qword_27F879D18, &unk_257775F30);
    v48 = v42;
    v49 = v64;
    sub_2574AD5D8(v48, v64, &qword_27F879D18, &unk_257775F30);
    if (*v47 == *v49 && v47[1] == v49[1])
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_257743994();
    }

    a3 = v43 + v45;
    sub_2574695E4(v64, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v63, &qword_27F879D18, &unk_257775F30);
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
  sub_2576FB690(&v68, &v67, &v66);
  return 1;
}

void *sub_25765B64C(uint64_t a1)
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
      sub_25765C59C(*(v36 + 56) + *(v33 + 72) * v19, v32);
      v24 = v34;
      sub_25765C59C(v23, v34);

      sub_25765C454(v23, type metadata accessor for MLProgram.Value);
      v7 = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v7[6] + 16 * v19);
      *v25 = v21;
      v25[1] = v22;
      result = sub_25765C3FC(v24, v7[7] + *(v35 + 72) * v19);
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

void sub_25765B944(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Function(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_30_7(v4);
  v6 = type metadata accessor for MLProgram.Function(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880758, &qword_25776D4A8);
  sub_2577438E4();
  v9 = 0;
  v34 = a1;
  v10 = a1 + 64;
  OUTLINED_FUNCTION_41_0();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v30 = v16 + 64;
  v31 = v16;
  if ((v12 & v11) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v19 = v17 | (v9 << 6);
      v20 = (*(v34 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      OUTLINED_FUNCTION_3_31();
      sub_25765C59C(v23, v32);
      OUTLINED_FUNCTION_18_15();
      sub_25765C59C(v32, v33);

      OUTLINED_FUNCTION_16_8();
      sub_25765C454(v32, v24);
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (*(v31 + 48) + 16 * v19);
      *v25 = v21;
      v25[1] = v22;
      OUTLINED_FUNCTION_17_11();
      sub_25765C3FC(v33, v26);
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v31 + 16) = v29;
      if (!v13)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        return;
      }

      ++v18;
      if (*(v10 + 8 * v9))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25765BB84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  OUTLINED_FUNCTION_13(v11);
  result = sub_25765C3FC(a4, v10 + *(v12 + 72) * a1);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_25765BC2C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_25765BC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25765368C(a1, a2);
  if (v5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
    sub_257743894();

    v6 = type metadata accessor for MLProgram.Function(0);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v7, a3);
    sub_2577438B4();
    *v3 = v13;
    OUTLINED_FUNCTION_21();
    v11 = v6;
  }

  else
  {
    type metadata accessor for MLProgram.Function(0);
    OUTLINED_FUNCTION_44();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_25765BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v12 = type metadata accessor for MLProgram.Function(0);
    OUTLINED_FUNCTION_13(v12);
    v13 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v13, v14);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, *v3, type metadata accessor for MLProgram.Function);
    OUTLINED_FUNCTION_434();
  }
}

uint64_t type metadata accessor for MLProgram(uint64_t a1)
{
  result = qword_281537430;
  if (!qword_281537430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25765BF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25765BFD0(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Program(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25765C03C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_25765368C(a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880748, &unk_25776D470);
  OUTLINED_FUNCTION_19_12();
  if ((sub_257743894() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_25765368C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_2577439B4();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  if (v12)
  {
    OUTLINED_FUNCTION_434();

    return sub_25765C160(v15, v16);
  }

  else
  {
    sub_25765BC2C(v11, a2, a3, a1, *v3);
    OUTLINED_FUNCTION_434();
  }
}

void sub_25765C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v12 = type metadata accessor for MLProgram.Argument(0);
    OUTLINED_FUNCTION_13(v12);
    v13 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v13, v14);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, *v3, type metadata accessor for MLProgram.Argument);
    OUTLINED_FUNCTION_434();
  }
}

void sub_25765C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v12 = type metadata accessor for MLProgram.Block(0);
    OUTLINED_FUNCTION_13(v12);
    v13 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v13, v14);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, *v3, type metadata accessor for MLProgram.Block);
    OUTLINED_FUNCTION_434();
  }
}

uint64_t sub_25765C3FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_25765C454(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25765C4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25765C51C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_257743804();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25765C59C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_25765C5F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25765368C(a2, a3);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{

  return sub_25765BB84(v9, v8, v7, v6, a5, a6);
}

unint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_25765368C(v1, v0);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25765C7DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25765C81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25765C888(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25765C8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25765C928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{

  MEMORY[0x259C64E90](47, 0xE100000000000000);
  result = MEMORY[0x259C64E90](a1, a2);
  *a7 = a3;
  a7[1] = a4;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  a7[7] = a6;
  return result;
}

uint64_t sub_25765C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v23 = a3;
  v24 = a5;
  v12 = sub_257743164();
  OUTLINED_FUNCTION_63();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257743154();
  v18 = sub_257743144();
  v20 = v19;
  (*(v14 + 8))(v17, v12);

  sub_25765C928(a1, a2, v23, a4, v24, a6, v26);
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v7 + 32);
  sub_25765C03C(v26, v18, v20);

  *(v7 + 32) = v25;
  return result;
}

uint64_t sub_25765CB20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000257780AE0 == a2;
  if (v3 || (sub_257743994() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000257780B00 == a2;
    if (v6 || (sub_257743994() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F666E496D657469 && a2 == 0xEF73656972746E45)
    {

      return 2;
    }

    else
    {
      v8 = sub_257743994();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25765CC4C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6F666E496D657469;
}

uint64_t sub_25765CCBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880788, &qword_25776D5E8);
  OUTLINED_FUNCTION_63();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_25765DA14();
  OUTLINED_FUNCTION_6_25(&_s8ManifestV10CodingKeysON, v12, v11);
  v17 = 0;
  OUTLINED_FUNCTION_3_32();
  sub_257743944();
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v15 = *(v3 + 32);
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880770, &qword_25776D5E0);
    sub_25765DABC(&qword_27F880790, sub_25765DB40, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_257743954();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_25765CE84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880760, &qword_25776D5D8);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DA14();
  sub_257743AB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_257743924();
  v8 = v7;
  v15 = v6;
  v13 = sub_257743924();
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880770, &qword_25776D5E0);
  sub_25765DABC(&qword_27F880778, sub_25765DA68, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_257743934();
  v10 = OUTLINED_FUNCTION_2_32();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_25765D100(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_257743994() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_257743994() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
      if (v7 || (sub_257743994() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_257743994();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25765D268(unsigned __int8 a1)
{
  sub_257743A14();
  MEMORY[0x259C651F0](a1);
  return sub_257743A64();
}

uint64_t sub_25765D2B0(char a1)
{
  result = 1752457584;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x726F68747561;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25765D324(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807B0, &qword_25776D5F8);
  OUTLINED_FUNCTION_63();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_25765DB94();
  OUTLINED_FUNCTION_6_25(&_s8ManifestV11PackageItemV10CodingKeysON, v10, v9);
  v12[15] = 0;
  OUTLINED_FUNCTION_3_32();
  sub_257743944();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v12[13] = 2;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v12[12] = 3;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_25765D4A8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807A0, &qword_25776D5F0);
  OUTLINED_FUNCTION_63();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DB94();
  sub_257743AB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_4_21();
  v11 = sub_257743924();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_4_21();
  v13 = sub_257743924();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_4_21();
  v25 = sub_257743924();
  v27 = v15;
  v35 = 3;
  v16 = sub_257743924();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_25765DBE8(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_25765DC20(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_25765D75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25765CB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25765D7A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25765CC44();
  *a1 = result;
  return result;
}

uint64_t sub_25765D7CC(uint64_t a1)
{
  v2 = sub_25765DA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25765D808(uint64_t a1)
{
  v2 = sub_25765DA14();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25765D844@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25765CE84(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25765D8A4(uint64_t a1)
{
  v2 = *v1;
  sub_257743A14();
  MEMORY[0x259C651F0](v2);
  return sub_257743A64();
}

uint64_t sub_25765D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25765D100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25765D918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25765D260();
  *a1 = result;
  return result;
}

uint64_t sub_25765D940(uint64_t a1)
{
  v2 = sub_25765DB94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25765D97C(uint64_t a1)
{
  v2 = sub_25765DB94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25765D9B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25765D4A8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_25765DA14()
{
  result = qword_27F880768;
  if (!qword_27F880768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880768);
  }

  return result;
}

unint64_t sub_25765DA68()
{
  result = qword_27F880780;
  if (!qword_27F880780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880780);
  }

  return result;
}

uint64_t sub_25765DABC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880770, &qword_25776D5E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25765DB40()
{
  result = qword_27F880798;
  if (!qword_27F880798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880798);
  }

  return result;
}

unint64_t sub_25765DB94()
{
  result = qword_27F8807A8;
  if (!qword_27F8807A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807A8);
  }

  return result;
}

uint64_t _s8ManifestV11PackageItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ManifestV11PackageItemV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s8ManifestV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25765DE94()
{
  result = qword_27F8807B8;
  if (!qword_27F8807B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807B8);
  }

  return result;
}

unint64_t sub_25765DEEC()
{
  result = qword_27F8807C0;
  if (!qword_27F8807C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807C0);
  }

  return result;
}

unint64_t sub_25765DF44()
{
  result = qword_27F8807C8;
  if (!qword_27F8807C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807C8);
  }

  return result;
}

unint64_t sub_25765DF9C()
{
  result = qword_27F8807D0;
  if (!qword_27F8807D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807D0);
  }

  return result;
}

unint64_t sub_25765DFF4()
{
  result = qword_27F8807D8;
  if (!qword_27F8807D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807D8);
  }

  return result;
}

unint64_t sub_25765E04C()
{
  result = qword_27F8807E0;
  if (!qword_27F8807E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_257743AC4();
}

uint64_t ODIELibrary.fileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25765E140(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ODIELibrary.fileName.setter(v1, v2);
}

uint64_t ODIELibrary.fileName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*ODIELibrary.fileName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t ODIELibrary.init(fileName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  type metadata accessor for Proto_Odie_Library(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

BOOL static ODIELibrary.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v2 || (sub_257743994() & 1) != 0)
  {
    type metadata accessor for Proto_Odie_Library(0);
    sub_2577431B4();
    sub_25765E368(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25765E368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ODIELibrary(uint64_t a1)
{
  result = qword_27F8807E8;
  if (!qword_27F8807E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25765E424(uint64_t a1)
{
  result = type metadata accessor for Proto_Odie_Library(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25765E490()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v52 = v5 - v4;
  v6 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v51 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_28_11(inited, 0x6150u);
  NearestNeighborsConfiguration.parameters.getter();
  sub_2576E7AF0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_19_13();
  v29 = v21;
  v30 = v1;
  sub_25765EF7C(v29, v31);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  *(inited + 64) = v28;
  strcpy((inited + 72), "Neighbor Count");
  *(inited + 87) = -18;
  v53 = NearestNeighborsConfiguration.neighborCount.getter();
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v32;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  sub_2574FD880(v1, v16, &qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_155(v16, 1, v6);
  if (v33)
  {
    v35 = 0;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_20_9();
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    sub_25765F388();
    sub_25765F578();
    v34 = v53;
    v35 = v54;
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v12, v36);
  }

  v55 = v34;
  v56 = v35;
  v37 = sub_2576603F8();

  *(inited + 128) = v37;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  OUTLINED_FUNCTION_23_7();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = v38;
  v39 = v30 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  v40 = *(v39 + 16);
  if (v40 == 255)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
LABEL_9:
    sub_2574670D4(*v39, *(v39 + 8), v40);

    sub_257466FC8(v43, v44, 0);
    v53 = 34;
    v54 = 0xE100000000000000;
    MEMORY[0x259C64E90](v43, v44);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    v41 = v53;
    v42 = v54;
    goto LABEL_10;
  }

  if ((v40 & 1) == 0)
  {
    v43 = *v39;
    v44 = *(v39 + 8);
    goto LABEL_9;
  }

  v53 = *v39;
  v41 = sub_257743674();
LABEL_10:
  *(inited + 168) = v41;
  *(inited + 176) = v42;
  *(inited + 184) = 0;
  OUTLINED_FUNCTION_23_7();
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = v45;
  v46 = v52;
  NearestNeighborsConfiguration.weightingScheme.getter();
  v47 = sub_2576605BC();
  v49 = v48;
  OUTLINED_FUNCTION_1_34();
  sub_25765EF7C(v46, v50);
  *(inited + 208) = v47;
  *(inited + 216) = v49;
  *(inited + 224) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NearestNeighborsConfiguration.parameters.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75_0();
  v5 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v1 + *(v10 + 32), v2, &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(v2, 1, v5);
  if (v11)
  {
    *v9 = 0;
    *(v9 + 8) = MEMORY[0x277D84F90];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_155(v2, 1, v5);
    if (!v11)
    {
      sub_2574695E4(v2, &qword_27F87BD28, &unk_25776D890);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    sub_25765EFD4();
  }

  OUTLINED_FUNCTION_2_33();
  return sub_25765EFD4();
}

uint64_t NearestNeighborsConfiguration.parameters.setter(uint64_t a1)
{
  v2 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  sub_25765EFD4();
  v4 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574695E4(v1 + *(v4 + 32), &qword_27F87BD28, &unk_25776D890);
  sub_25765EFD4();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
}

void NearestNeighborsConfiguration.parameters.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v3[6] = __swift_coroFrameAllocStub(v13);
  v14 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 32);
  *(v3 + 14) = v14;
  sub_2574FD880(v0 + v14, v6, &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v15)
  {
    *v10 = 0;
    v10[1] = MEMORY[0x277D84F90];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v15)
    {
      sub_2574695E4(v6, &qword_27F87BD28, &unk_25776D890);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    sub_25765EFD4();
  }

  OUTLINED_FUNCTION_2_33();
  OUTLINED_FUNCTION_263();
  sub_25765EFD4();
  OUTLINED_FUNCTION_35();
}

void sub_25765ECD4()
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
    sub_25765F388();
    OUTLINED_FUNCTION_18_16();
    sub_25765EFD4();
    sub_2574695E4(v8 + v1, &qword_27F87BD28, &unk_25776D890);
    sub_25765EFD4();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_19_13();
    sub_25765EF7C(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_18_16();
    sub_25765EFD4();
    sub_2574695E4(v8 + v1, &qword_27F87BD28, &unk_25776D890);
    sub_25765EFD4();
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

uint64_t NearestNeighborsConfiguration.neighborCount.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_2();
  type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  v6 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v1 + *(v6 + 36), v0, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_26_0(v0);
  if (v7)
  {
    *v2 = 0;
    type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v7)
    {
      sub_2574695E4(v0, &qword_27F87BD30, &unk_2577504D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_14();
    sub_25765EFD4();
  }

  v12 = *v2;
  sub_25765EF7C(v2, type metadata accessor for Proto_Int64Parameter);
  return v12;
}

uint64_t sub_25765EF7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25765EFD4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t NearestNeighborsConfiguration.neighborCount.setter(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_0();
  v7 = type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v9 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 36);
  sub_2574FD880(v1 + v9, v3, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_26_0(v3);
  if (v10)
  {
    type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v10)
    {
      sub_2574695E4(v3, &qword_27F87BD30, &unk_2577504D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_14();
    sub_25765EFD4();
  }

  *v2 = a1;
  sub_2574695E4(v1 + v9, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_9_14();
  sub_25765EFD4();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
}

uint64_t (*NearestNeighborsConfiguration.neighborCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NearestNeighborsConfiguration.neighborCount.getter();
  return sub_25765F1EC;
}

uint64_t NearestNeighborsConfiguration.classLabels.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_2574FD880(v2, &v18 - v11, &qword_27F87BD18, &unk_25776D8A0);
  result = OUTLINED_FUNCTION_155(v12, 1, v4);
  if (v14)
  {
    v16 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    sub_25765F388();
    sub_25765F578();
    v15 = v18;
    v16 = v19;
    OUTLINED_FUNCTION_0_46();
    result = sub_25765EF7C(v8, v17);
  }

  *v0 = v15;
  *(v0 + 8) = v16;
  return result;
}

uint64_t sub_25765F388()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_25765F3DC@<X0>(uint64_t a1@<X8>)
{
  result = NearestNeighborsConfiguration.classLabels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_25765F420(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NearestNeighborsConfiguration.classLabels.setter(&v3);
}

uint64_t NearestNeighborsConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v1 = v5;
    v6 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v7);
    v6 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_205();
  return sub_2574FD834(v11, v12, v13, v14);
}

void sub_25765F578()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_22();
  sub_25765F388();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25765EFD4();
    v18 = *v13;
    v19 = *(*v13 + 16);
    if (v19)
    {
      v27 = MEMORY[0x277D84F90];
      sub_257483724(0, v19, 0);
      v17 = v27;
      v20 = (v18 + 32);
      v21 = *(v27 + 16);
      do
      {
        v23 = *v20++;
        v22 = v23;
        v24 = *(v27 + 24);
        if (v21 >= v24 >> 1)
        {
          sub_257483724(v24 > 1, v21 + 1, 1);
        }

        *(v27 + 16) = v21 + 1;
        *(v27 + 8 * v21++ + 32) = v22;
        --v19;
      }

      while (v19);
      OUTLINED_FUNCTION_0_46();
      sub_25765EF7C(v1, v25);
      OUTLINED_FUNCTION_22_12();
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_25765EF7C(v1, v26);
      OUTLINED_FUNCTION_22_12();
      v17 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v1, v16);
    sub_25765EFD4();
    v17 = *v8;

    sub_25765EF7C(v8, type metadata accessor for Proto_StringVector);
  }

  *v3 = v17;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*NearestNeighborsConfiguration.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v4[4] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v4[6] = __swift_coroFrameAllocStub(v11);
  v4[7] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v4[8] = v12;
  sub_2574FD880(v2, v12, &qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_155(v12, 1, v5);
  if (v13)
  {
    v15 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_20_9();
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_263();
    sub_25765F388();
    sub_25765F578();
    v14 = v18;
    v15 = v19;
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v8, v16);
  }

  *v4 = v14;
  *(v4 + 8) = v15;
  return sub_25765F974;
}

void sub_25765F974(void ***a1, char a2)
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
    sub_2574FD834(v8, v4, &qword_27F87BD18, &unk_25776D8A0);
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
    sub_2574FD834(v7, v4, &qword_27F87BD18, &unk_25776D8A0);
  }

  free(v6);
  free(v7);
  free(v8);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t NearestNeighborsConfiguration.defaultClassLabel.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = v1 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(v2) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    v8 = 0;
    v6 = 0xE000000000000000;
LABEL_6:
    sub_2574670D4(result, *(v3 + 8), v5);

    sub_257466FC8(v8, v6, 0);
    v7 = 0;
    result = v8;
    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
    v8 = *v3;
    v6 = *(v3 + 8);
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 1;
LABEL_7:
  *v0 = result;
  *(v0 + 8) = v6;
  *(v0 + 16) = v7;
  return result;
}

double sub_25765FB98@<D0>(uint64_t a1@<X8>)
{
  NearestNeighborsConfiguration.defaultClassLabel.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_25765FBDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_25745B0A8(v4[0], v1, v2);
  return NearestNeighborsConfiguration.defaultClassLabel.setter(v4);
}

uint64_t NearestNeighborsConfiguration.defaultClassLabel.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v1 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  result = sub_25746706C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v4;
  *(v5 + 16) = v3;
  return result;
}

void (*NearestNeighborsConfiguration.defaultClassLabel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  *(v3 + 5) = v4;
  v5 = v1 + v4;
  v6 = *v5;
  v3[4] = *v5;
  v7 = *(v5 + 8);
  v3[5] = v7;
  v8 = *(v5 + 16);
  *(v3 + 17) = v8;
  if (v8 == 255)
  {
    v11 = 0;
    v9 = 0xE000000000000000;
LABEL_6:
    sub_2574670D4(v6, v7, v8);

    v12 = OUTLINED_FUNCTION_176();
    sub_257466FC8(v12, v13, 0);
    v10 = 0;
    v6 = v11;
    goto LABEL_7;
  }

  if ((v8 & 1) == 0)
  {
    v11 = v6;
    v9 = v7;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
LABEL_7:
  *v3 = v6;
  v3[1] = v9;
  *(v3 + 16) = v10;
  return sub_25765FD60;
}

void sub_25765FD60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 16);
  if (a2)
  {
    if ((*a1)[2])
    {
      v5 = 0;
    }

    else
    {
      v5 = v2[1];
    }

    v8 = v2[3] + *(v2 + 5);
    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v4;
    sub_257466FC8(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    v6 = v2[3] + *(v2 + 5);
    if (*(*a1 + 16))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2[1];
    }

    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v6 = v3;
    *(v6 + 8) = v7;
    *(v6 + 16) = v4;
  }

  free(v2);
}

uint64_t NearestNeighborsConfiguration.weightingScheme.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v1 + *(v7 + 24), v5, &qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_26_0(v5);
  if (v8)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_0(v5);
    if (!v8)
    {
      sub_2574695E4(v5, &qword_27F87BD20, &unk_2577504C0);
    }
  }

  else
  {
    sub_25765EFD4();
  }

  swift_getEnumCaseMultiPayload();
  sub_25765EFD4();
  type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25765FFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_0();
  sub_25765F388();
  return a7(v7);
}

uint64_t NearestNeighborsConfiguration.weightingScheme.setter(uint64_t a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_263();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_0();
  sub_257660148();
  OUTLINED_FUNCTION_1_34();
  sub_25765EF7C(a1, v9);
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  return sub_2574FD834(v2, v3 + *(v14 + 24), &qword_27F87BD20, &unk_2577504C0);
}

uint64_t sub_257660148()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_33();
  sub_25765F388();
  OUTLINED_FUNCTION_176();
  swift_getEnumCaseMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_34();
  return sub_25765EF7C(v0, v3);
}

void (*NearestNeighborsConfiguration.weightingScheme.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v3);
  a1[1] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  a1[3] = __swift_coroFrameAllocStub(v7);
  NearestNeighborsConfiguration.weightingScheme.getter();
  return sub_2576602AC;
}

void sub_2576602AC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_176();
    sub_25765F388();
    sub_257660148();
    sub_25765EF7C(v2, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
    sub_2574FD834(v4, v5 + *(v10 + 24), &qword_27F87BD20, &unk_2577504C0);
    sub_25765EF7C(v3, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
  }

  else
  {
    sub_257660148();
    OUTLINED_FUNCTION_1_34();
    sub_25765EF7C(v3, v11);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
    sub_2574FD834(v4, v5 + *(v16 + 24), &qword_27F87BD20, &unk_2577504C0);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_2576603F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_257484040(0, v2, 0);
      v3 = v19;
      v4 = (v1 + 40);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;

        MEMORY[0x259C64E90](v5, v6);
        MEMORY[0x259C64E90](34, 0xE100000000000000);

        v8 = *(v19 + 16);
        v7 = *(v19 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_257484040((v7 > 1), v8 + 1, 1);
        }

        *(v19 + 16) = v8 + 1;
        v9 = v19 + 24 * v8;
        *(v9 + 32) = 34;
        *(v9 + 40) = 0xE100000000000000;
        *(v9 + 48) = 0;
        v4 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v18;
    v10 = v1 + 32;
    do
    {
      v10 += 8;
      v11 = sub_257743674();
      v13 = v12;
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257484040((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = v18 + 24 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      *(v16 + 48) = 0;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_2576605BC()
{
  type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_33();
  sub_25765F388();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_23_7();
  sub_25765EF7C(v3, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
  return OUTLINED_FUNCTION_10_23();
}

uint64_t NearestNeighborsConfiguration.init()()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = -1;
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void NearestNeighborsConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_35_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_0();
  type metadata accessor for NearestNeighborsConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  sub_25765F388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_28_11(v8, 0x6170u);
  *(v8 + 72) = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  __swift_allocate_boxed_opaque_existential_0((v8 + 48));
  NearestNeighborsConfiguration.parameters.getter();
  strcpy((v8 + 80), "neighborCount");
  *(v8 + 94) = -4864;
  v9 = NearestNeighborsConfiguration.neighborCount.getter();
  v10 = MEMORY[0x277D83B88];
  *(v8 + 96) = v9;
  *(v8 + 120) = v10;
  *(v8 + 128) = 0x62614C7373616C63;
  *(v8 + 136) = 0xEB00000000736C65;
  *(v8 + 168) = &type metadata for NearestNeighborsConfiguration.ClassLabels;
  NearestNeighborsConfiguration.classLabels.getter();
  OUTLINED_FUNCTION_23_7();
  *(v8 + 176) = 0xD000000000000011;
  *(v8 + 184) = v11;
  *(v8 + 216) = &type metadata for NearestNeighborsConfiguration.DefaultClassLabel;
  NearestNeighborsConfiguration.defaultClassLabel.getter();
  *(v8 + 224) = 0x6E69746867696577;
  *(v8 + 232) = 0xEF656D6568635367;
  *(v8 + 264) = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  __swift_allocate_boxed_opaque_existential_0((v8 + 240));
  NearestNeighborsConfiguration.weightingScheme.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v0);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static NearestNeighborsConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

BOOL static NearestNeighborsConfiguration.DefaultClassLabel.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v7 = OUTLINED_FUNCTION_205();
      sub_257466FC8(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_263();
      sub_257466FC8(v9, v10, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {

LABEL_6:
    v12 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v12, v13, v6);
    v14 = OUTLINED_FUNCTION_205();
    sub_257466FC8(v14, v15, v4);
    v16 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v16, v17, v6);
    return 0;
  }

  v18 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_25745B0A8(v18, v3, 0);
    v31 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v37, v38, v39);
    return 1;
  }

  else
  {
    v20 = sub_257743994();
    v21 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v21, v22, 0);
    v23 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v29, v30, 0);
    return v20 & 1;
  }
}

void static NearestNeighborsConfiguration.WeightingScheme.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807F8, &unk_25776D8B0);
  OUTLINED_FUNCTION_13(v38);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_40_2();
  sub_25765F388();
  sub_25765F388();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_33();
    sub_25765F388();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25765EFD4();
      sub_2577431B4();
      OUTLINED_FUNCTION_8_15();
      sub_257661238(v40, v41, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_36_4();
      sub_257743644();
      sub_25765EF7C(v28, type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration);
      v42 = v34;
      v43 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration;
LABEL_9:
      sub_25765EF7C(v42, v43);
      OUTLINED_FUNCTION_1_34();
      sub_25765EF7C(v20, v48);
      goto LABEL_10;
    }

    v44 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration;
    v45 = v34;
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    sub_25765F388();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25765EFD4();
      sub_2577431B4();
      OUTLINED_FUNCTION_8_15();
      sub_257661238(v46, v47, MEMORY[0x277D216D0]);
      sub_257743644();
      sub_25765EF7C(v21, type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration);
      v42 = v37;
      v43 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration;
      goto LABEL_9;
    }

    v44 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration;
    v45 = v37;
  }

  sub_25765EF7C(v45, v44);
  sub_2574695E4(v20, &qword_27F8807F8, &unk_25776D8B0);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257660F2C()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_8_15();
  sub_257661238(v0, v1, MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

void sub_257660FF8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_16_1();
  sub_257743A84();
  OUTLINED_FUNCTION_35_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_0();
  v2(0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  sub_25765F388();
  sub_257743A74();
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257661238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576612F0(uint64_t a1)
{
  result = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2576613E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return sub_25765EF7C(v0, type metadata accessor for Proto_Int64Vector);
}

uint64_t OUTLINED_FUNCTION_28_11@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x6574656D61720000;
  *(result + 40) = 0xEA00000000007372;
  return result;
}

uint64_t MLProgram.Value.BlobFileValue.fileName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_257661640()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Value.BlobFileValue(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_51_4();
  v12 = type metadata accessor for MLProgram.Value.ImmediateValue(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.Value.Representation(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  v16 = OUTLINED_FUNCTION_264();
  sub_257664F1C(v16, v17);
  OUTLINED_FUNCTION_280();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_19_14();
    sub_257664D88(v2, v8);
    v18 = OUTLINED_FUNCTION_156();
    sub_257664D88(v18, v0);
  }

  else
  {
    OUTLINED_FUNCTION_18_17();
    sub_257664D88(v2, v1);
    v19 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(0);
    OUTLINED_FUNCTION_192_0(v23);
    sub_257663A58();
    OUTLINED_FUNCTION_3_34();
    sub_257664D34();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    OUTLINED_FUNCTION_292();
    sub_25751BB28();
  }

  type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_18_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

void sub_2576619AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_280();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_13(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = OUTLINED_FUNCTION_51_4();
  v31 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
  {
    sub_2574695E4(v29, &qword_27F87B190, &qword_25774C170);
    OUTLINED_FUNCTION_26_8();
    sub_257664D34();
    *v23 = MEMORY[0x277D84F90];
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    type metadata accessor for MLProgram.Value.ImmediateValue(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_166();
    sub_257664D88(v36, v35);
    v37 = OUTLINED_FUNCTION_277();
    sub_257664F1C(v37, v38);
    sub_257663CD4();
    OUTLINED_FUNCTION_26_8();
    sub_257664D34();
    OUTLINED_FUNCTION_8_16();
    sub_257664D34();
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static MLProgram.Value.Representation.blobFile(fileName:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
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
    type metadata accessor for MLProgram.Value.Representation(0);
    OUTLINED_FUNCTION_66_3();
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t MLProgram.Value.BlobFileValue.init(fileName:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
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

void sub_257661C48()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Value.Representation(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for MLProgram.Value.BlobFileValue(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  sub_257664F1C(v0, v1);
  OUTLINED_FUNCTION_360();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257664D34();
    sub_257664D88(v1, v2);

    *v2 = v6;
    v2[1] = v4;
    sub_257664D88(v2, v0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_257664D34();
  }

  OUTLINED_FUNCTION_434();
}

void sub_257661DA4()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  OUTLINED_FUNCTION_376();
  v5 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.Value.Representation(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v11 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  v13 = OUTLINED_FUNCTION_369();
  sub_257664F1C(v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_15();
    sub_257664D34();
    sub_257664D88(v2, v1);
    (*(v7 + 16))(v0, v4, v5);
    v15 = sub_257743054();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_360();
    v19(v18);
    sub_257664AF0(v15, v17);

    v20 = OUTLINED_FUNCTION_230();
    sub_257664D88(v20, v21);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    OUTLINED_FUNCTION_9_15();
    sub_257664D34();
  }

  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.Representation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_6();
  v31 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880830, &qword_25776DC08);
  OUTLINED_FUNCTION_13(v40);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_56_2();
  v43 = *(v42 + 56);
  sub_257664F1C(v28, v20);
  sub_257664F1C(v26, v20 + v43);
  OUTLINED_FUNCTION_369();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_25();
    sub_257664F1C(v20, v39);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_18_17();
      sub_257664D88(v20 + v43, v35);
      static MLProgram.Value.ImmediateValue.== infix(_:_:)(v39, v35);
      sub_257664D34();
      sub_257664D34();
      OUTLINED_FUNCTION_9_15();
      sub_257664D34();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_3_34();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_5_25();
  v44 = OUTLINED_FUNCTION_98_2();
  sub_257664F1C(v44, v45);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_13:
    sub_257664D34();
    sub_2574695E4(v20, &qword_27F880830, &qword_25776DC08);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_19_14();
  sub_257664D88(v20 + v43, v21);
  v46 = *v22 == *v21 && v22[1] == v21[1];
  if (v46 || (sub_257743994()) && v22[2] == v21[2])
  {
    type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    sub_257664E78(v47, v48);
    sub_257743644();
  }

  OUTLINED_FUNCTION_46_7();
  sub_257664D34();
  sub_257664D34();
  OUTLINED_FUNCTION_9_15();
  sub_257664D34();
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.Representation.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value.BlobFileValue(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v4 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_25();
  v10 = OUTLINED_FUNCTION_277();
  sub_257664F1C(v10, v11);
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_19_14();
    sub_257664D88(v9, v0);
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
    sub_257664E78(&qword_27F87B548, type metadata accessor for Proto_MILSpec_Value.BlobFileValue);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    OUTLINED_FUNCTION_18_17();
    v12 = OUTLINED_FUNCTION_360();
    sub_257664D88(v12, v13);
    MEMORY[0x259C651F0](0);
    MLProgram.Value.ImmediateValue.hash(into:)();
    OUTLINED_FUNCTION_3_34();
  }

  return sub_257664D34();
}

void MLProgram.Value.Representation.debugDescription.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v8 = type metadata accessor for MLProgram.Value.Dictionary(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for MLProgram.Value.List(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for MLProgram.Value.Tuple(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v16);
  type metadata accessor for MLProgram.Value.Representation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_5_25();
  sub_257664F1C(v0, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_4_23();
    v22 = OUTLINED_FUNCTION_369();
    sub_257664F1C(v22, v23);
    OUTLINED_FUNCTION_201();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_15_8();
        v35 = sub_257664D88(v5, v4);
        MLProgram.Value.List.elements.getter(v35);
        v36 = OUTLINED_FUNCTION_30();
        type metadata accessor for MLProgram.Value(v36);
        v37 = OUTLINED_FUNCTION_66_3();
        MEMORY[0x259C64F20](v37);
        OUTLINED_FUNCTION_96_3();

        v38 = OUTLINED_FUNCTION_263();
        MEMORY[0x259C64E90](v38);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_0_47();
        goto LABEL_9;
      case 2u:
        OUTLINED_FUNCTION_17_12();
        v27 = sub_257664D88(v5, v3);
        MLProgram.Value.List.elements.getter(v27);
        v28 = OUTLINED_FUNCTION_30();
        type metadata accessor for MLProgram.Value(v28);
        v29 = OUTLINED_FUNCTION_66_3();
        MEMORY[0x259C64F20](v29);
        OUTLINED_FUNCTION_96_3();

        v30 = OUTLINED_FUNCTION_263();
        MEMORY[0x259C64E90](v30);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_2_34();
        goto LABEL_9;
      case 3u:
        OUTLINED_FUNCTION_16_9();
        sub_257664D88(v5, v2);
        OUTLINED_FUNCTION_63_5();
        MLProgram.Value.Dictionary.keyValuePairs.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
        v31 = OUTLINED_FUNCTION_66_3();
        v32 = MEMORY[0x259C64F20](v31);
        v34 = v33;

        MEMORY[0x259C64E90](v32, v34);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_1_35();
LABEL_9:
        sub_257664D34();
        break;
      default:
        v24 = *(v5 + 16);
        MEMORY[0x259C64E90](0x28726F736E6554, 0xE700000000000000);
        sub_257743884();
        OUTLINED_FUNCTION_75_4();
        v25 = OUTLINED_FUNCTION_263();
        sub_257664F74(v25, v26, v24);
        break;
    }

    OUTLINED_FUNCTION_3_34();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_14();
  sub_257664D88(v20, v1);
  sub_257743834();

  MEMORY[0x259C64E90](*v1, v1[1]);
  MEMORY[0x259C64E90](0x74657366666F202CLL, 0xEA0000000000203ALL);
  if ((v1[2] & 0x8000000000000000) == 0)
  {
    v21 = sub_257743974();
    MEMORY[0x259C64E90](v21);

    OUTLINED_FUNCTION_75_4();
    OUTLINED_FUNCTION_27_11();
LABEL_11:
    sub_257664D34();
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
}

void sub_257662910()
{
  OUTLINED_FUNCTION_433();
  v1 = type metadata accessor for MLProgram.Value(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_6();
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_257484A40(0, v4, 0);
    v5 = type metadata accessor for Proto_MILSpec_Value(0);
    OUTLINED_FUNCTION_24(v5);
    v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v8 + 72);
    do
    {
      v10 = OUTLINED_FUNCTION_360();
      sub_257664F1C(v10, v11);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_257484A40(v12 > 1, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      OUTLINED_FUNCTION_193();
      v14 = OUTLINED_FUNCTION_166();
      sub_257664D88(v14, v15);
      v7 += v9;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_434();
}

void MLProgram.Value.Dictionary.keyValuePairs.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_99_2();
  v63 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(v13);
  OUTLINED_FUNCTION_63();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  OUTLINED_FUNCTION_63();
  v60 = v21;
  v61 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v62 = &v57 - v23;
  v24 = *v0;
  v25 = *(*v0 + 16);
  if (v25)
  {
    v64 = MEMORY[0x277D84F90];
    sub_257484A98(0, v25, 0);
    v26 = v64;
    OUTLINED_FUNCTION_193();
    v27 = v15;
    v29 = v24 + v28;
    v57 = *(v27 + 72);
    v58 = v2;
    v59 = v10;
    v30 = v62;
    do
    {
      sub_257664F1C(v29, v19);
      sub_257487308(v19 + *(v63 + 20));
      OUTLINED_FUNCTION_35_0(v10);
      if (v31)
      {
        *v2 = 0;
        v2[1] = 0xE000000000000000;
        type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        type metadata accessor for Proto_MILSpec_ValueType(0);
        v30 = v62;
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
        OUTLINED_FUNCTION_35_0(v10);
        if (!v31)
        {
          sub_2574695E4(v10, &qword_27F879EB8, &unk_2577447E0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_18();
        sub_257664D88(v10, v2);
      }

      OUTLINED_FUNCTION_7_18();
      v40 = OUTLINED_FUNCTION_230();
      sub_257664D88(v40, v41);
      sub_257487308(v19 + *(v63 + 24));
      OUTLINED_FUNCTION_35_0(v7);
      if (v31)
      {
        *v1 = 0;
        v1[1] = 0xE000000000000000;
        type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        OUTLINED_FUNCTION_49_4();
        type metadata accessor for Proto_MILSpec_ValueType(0);
        v30 = v62;
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
        OUTLINED_FUNCTION_35_0(v7);
        if (!v31)
        {
          sub_2574695E4(v7, &qword_27F879EB8, &unk_2577447E0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_49_4();
        OUTLINED_FUNCTION_7_18();
        sub_257664D88(v7, v1);
      }

      v50 = v7;
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v1, v30 + v51);
      v64 = v26;
      v53 = *(v26 + 16);
      v52 = *(v26 + 24);
      if (v53 >= v52 >> 1)
      {
        v56 = OUTLINED_FUNCTION_13_1(v52);
        sub_257484A98(v56, v53 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v53 + 1;
      OUTLINED_FUNCTION_193();
      sub_257667914(v30, v26 + v54 + *(v55 + 72) * v53);
      v29 += v57;
      --v25;
      v7 = v50;
      v2 = v58;
      v10 = v59;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.BlobFileValue.offset.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257662F00()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (((v2 >> 60) & 3 | v3) != 6)
  {
    return *(v1 + 16);
  }

  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v5 = __OFSUB__(HIDWORD(v1), v1);
      v6 = HIDWORD(v1) - v1;
      if (v5)
      {
        __break(1u);
        goto LABEL_13;
      }

      result = v6;
      break;
    case 2uLL:
      v9 = v1 + 16;
      v7 = *(v1 + 16);
      v8 = *(v9 + 8);
      result = v8 - v7;
      if (__OFSUB__(v8, v7))
      {
LABEL_13:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(v2);
      break;
  }

  return result;
}

uint64_t sub_257662FA0()
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((v3 >> 60) & 3 | v4)
  {
    case 1uLL:
      v20 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v20)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v21 = *v1++;
          LODWORD(v46) = v21;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v22 > 1));
            v6 = v44;
          }

          OUTLINED_FUNCTION_30_8();
          --v20;
        }

        while (v20);
      }

      return v6;
    case 2uLL:
      v12 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v12)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          LOBYTE(v46) = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v13 > 1));
            v6 = v44;
          }

          OUTLINED_FUNCTION_30_8();
          v1 = (v1 + 1);
          --v12;
        }

        while (v12);
      }

      return v6;
    case 3uLL:
      v14 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v14)
      {
        v46 = MEMORY[0x277D84F90];
        sub_257484040(0, v14, 0);
        v6 = v46;
        v15 = v2 + 40;
        do
        {
          v44 = 34;
          v45 = 0xE100000000000000;

          v16 = OUTLINED_FUNCTION_277();
          MEMORY[0x259C64E90](v16);
          MEMORY[0x259C64E90](34, 0xE100000000000000);

          v46 = v6;
          v18 = *(v6 + 16);
          v17 = *(v6 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_257484040((v17 > 1), v18 + 1, 1);
            v6 = v46;
          }

          *(v6 + 16) = v18 + 1;
          v19 = v6 + 24 * v18;
          *(v19 + 32) = 34;
          *(v19 + 40) = 0xE100000000000000;
          *(v19 + 48) = 0;
          v15 += 16;
          --v14;
        }

        while (v14);
      }

      return v6;
    case 4uLL:
      v9 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v9)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v10 = *v1;
          v1 += 2;
          v46 = v10;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v11 > 1));
            v6 = v44;
          }

          OUTLINED_FUNCTION_30_8();
          --v9;
        }

        while (v9);
      }

      return v6;
    case 5uLL:
      v23 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v23)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v46 = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v24 > 1));
            v6 = v44;
          }

          OUTLINED_FUNCTION_30_8();
          v1 += 2;
          --v23;
        }

        while (v23);
      }

      return v6;
    case 6uLL:
      v25 = v3 >> 62;
      v6 = MEMORY[0x277D84F90];
      v26 = BYTE6(v3);
      switch(v3 >> 62)
      {
        case 1uLL:
          v43 = BYTE6(v3);
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_83;
          }

          v26 = HIDWORD(v2) - v2;
LABEL_46:
          if (!v26)
          {
            return v6;
          }

          v46 = MEMORY[0x277D84F90];
          sub_257484040(0, v26 & ~(v26 >> 63), 0);
          if (v25)
          {
            if (v25 == 2)
            {
              v29 = *(v2 + 16);
            }

            else
            {
              v29 = v2;
            }
          }

          else
          {
            v29 = 0;
          }

          if (v26 < 0)
          {
            goto LABEL_82;
          }

          v6 = v46;
          break;
        case 2uLL:
          v43 = BYTE6(v3);
          v28 = *(v2 + 16);
          v27 = *(v2 + 24);
          v26 = v27 - v28;
          if (!__OFSUB__(v27, v28))
          {
            goto LABEL_46;
          }

          goto LABEL_84;
        case 3uLL:
          return v6;
        default:
          v43 = BYTE6(v3);
          goto LABEL_46;
      }

      break;
    default:
      v5 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v5)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          LODWORD(v46) = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v7 > 1));
            v6 = v44;
          }

          OUTLINED_FUNCTION_30_8();
          ++v1;
          --v5;
        }

        while (v5);
      }

      return v6;
  }

  while (v25 != 1)
  {
    if (!v25)
    {
      if (v29 >= v43)
      {
        goto LABEL_77;
      }

      v44 = v2;
      LOWORD(v45) = v3;
      BYTE2(v45) = BYTE2(v3);
      BYTE3(v45) = BYTE3(v3);
      BYTE4(v45) = BYTE4(v3);
      BYTE5(v45) = BYTE5(v3);
      v30 = *(&v44 + v29);
      goto LABEL_72;
    }

    if (v29 < *(v2 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    if (v29 >= *(v2 + 24))
    {
      goto LABEL_79;
    }

    result = sub_257742F64();
    if (!result)
    {
      goto LABEL_86;
    }

    v33 = result;
    v36 = sub_257742F84();
    v35 = v29 - v36;
    if (__OFSUB__(v29, v36))
    {
      goto LABEL_81;
    }

LABEL_71:
    v30 = *(v33 + v35);
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F0, &qword_25776E388);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2577442B0;
    *(v37 + 56) = MEMORY[0x277D84B78];
    *(v37 + 64) = MEMORY[0x277D84BC0];
    *(v37 + 32) = v30;
    v38 = sub_257743664();
    v40 = v39;
    v46 = v6;
    v25 = *(v6 + 16);
    v41 = *(v6 + 24);
    if (v25 >= v41 >> 1)
    {
      sub_257484040((v41 > 1), v25 + 1, 1);
      v6 = v46;
    }

    *(v6 + 16) = v25 + 1;
    v42 = v6 + 24 * v25;
    *(v42 + 32) = v38;
    *(v42 + 40) = v40;
    *(v42 + 48) = 0;
    ++v29;
    --v26;
    LODWORD(v25) = v3 >> 62;
    if (!v26)
    {
      return v6;
    }
  }

  if (v29 < v2 || v29 >= v2 >> 32)
  {
    goto LABEL_78;
  }

  result = sub_257742F64();
  if (result)
  {
    v33 = result;
    v34 = sub_257742F84();
    v35 = v29 - v34;
    if (__OFSUB__(v29, v34))
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

void sub_2576635F0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for MLProgram.Value(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v6 = v1();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484040(v8, v7, 0);
    OUTLINED_FUNCTION_193();
    v10 = v6 + v9;
    v22 = *(v5 + 72);
    do
    {
      v11 = OUTLINED_FUNCTION_230();
      sub_257664F1C(v11, v12);
      sub_25771810C();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_257484040((v19 > 1), v20 + 1, 1);
      }

      *(v23 + 16) = v20 + 1;
      v21 = v23 + 24 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      *(v21 + 48) = v18;
      v10 += v22;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_35();
}

void sub_257663788()
{
  OUTLINED_FUNCTION_31();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  OUTLINED_FUNCTION_63();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v33 = v3 - v4;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v5);
  v32 = v28 - v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v31 = v28 - v8;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484040(v12, v11, 0);
    v13 = v38;
    OUTLINED_FUNCTION_193();
    v28[1] = v10;
    v15 = v10 + v14;
    v30 = *(v1 + 72);
    v29 = xmmword_257743FF0;
    do
    {
      v35 = v11;
      v36 = v13;
      v16 = v31;
      sub_257487308(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B40, &unk_257744100);
      v17 = swift_allocObject();
      *(v17 + 16) = v29;
      sub_257487308(v16);
      v37 = *(v34 + 48);
      sub_25771810C();
      *(v17 + 32) = v18;
      *(v17 + 40) = v19;
      *(v17 + 48) = v20;
      sub_257664D34();
      sub_257487308(v16);
      sub_25771810C();
      v13 = v36;
      *(v17 + 56) = v21;
      *(v17 + 64) = v22;
      *(v17 + 72) = v23;
      sub_257664D34();
      sub_2574695E4(v16, &qword_27F879ED0, &qword_2577447F8);
      sub_257664D34();
      sub_257664D34();
      v38 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_13_1(v24);
        sub_257484040(v27, v25 + 1, 1);
        v13 = v38;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 24 * v25;
      *(v26 + 32) = v17;
      *(v26 + 40) = 0;
      *(v26 + 48) = 1;
      v15 += v30;
      v11 = v35 - 1;
    }

    while (v35 != 1);
  }

  OUTLINED_FUNCTION_35();
}

void sub_257663A58()
{
  OUTLINED_FUNCTION_433();
  v6 = v1;
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for MLProgram.Value.Dictionary(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLProgram.Value.List(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  v15 = type metadata accessor for MLProgram.Value.Tuple(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  OUTLINED_FUNCTION_13(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.Value.ImmediateValue(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_4_23();
  sub_257664F1C(v6, v5);
  OUTLINED_FUNCTION_201();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_8();
      sub_257664D88(v5, v4);
      OUTLINED_FUNCTION_41_8();
      v32 = v4;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_17_12();
      sub_257664D88(v5, v2);
      OUTLINED_FUNCTION_42_9();
      v32 = v2;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_16_9();
      sub_257664D88(v5, v12);
      v32 = OUTLINED_FUNCTION_156();
LABEL_6:
      sub_257664D88(v32, v0);
      break;
    default:
      v21 = *(v5 + 16);
      v22 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
      v26 = type metadata accessor for Proto_MILSpec_TensorValue(0);
      OUTLINED_FUNCTION_192_0(v26);
      sub_2576652F4(v3);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
      sub_25751BB28();
      v30 = OUTLINED_FUNCTION_264();
      sub_257664F74(v30, v31, v21);
      break;
  }

  type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  OUTLINED_FUNCTION_18_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

void sub_257663CD4()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_99_2();
  v12 = type metadata accessor for Proto_MILSpec_TensorValue(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = OUTLINED_FUNCTION_51_4();
  type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = OUTLINED_FUNCTION_156();
  sub_257664F1C(v22, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    case 2u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    case 3u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    default:
      sub_257664D88(v21, v16);
      v23 = OUTLINED_FUNCTION_166();
      sub_257664F1C(v23, v0);
      v24 = OUTLINED_FUNCTION_277();
      sub_257487308(v24);
      if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
      {
        sub_2574695E4(v1, &qword_27F87B0E0, &unk_25774C0C0);
        OUTLINED_FUNCTION_8_16();
        sub_257664D34();
        OUTLINED_FUNCTION_47_6();
        sub_257664D34();
        OUTLINED_FUNCTION_173();
        sub_257664D34();
        v25 = 0;
        v26 = 0;
        v27 = MEMORY[0x277D84F90];
      }

      else
      {
        v28 = OUTLINED_FUNCTION_64_5();
        sub_257664D88(v28, v2);
        v29 = OUTLINED_FUNCTION_280();
        sub_257664F1C(v29, v30);
        sub_257665480();
        OUTLINED_FUNCTION_8_16();
        sub_257664D34();
        sub_257664D34();
        OUTLINED_FUNCTION_47_6();
        sub_257664D34();
        OUTLINED_FUNCTION_173();
        sub_257664D34();
        v27 = v31[1];
        v25 = v31[2];
        v26 = v32;
      }

      *v4 = v27;
      *(v4 + 8) = v25;
      *(v4 + 16) = v26;
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

void MLProgram.Value.ImmediateValue.hash(into:)()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_30();
  v4 = type metadata accessor for MLProgram.Value.Dictionary(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for MLProgram.Value.List(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v8 = type metadata accessor for MLProgram.Value.Tuple(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_4_23();
  v11 = OUTLINED_FUNCTION_211();
  sub_257664F1C(v11, v12);
  OUTLINED_FUNCTION_280();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_8();
      sub_257664D88(v2, v1);
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_MILSpec_TupleValue(0);
      sub_257664E78(&qword_27F87B440, type metadata accessor for Proto_MILSpec_TupleValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_0_47();
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_17_12();
      sub_257664D88(v2, v0);
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_MILSpec_ListValue(0);
      sub_257664E78(&qword_27F87B430, type metadata accessor for Proto_MILSpec_ListValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_2_34();
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_16_9();
      v19 = OUTLINED_FUNCTION_230();
      sub_257664D88(v19, v20);
      MEMORY[0x259C651F0](3);
      type metadata accessor for Proto_MILSpec_DictionaryValue(0);
      sub_257664E78(&qword_27F87B420, type metadata accessor for Proto_MILSpec_DictionaryValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      sub_257664D34();
      break;
    default:
      v14 = *v2;
      v13 = *(v2 + 8);
      v15 = *(v2 + 16);
      MEMORY[0x259C651F0](0);
      if (v15)
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      switch((v13 >> 60) & 3 | v16)
      {
        case 1uLL:
          MEMORY[0x259C651F0](1);
          v26 = OUTLINED_FUNCTION_188_1();
          sub_257667A94(v26, v27);
          break;
        case 2uLL:
          MEMORY[0x259C651F0](2);
          v24 = OUTLINED_FUNCTION_188_1();
          sub_257667A44(v24, v25);
          break;
        case 3uLL:
          MEMORY[0x259C651F0](3);
          OUTLINED_FUNCTION_188_1();
          sub_2576679DC();
          break;
        case 4uLL:
          MEMORY[0x259C651F0](4);
          OUTLINED_FUNCTION_23_11();
          v21 = OUTLINED_FUNCTION_188_1();
          sub_257668318(v21, v22, v23);
          break;
        case 5uLL:
          MEMORY[0x259C651F0](5);
          OUTLINED_FUNCTION_188_1();
          sub_257667984();
          break;
        case 6uLL:
          MEMORY[0x259C651F0](6);
          OUTLINED_FUNCTION_188_1();
          sub_257743114();
          break;
        default:
          MEMORY[0x259C651F0](0);
          v17 = OUTLINED_FUNCTION_188_1();
          sub_257667AE4(v17, v18);
          break;
      }

      sub_257664F74(v14, v13, v15);
      break;
  }

  OUTLINED_FUNCTION_434();
}

uint64_t sub_257664948(uint64_t (*a1)(void *))
{
  sub_257743A14();
  a1(v3);
  return sub_257743A64();
}

uint64_t sub_2576649B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_257743A14();
  a4(v6);
  return sub_257743A64();
}

uint64_t sub_2576649F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Value.BlobFileValue.fileName.setter(v1, v2);
}

uint64_t (*MLProgram.Value.BlobFileValue.fileName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t MLProgram.Value.BlobFileValue.offset.setter(uint64_t result)
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

uint64_t *(*MLProgram.Value.BlobFileValue.offset.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t *sub_257664ACC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 16) = v2;
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

uint64_t sub_257664AF0(uint64_t a1, uint64_t a2)
{
  if (sub_2577436F4())
  {
  }

  else
  {

    MEMORY[0x259C64E90](47, 0xE100000000000000);
  }

  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_173();
  v5 = sub_2577436E4();

  if (v5)
  {
    OUTLINED_FUNCTION_173();
    sub_2577436A4();

    sub_2577436B4();
    sub_2576682AC();
    result = sub_257743684();
    *v2 = v3;
    v2[1] = v4;
  }

  else
  {
  }

  return result;
}

BOOL static MLProgram.Value.BlobFileValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  result = 0;
  if (v3 || (sub_257743994()) && *(v1 + 16) == v0[2])
  {
    type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    v6 = sub_257664E78(v4, v5);
    if (OUTLINED_FUNCTION_4_2(v6))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257664D34()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_257664D88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_257664E78(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_257664F1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_257664F74(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  switch((a2 >> 60) & 3 | v3)
  {
    case 6uLL:
      result = sub_257486798(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

void MLProgram.Value.BlobFileValue.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v23 = v20;
  OUTLINED_FUNCTION_16_1();
  v24 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  type metadata accessor for MLProgram.Value.BlobFileValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v31 = OUTLINED_FUNCTION_64_5();
  sub_257664F1C(v31, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_257743FF0;
  *(v32 + 32) = 0x656D614E656C6966;
  *(v32 + 40) = 0xE800000000000000;
  v33 = v23[1];
  v34 = MEMORY[0x277D837D0];
  *(v32 + 48) = *v23;
  *(v32 + 56) = v33;
  *(v32 + 72) = v34;
  *(v32 + 80) = 0x74657366666FLL;
  *(v32 + 88) = 0xE600000000000000;
  v35 = v23[2];
  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v32 + 120) = MEMORY[0x277D83B88];
    *(v32 + 96) = v35;
    sub_257743A74();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    (*(v26 + 104))(v21, *MEMORY[0x277D84C38], v24);

    OUTLINED_FUNCTION_201();
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t MLProgram.Value.BlobFileValue.debugDescription.getter()
{
  sub_257743834();

  MEMORY[0x259C64E90](*v0, v0[1]);
  result = MEMORY[0x259C64E90](0x657366666F202C22, 0xEB00000000203A74);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_257743974();
    MEMORY[0x259C64E90](v2);

    OUTLINED_FUNCTION_75_4();
    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_2576652F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  switch((v4 >> 60) & 3 | v6)
  {
    case 1uLL:
      v11 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
      OUTLINED_FUNCTION_86_3(v11);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 2uLL:
      v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
      OUTLINED_FUNCTION_86_3(v9);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 3uLL:
      v10 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(0);
      OUTLINED_FUNCTION_86_3(v10);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 4uLL:
      v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
      OUTLINED_FUNCTION_86_3(v8);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 5uLL:
      v12 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
      OUTLINED_FUNCTION_86_3(v12);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 6uLL:
      *a1 = xmmword_257745740;
      type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
      v16 = OUTLINED_FUNCTION_205();
      sub_257486740(v16, v17);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_257486798(*a1, *(a1 + 8));
      *a1 = v3;
      *(a1 + 8) = v4 & 0xCFFFFFFFFFFFFFFFLL;
      type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
      OUTLINED_FUNCTION_62_4();

      return swift_storeEnumTagMultiPayload();
    default:
      v7 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
      OUTLINED_FUNCTION_86_3(v7);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v13 = OUTLINED_FUNCTION_98_2();

      return sub_257667B4C(v13, v14, v5);
  }
}

void sub_257665480()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_16_1();
  v7 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_6();
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_38();
  v14 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v18 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = (v21 - v20);
  v23 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
  v24 = OUTLINED_FUNCTION_13(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = (v26 - v25);
  type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  OUTLINED_FUNCTION_66_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v35 = OUTLINED_FUNCTION_156();
      sub_257664D88(v35, v22);
      v29 = *v22;

      sub_257664D34();
      v31 = 0;
      goto LABEL_8;
    case 2u:
      v33 = OUTLINED_FUNCTION_156();
      sub_257664D88(v33, v5);
      v29 = *v5;

      sub_257664D34();
      v31 = 0;
      v30 = 0x2000000000000000;
      break;
    case 3u:
      v34 = OUTLINED_FUNCTION_156();
      sub_257664D88(v34, v4);
      v29 = *v4;

      sub_257664D34();
      v31 = 0;
      v30 = 0x3000000000000000;
      break;
    case 4u:
      v32 = OUTLINED_FUNCTION_156();
      sub_257664D88(v32, v3);
      v29 = *v3;

      sub_257664D34();
      v30 = 0;
      goto LABEL_10;
    case 5u:
      v36 = OUTLINED_FUNCTION_156();
      sub_257664D88(v36, v2);
      v29 = *v2;

      sub_257664D34();
      v31 = 1;
LABEL_8:
      v30 = 0x1000000000000000;
      break;
    case 6u:
      v37 = OUTLINED_FUNCTION_156();
      sub_257664D88(v37, v1);
      v29 = *v1;
      v38 = v1[1];
      v39 = OUTLINED_FUNCTION_188_1();
      sub_257486740(v39, v40);
      sub_257664D34();
      v30 = v38 | 0x2000000000000000;
LABEL_10:
      v31 = 1;
      break;
    default:
      v28 = OUTLINED_FUNCTION_156();
      sub_257664D88(v28, v27);
      v29 = *v27;

      sub_257664D34();
      v30 = 0;
      v31 = 0;
      break;
  }

  *v0 = v29;
  *(v0 + 8) = v30;
  *(v0 + 16) = v31;
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.Tensor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_433();
  v2 = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 16);
  if (*(v1 + 16))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + 16))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v5 >> 60) & 3 | v8;
  switch((v3 >> 60) & 3 | v7)
  {
    case 1uLL:
      if (v9 == 1)
      {
        v16 = OUTLINED_FUNCTION_205();
        sub_257479BB4(v16, v17);
      }

      goto LABEL_22;
    case 2uLL:
      if (v9 == 2)
      {
        v12 = OUTLINED_FUNCTION_205();
        sub_257479C08(v12, v13);
      }

      goto LABEL_22;
    case 3uLL:
      if (v9 == 3)
      {
        v14 = OUTLINED_FUNCTION_205();
        sub_257479C78(v14, v15);
      }

      goto LABEL_22;
    case 4uLL:
      if (v9 == 4)
      {
        OUTLINED_FUNCTION_205();
        sub_257487374();
      }

      goto LABEL_22;
    case 5uLL:
      if (v9 == 5)
      {
        v18 = OUTLINED_FUNCTION_205();
        sub_257479D04(v18, v19);
      }

      goto LABEL_22;
    case 6uLL:
      if (v9 != 6)
      {
        goto LABEL_22;
      }

      v20 = OUTLINED_FUNCTION_188_1();
      sub_257667B4C(v20, v21, v6);
      v22 = OUTLINED_FUNCTION_53_3();
      sub_257667B4C(v22, v23, v24);
      MEMORY[0x259C648D0](v2, v3 & 0xCFFFFFFFFFFFFFFFLL, v4, v5 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    default:
      if (!v9)
      {
        v10 = OUTLINED_FUNCTION_205();
        sub_257479B60(v10, v11);
      }

LABEL_22:
      v25 = OUTLINED_FUNCTION_188_1();
      sub_257667B4C(v25, v26, v6);
      v27 = OUTLINED_FUNCTION_53_3();
      sub_257667B4C(v27, v28, v29);
      break;
  }

  v30 = OUTLINED_FUNCTION_53_3();
  sub_257664F74(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_188_1();
  sub_257664F74(v33, v34, v6);
  OUTLINED_FUNCTION_434();
}

void MLProgram.Value.Tensor.hash(into:)()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  switch((*(v0 + 8) >> 60) & 3 | v1)
  {
    case 1:
      MEMORY[0x259C651F0](1);
      v9 = OUTLINED_FUNCTION_292();

      sub_257667A94(v9, v10);
      break;
    case 2:
      MEMORY[0x259C651F0](2);
      v7 = OUTLINED_FUNCTION_292();

      sub_257667A44(v7, v8);
      break;
    case 3:
      MEMORY[0x259C651F0](3);
      OUTLINED_FUNCTION_292();

      sub_2576679DC();
      break;
    case 4:
      MEMORY[0x259C651F0](4);
      OUTLINED_FUNCTION_23_11();
      v4 = OUTLINED_FUNCTION_292();
      sub_257668318(v4, v5, v6);
      break;
    case 5:
      MEMORY[0x259C651F0](5);
      OUTLINED_FUNCTION_292();

      sub_257667984();
      break;
    case 6:
      MEMORY[0x259C651F0](6);
      OUTLINED_FUNCTION_292();

      sub_257743114();
      break;
    default:
      MEMORY[0x259C651F0](0);
      v2 = OUTLINED_FUNCTION_292();

      sub_257667AE4(v2, v3);
      break;
  }
}

uint64_t MLProgram.Value.Tensor.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_257743A14();
  if (v2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  switch((v1 >> 60) & 3 | v3)
  {
    case 1uLL:
      v43 = MEMORY[0x259C651F0](1);
      v51 = OUTLINED_FUNCTION_67_4(v43, v44, v45, v46, v47, v48, v49, v50, v62, v63);
      sub_257667A94(v51, v52);
      break;
    case 2uLL:
      v25 = MEMORY[0x259C651F0](2);
      v33 = OUTLINED_FUNCTION_67_4(v25, v26, v27, v28, v29, v30, v31, v32, v62, v63);
      sub_257667A44(v33, v34);
      break;
    case 3uLL:
      v35 = MEMORY[0x259C651F0](3);
      OUTLINED_FUNCTION_67_4(v35, v36, v37, v38, v39, v40, v41, v42, v62, v63);
      sub_2576679DC();
      break;
    case 4uLL:
      MEMORY[0x259C651F0](4);
      OUTLINED_FUNCTION_23_11();
      v22 = OUTLINED_FUNCTION_67_4(v14, v15, v16, v17, v18, v19, v20, v21, v62, v63);
      sub_257668318(v22, v23, v24);
      break;
    case 5uLL:
      v53 = MEMORY[0x259C651F0](5);
      OUTLINED_FUNCTION_67_4(v53, v54, v55, v56, v57, v58, v59, v60, v62, v63);
      sub_257667984();
      break;
    case 6uLL:
      MEMORY[0x259C651F0](6);
      sub_257743114();
      break;
    default:
      v4 = MEMORY[0x259C651F0](0);
      v12 = OUTLINED_FUNCTION_67_4(v4, v5, v6, v7, v8, v9, v10, v11, v62, v63);
      sub_257667AE4(v12, v13);
      break;
  }

  return sub_257743A64();
}

uint64_t sub_257665CC0(uint64_t a1)
{
  sub_257743A14();
  MLProgram.Value.Tensor.hash(into:)();
  return sub_257743A64();
}

uint64_t (*MLProgram.Value.Tuple.elements.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Value.List.elements.getter(a1);
  return sub_257665D5C;
}

uint64_t sub_257665DA0(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v9 = v8;
  v71 = a2;
  v72 = a4;
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63();
  v65 = v14;
  OUTLINED_FUNCTION_29();
  v16 = MEMORY[0x28223BE20](v15);
  v58 = a5;
  v59 = &v53 - v17;
  v56 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v68 = (v18 - v19);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v20);
  v66 = &v53 - v21;
  OUTLINED_FUNCTION_153();
  sub_2577437B4();
  OUTLINED_FUNCTION_63();
  v54 = v23;
  v55 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v53 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11();
  v67 = v31 - v32;
  OUTLINED_FUNCTION_158();
  v34 = MEMORY[0x28223BE20](v33);
  v64 = *(a3 - 8);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v63 = v36 - v35;
  v62 = a6;
  v73 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63();
  v60 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  v40 = &v53 - v39;
  v41 = sub_257743724();
  v74 = sub_257743864();
  v69 = sub_257743874();
  sub_257743844();
  (*(v64 + 16))(v63, v61, a3);
  v72 = v40;
  v64 = a3;
  result = sub_257743714();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v65 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2577437C4();
      result = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v70(v30, v66);
      if (v9)
      {
        v51 = OUTLINED_FUNCTION_71_2();
        v52(v51);

        (*(v56 + 32))(v57, v66, v58);
        return (*v43)(v30, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v43)(v30, AssociatedTypeWitness);
      sub_257743854();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v44 = (v65 + 32);
  v45 = (v65 + 8);
  v46 = v59;
  while (1)
  {
    sub_2577437C4();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v47 = OUTLINED_FUNCTION_71_2();
      v48(v47);
      (*(v54 + 8))(v26, v55);
      return v74;
    }

    (*v44)(v46, v26, AssociatedTypeWitness);
    v70(v46, v68);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v45)(v46, AssociatedTypeWitness);
    sub_257743854();
  }

  (*v45)(v46, AssociatedTypeWitness);
  v49 = OUTLINED_FUNCTION_71_2();
  v50(v49);

  return (*(v56 + 32))(v57, v68, v58);
}

void sub_25766653C()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for MLProgram.Value(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for Proto_MILSpec_Value(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484C58(v12, v11, 0);
    v13 = v22;
    OUTLINED_FUNCTION_193();
    v15 = v0 + v14;
    v16 = *(v8 + 72);
    do
    {
      sub_257664F1C(v15, v2);
      OUTLINED_FUNCTION_24_12();
      v17 = OUTLINED_FUNCTION_264();
      sub_257664F1C(v17, v18);
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v20 = *(v22 + 16);
      v19 = *(v22 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_257484C58(v19 > 1, v20 + 1, 1);
      }

      *(v22 + 16) = v20 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v3, v21);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *v1 = v13;
  OUTLINED_FUNCTION_35();
}

uint64_t (*MLProgram.Value.List.elements.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Value.List.elements.getter(a1);
  return sub_257666770;
}

uint64_t sub_257666788(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_257666824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t *a6@<X8>)
{
  a4(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = type metadata accessor for Proto_MILSpec_Value(0);
  v13 = sub_257665DA0(a5, 0, a2, v11, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v12);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a6 = v13;
  return result;
}

void sub_257666A1C()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for MLProgram.Value(v7);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v12 = type metadata accessor for Proto_MILSpec_Value(0);
  v13 = OUTLINED_FUNCTION_24(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_0();
  v14 = v4(0);
  OUTLINED_FUNCTION_192_0(v14);
  v15 = *(v6 + 16);
  if (v15)
  {
    v26 = v0;
    v16 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484C58(v16, v15, 0);
    v17 = v27;
    OUTLINED_FUNCTION_193();
    v19 = v6 + v18;
    v20 = *(v11 + 72);
    do
    {
      sub_257664F1C(v19, v1);
      OUTLINED_FUNCTION_24_12();
      v21 = OUTLINED_FUNCTION_264();
      sub_257664F1C(v21, v22);
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v24 = *(v27 + 16);
      v23 = *(v27 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_257484C58(v23 > 1, v24 + 1, 1);
      }

      *(v27 + 16) = v24 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v2, v25);
      v19 += v20;
      --v15;
    }

    while (v15);

    v0 = v26;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *v0 = v17;
  OUTLINED_FUNCTION_35();
}

void sub_257666C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_16_1();
  v28 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v32);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v27(0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  sub_257664F1C(v20, &a9 - v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2577442B0;
  *(v36 + 32) = 0x73746E656D656C65;
  *(v36 + 40) = 0xE800000000000000;
  v37 = v25();
  *(v36 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880840, &qword_25776DC18);
  *(v36 + 48) = v37;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  (*(v30 + 104))(v21, *MEMORY[0x277D84C38], v28);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_257666E78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = OUTLINED_FUNCTION_376();
  type metadata accessor for MLProgram.Value(v3);
  v4 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x259C64F20](v4);
  OUTLINED_FUNCTION_96_3();

  v5 = OUTLINED_FUNCTION_263();
  MEMORY[0x259C64E90](v5);

  OUTLINED_FUNCTION_75_4();
}

void MLProgram.Value.Dictionary.keyValuePairs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v52 = type metadata accessor for Proto_MILSpec_Value(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v57 = v5 - v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v56 = &v45 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  OUTLINED_FUNCTION_63();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - v12;
  v13 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(v13);
  OUTLINED_FUNCTION_63();
  v53 = v15;
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v16 = *(v3 + 16);
  if (v16)
  {
    v46 = v0;
    v17 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484CB0(v17, v16, 0);
    v18 = 0;
    OUTLINED_FUNCTION_193();
    v47 = v3 + v19;
    v48 = v16;
    v20 = v58;
    v49 = v10;
    v50 = v3;
    v21 = v56;
    v22 = v52;
    while (v18 < *(v3 + 16))
    {
      v23 = v51;
      sub_257487308(v47 + *(v10 + 72) * v18);
      v24 = *(v55 + 48);
      sub_257664F1C(v23, v21);
      sub_257664F1C(v23 + v24, v57);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = v54;
      v26 = *(v54 + 20);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
      v30 = *(v25 + 24);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v22);
      sub_2574695E4(v1 + v26, &qword_27F879EB8, &unk_2577447E0);
      sub_257664D88(v21, v1 + v26);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v22);
      sub_2574695E4(v1 + v30, &qword_27F879EB8, &unk_2577447E0);
      sub_257664D88(v57, v1 + v30);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v22);
      sub_2574695E4(v23, &qword_27F879ED0, &qword_2577447F8);
      v58 = v20;
      v41 = *(v20 + 16);
      v40 = *(v20 + 24);
      if (v41 >= v40 >> 1)
      {
        v44 = OUTLINED_FUNCTION_13_1(v40);
        sub_257484CB0(v44, v41 + 1, 1);
        v20 = v58;
      }

      ++v18;
      *(v20 + 16) = v41 + 1;
      OUTLINED_FUNCTION_193();
      v42 = OUTLINED_FUNCTION_166();
      sub_257664D88(v42, v43);
      v10 = v49;
      v3 = v50;
      if (v48 == v18)
      {

        v0 = v46;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_9:

    *v0 = v20;
    OUTLINED_FUNCTION_35();
  }
}

uint64_t (*MLProgram.Value.Dictionary.keyValuePairs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  *a1 = v3;
  return sub_2576672FC;
}

uint64_t MLProgram.Value.Dictionary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for Proto_MILSpec_DictionaryValue(0);
  return OUTLINED_FUNCTION_192_0(v1);
}