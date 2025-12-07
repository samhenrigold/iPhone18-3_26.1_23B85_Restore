uint64_t sub_1AC759CFC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC759DA0()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_0_24(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC759EF8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC75A018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC759CFC();
}

uint64_t sub_1AC75A0DC()
{
  OUTLINED_FUNCTION_72();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  OUTLINED_FUNCTION_82();

  return v3(0);
}

uint64_t sub_1AC75A180()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC75A224()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_0_24(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC75A37C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC75A49C()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC75A540()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_0_24(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC75A698()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 24) = v0;
  *(v1 + 108) = v2;
  v3 = sub_1AC79FC78();
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_22(v3);
  *(v1 + 40) = v4;
  *(v1 + 48) = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAB0, &unk_1AC7B35B0);
  *(v1 + 56) = v5;
  OUTLINED_FUNCTION_22(v5);
  *(v1 + 64) = v6;
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC75A798()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 108);
    v3 = sub_1AC5C6544();
    *(v0 + 104) = v2;
    *(v0 + 16) = v3;
    sub_1AC79FC98();
    sub_1AC5DEB8C(v1);
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B78);
    v9 = v5;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_0_24(v6);

    return v9(v7);
  }

  else
  {
    v4 = *(v0 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AC75AB68, v4, 0);
  }
}

uint64_t sub_1AC75A9AC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC75AAC4()
{
  OUTLINED_FUNCTION_72();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = v0[12];

  return v3(v4);
}

uint64_t sub_1AC75AB98()
{
  OUTLINED_FUNCTION_72();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC75AC38(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFD2C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC75ACC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC6B79F0;

    return sub_1AC5D0420();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC75AE6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC75A180();
}

uint64_t sub_1AC75AF00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC75A49C();
}

uint64_t sub_1AC75AF94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC758E00;

    return sub_1AC75A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC75B13C()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  OUTLINED_FUNCTION_8_15();
  sub_1AC75B738(v0, v1, v2, &unk_1AC7B3700);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75B1B8()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    OUTLINED_FUNCTION_8_15();
    sub_1AC75B738(v1, v2, v3, &unk_1AC7B3750);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC75B27C(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v1, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
  return sub_1AC79FC28();
}

uint64_t sub_1AC75B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75B34C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  v6 = sub_1AC75B738(&unk_1EB56AD88, v5, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC75B3D4(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v1, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC75B468@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v4, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AC75B628()
{
  v0 = objc_opt_self();
  v1 = &unk_1F215B228;
  v2 = [v0 interfaceWithProtocol_];

  qword_1EB56E608 = v2;
}

uint64_t sub_1AC75B690(uint64_t a1, void (*a2)(void *))
{
  v3[3] = MEMORY[0x1E69E76D8];
  v3[0] = a1;
  a2(v3);
  return sub_1AC641B24(v3);
}

uint64_t sub_1AC75B6DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1AC75B738(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NormalizingTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    sub_1AC79F5C8();
    OUTLINED_FUNCTION_80();
    v6 = *(v5 + 16);
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v6(a1, v7, v4);
  }

  else
  {
    __break(1u);
  }
}

__n128 NormalizingTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t NormalizingTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2, v3);
}

double NormalizingTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
}

__n128 NormalizingTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t NormalizingTranscriber.multisegmentResults.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_1();
  v3 = OUTLINED_FUNCTION_77_0();
  v4(v3);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v5, &qword_1EB56C340, &qword_1AC7A8810, v6);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t NormalizingTranscriber.results.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_1();
  v3 = OUTLINED_FUNCTION_77_0();
  v4(v3);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v5, &qword_1EB56C330, &qword_1AC7A8800, v6);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t NormalizingTranscriber.ModelOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v5 = v4[5];
  v6 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_50_10(a2 + v5, v7, v8, v6);
  v9 = v4[7];
  v10 = (a2 + v4[6]);
  v11 = v4[8];
  v12 = v4[9];
  v20 = v4[10];
  v21 = v4[11];
  v13 = v4[12];
  v14 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(a2 + v13) = *(a1 + v14[12]);
  v15 = a1[1];
  *a2 = *a1;
  a2[1] = v15;
  v16 = v14[5];

  sub_1AC75EC18(a1 + v16, a2 + v5);
  v17 = (a1 + v14[6]);
  v18 = v17[1];
  *v10 = *v17;
  v10[1] = v18;
  *(a2 + v9) = *(a1 + v14[7]);
  *(a2 + v11) = *(a1 + v14[8]);
  *(a2 + v12) = *(a1 + v14[9]);
  *(a2 + v20) = *(a1 + v14[10]);
  LOBYTE(v14) = *(a1 + v14[11]);

  result = sub_1AC760390();
  *(a2 + v21) = v14;
  return result;
}

uint64_t NormalizingTranscriber.__allocating_init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v6;
}

void NormalizingTranscriber.__allocating_init(locale:preset:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v6 - v5, v0, v1);

  NormalizingTranscriber.__allocating_init(locale:contentHints:reportingOptions:attributeOptions:)();

  v7 = OUTLINED_FUNCTION_170();
  v8(v7);
  OUTLINED_FUNCTION_105();
}

void NormalizingTranscriber.__allocating_init(locale:contentHints:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v1 = OUTLINED_FUNCTION_25();
  v2 = type metadata accessor for NormalizingTranscriber.ModelOptions(v1);
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v6 = (v5 - v4);
  v7 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  (*(v9 + 16))(v12 - v11, v0, v7);
  *v6 = 0;
  v6[1] = 0;
  v13 = v3[7];
  v14 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_50_10(v6 + v13, v15, v16, v14);
  v17 = (v6 + v3[8]);
  *v17 = 0;
  v17[1] = 0;
  *(v6 + v3[9]) = MEMORY[0x1E69E7CC0];
  *(v6 + v3[10]) = 0;
  *(v6 + v3[11]) = 0;
  *(v6 + v3[12]) = 0;
  *(v6 + v3[13]) = 0;
  *(v6 + v3[14]) = &unk_1F212FFB8;
  swift_allocObject();
  NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v18 = OUTLINED_FUNCTION_50_7();
  v19(v18);
  OUTLINED_FUNCTION_105();
}

uint64_t NormalizingTranscriber.ModelOptions.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = v2[5];
  v4 = sub_1AC79F7F8();
  result = OUTLINED_FUNCTION_50_10(a1 + v3, v5, v6, v4);
  v8 = (a1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = &unk_1F212FFE0;
  return result;
}

void NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v176 = v1;
  v183 = v2;
  v173 = v3;
  v5 = v4;
  v7 = v6;
  v171 = v8;
  v172 = v0;
  v157 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v9);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v156 - v11;
  v170 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v169 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v167 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v17 = OUTLINED_FUNCTION_167(v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v180 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v156 - v20;
  v177 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v178 = v23 - v22;
  v179 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v24 = *(v5 + v179[12]);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v182 = v7;
  v175 = v5;
  v159 = v24;
  if (v25)
  {
    v185[0] = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v25, 0);
    v27 = v185[0];
    v28 = (v24 + 32);
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_110_1();
    v38 = 0x746F687354;
    do
    {
      v39 = *v28++;
      v40 = 0xE90000000000006ELL;
      v41 = 0x6F69746174636944;
      switch(v39)
      {
        case 1:
          v41 = v33;
          v40 = v32;
          break;
        case 2:
          v41 = v34;
          v40 = 0xE900000000000068;
          break;
        case 3:
          v41 = 0xD000000000000011;
          v40 = v31;
          break;
        case 4:
          v40 = 0xE90000000000006CLL;
          v41 = v35;
          break;
        case 5:
          v40 = 0xEA0000000000676ELL;
          v41 = v36;
          break;
        case 6:
          v41 = 0x6F69746174636944;
          v40 = v37;
          break;
        case 7:
          v40 = 0xE700000000000000;
          v41 = v29;
          break;
        case 8:
          v40 = 0xE800000000000000;
          v41 = v30;
          break;
        case 9:
          v40 = 0xE500000000000000;
          v41 = v38;
          break;
        default:
          break;
      }

      v185[0] = v27;
      v43 = *(v27 + 16);
      v42 = *(v27 + 24);
      if (v43 >= v42 >> 1)
      {
        v174 = v31;
        v45 = v32;
        sub_1AC6310CC(v42 > 1, v43 + 1, 1);
        OUTLINED_FUNCTION_110_1();
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_114();
        v32 = v45;
        v31 = v174;
        v27 = v185[0];
      }

      *(v27 + 16) = v43 + 1;
      v44 = v27 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      --v25;
    }

    while (v25);
    v5 = v175;
    v7 = v182;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v185[0] = v26;
  v46 = v7 + 56;
  OUTLINED_FUNCTION_117_0();
  v49 = v48 & v47;
  v51 = (v50 + 63) >> 6;

  v52 = 0;
  while (v49)
  {
LABEL_24:
    v54 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v55 = (v52 << 9) | (8 * v54);
    v25 = *(*(v7 + 48) + v55);
    if (v25 >= 3)
    {
      v56 = sub_1AC61C264(*(*(v7 + 48) + v55));
      MEMORY[0x1B26E8CF0](v56);
      if (*((v185[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v26 = v185[0];
    }
  }

  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    if (v53 >= v51)
    {
      break;
    }

    v49 = *(v46 + 8 * v53);
    ++v52;
    if (v49)
    {
      v52 = v53;
      goto LABEL_24;
    }
  }

  if (off_1ED937D60 != -1)
  {
    goto LABEL_101;
  }

LABEL_29:
  v57 = sub_1AC79FDE8();
  v58 = __swift_project_value_buffer(v57, qword_1ED9386C8);
  v59 = sub_1AC61C24C();
  v60 = v181;
  if (v59 <= 1)
  {
    v164 = v26;
    v61 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_50_10(v60, v62, v63, v61);
    v64 = *(v7 + 16);
    v158 = v58;
    if (!v64 || (sub_1AC7A0E78(), MEMORY[0x1B26E9A40](1), sub_1AC7A0EC8(), OUTLINED_FUNCTION_21_15(), (v65 & 1) == 0))
    {
LABEL_40:
      v166 = 0;
      goto LABEL_41;
    }

    while (1)
    {
      v66 = *(*(v7 + 48) + 8 * v25);
      if (v66)
      {
        v67 = v66 == 2;
      }

      else
      {
        v67 = 1;
      }

      if (v67)
      {
        sub_1AC5D9454(v66);
      }

      else if (v66 == 1)
      {
        v166 = 1;
        sub_1AC5D9454(1);
LABEL_41:
        v70 = *v5;
        v69 = v5[1];
        v71 = v179;
        sub_1AC61CB64(v5 + v179[5], v180);
        v72 = *(v5 + v71[7]);
        v73 = *(v5 + v71[9]);
        v74 = v5;
        v75 = (v5 + v71[6]);
        v76 = v75[1];
        v162 = *v75;
        v77 = *(v7 + 16);
        v174 = v72;
        v165 = v73;
        v163 = v69;
        v161 = v76;
        v160 = v70;
        if (!v77)
        {

LABEL_49:
          v82 = 0;
          goto LABEL_50;
        }

        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](2);
        v78 = sub_1AC7A0EC8() & ~(-1 << *(v7 + 32));
        v79 = *(v46 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v79 >> v78) & 1) == 0)
        {
          goto LABEL_49;
        }

        while (2)
        {
          v80 = *(*(v7 + 48) + 8 * v78);
          if (v80 < 2)
          {
            sub_1AC5D9454(v80);
            goto LABEL_46;
          }

          if (v80 != 2)
          {
LABEL_46:
            OUTLINED_FUNCTION_8_16();
            if ((v81 & 1) == 0)
            {
              goto LABEL_49;
            }

            continue;
          }

          break;
        }

        sub_1AC5D9454(2);
        v82 = 1;
LABEL_50:
        v83 = *(v74 + v179[8]);
        v84 = *(v74 + v179[10]);
        v85 = *(v74 + v179[11]);
        v86 = v164;
        if (sub_1AC61C24C())
        {
          sub_1AC61C25C();
          if ((v86 & 0xC000000000000001) != 0)
          {

            v88 = MEMORY[0x1B26E95B0](0, v86);
          }

          else
          {
            v87 = *(v86 + 32);

            v88 = v87;
          }

          v89 = v88;
        }

        else
        {

          v89 = 0;
        }

        v90 = v178;
        sub_1AC623D54(v181, v178);
        v91 = v177;
        *(v90 + v177[5]) = v166;
        v92 = (v90 + v91[6]);
        v93 = v163;
        *v92 = v160;
        v92[1] = v93;
        sub_1AC623D54(v180, v90 + v91[7]);
        *(v90 + v91[9]) = v174;
        v94 = (v90 + v91[8]);
        v95 = v161;
        *v94 = v162;
        v94[1] = v95;
        *(v90 + v91[10]) = v82;
        *(v90 + v91[11]) = v83;
        *(v90 + v91[12]) = v165;
        *(v90 + v91[15]) = v84;
        *(v90 + v91[13]) = v85;
        *(v90 + v91[14]) = v89;
        v96 = v182;
        if (!*(v182 + 16))
        {
          v101 = 0;
          v97 = v183;
          v5 = v173;
          goto LABEL_66;
        }

        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        sub_1AC7A0EC8();
        OUTLINED_FUNCTION_21_15();
        v97 = v183;
        v5 = v173;
        if ((v98 & 1) == 0)
        {
LABEL_61:
          v101 = 0;
          goto LABEL_66;
        }

        while (2)
        {
          v99 = *(*(v96 + 48) + 8 * v85);
          if ((v99 - 1) < 2)
          {
            sub_1AC5D9454(v99);
            goto LABEL_60;
          }

          if (v99)
          {
LABEL_60:
            OUTLINED_FUNCTION_8_16();
            if ((v100 & 1) == 0)
            {
              goto LABEL_61;
            }

            continue;
          }

          break;
        }

        sub_1AC5D9454(0);
        v101 = 1;
LABEL_66:
        v102 = sub_1AC637EF8();
        v103 = sub_1AC637EF8();
        v104 = v103;
        if (v102)
        {
          v105 = 1;
          if (v101 & v103)
          {
            v106 = 0;
            v107 = 0;
            goto LABEL_76;
          }

LABEL_70:
          v108 = sub_1AC79FDC8();
          v109 = sub_1AC7A05D8();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 67110144;
            *(v110 + 4) = v102 & 1;
            *(v110 + 8) = 1024;
            *(v110 + 10) = v101;
            *(v110 + 14) = 1024;
            *(v110 + 16) = v104 & 1;
            *(v110 + 20) = 1024;
            *(v110 + 22) = v105 & 1;
            *(v110 + 26) = 1024;
            *(v110 + 28) = 0;
            _os_log_impl(&dword_1AC5BC000, v108, v109, "NormalizingTranscriber: Remapped selected (repSing %{BOOL}d, expShort %{BOOL}d, repFreq %{BOOL}d) to actual (single %{BOOL}d, longer %{BOOL}d)", v110, 0x20u);
            MEMORY[0x1B26EAB10](v110, -1, -1);
          }

          v106 = 0;
          if (v105)
          {
            v105 = 1;
            v107 = 0;
            v97 = v183;
            goto LABEL_76;
          }

          v97 = v183;
        }

        else
        {
          LOBYTE(v105) = v103 ^ 1;
          LOBYTE(v106) = v103 ^ 1;
          if (v101)
          {
            goto LABEL_70;
          }
        }

        v107 = v106;
        v106 = sub_1AC637EF8();
        v105 = 0;
LABEL_76:
        sub_1AC6CE700(v5);
        v112 = v111;
        LODWORD(v180) = v106;
        LODWORD(v181) = v105;

        v185[0] = sub_1AC6090E4(v112);
        sub_1AC6102B0(v184, 0, v113, v114, v115, v116, v117, v118, v156, v157);
        if (v107)
        {
          sub_1AC6102B0(v184, 2, v119, v120, v121, v122, v123, v124, v156, v157);
        }

        v125 = v97 + 56;
        OUTLINED_FUNCTION_117_0();
        v7 = v127 & v126;
        v46 = (v128 + 63) >> 6;

        v25 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        while (v7)
        {
LABEL_84:
          OUTLINED_FUNCTION_57_2();
          v131 = *(*(v97 + 48) + (v130 | (v25 << 6)));
          switch(v131)
          {
            case 2:
            case 3:
            case 4:
              continue;
            case 5:
              v131 = 2;
              goto LABEL_89;
            case 6:
              v131 = 3;
              goto LABEL_89;
            case 7:
              v131 = 4;
              goto LABEL_89;
            case 8:
              v131 = 5;
              goto LABEL_89;
            default:
LABEL_89:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AC60DC84(0, *(v26 + 16) + 1, 1, v26);
                v26 = v133;
              }

              v5 = *(v26 + 16);
              v132 = *(v26 + 24);
              if (v5 >= v132 >> 1)
              {
                sub_1AC60DC84(v132 > 1, v5 + 1, 1, v26);
                v26 = v134;
              }

              *(v26 + 16) = v5 + 1;
              *(v5 + v26 + 32) = v131;
              v97 = v183;
              break;
          }
        }

        while (1)
        {
          v129 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v129 >= v46)
          {

            v135 = sub_1AC6091C8(v26);
            sub_1AC62428C(v176);
            v137 = sub_1AC6090B4(v136);
            v138 = [objc_opt_self() standardUserDefaults];
            v139 = sub_1AC79FF58();
            v140 = [v138 BOOLForKey_];

            v179 = v135;
            v174 = v137;
            v141 = (v140 & 1) == 0 && *(v159 + 16) && (*(v159 + 32) & 0xFC) == 4;
            v142 = v169;
            v173 = *(v169 + 16);
            v143 = v167;
            v144 = v171;
            v145 = v170;
            (v173)(v167, v171, v170);
            v146 = v168;
            sub_1AC76032C(v178, v168);
            __swift_storeEnumTagSinglePayload(v146, 0, 1, v177);
            v147 = v185[0];
            type metadata accessor for TranscriberCommon(0);
            swift_allocObject();
            LOBYTE(v155) = v141;
            sub_1AC74B560(v143, v146, v27, 3, v181, v180 & 1, v147, v179, v174, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
            v149 = v148;
            (*(v142 + 8))(v144, v145);
            sub_1AC760390();
            v150 = v172;
            *(v172 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common) = v149;
            (v173)(v150 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale, v149 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v145);
            *(v150 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_contentHints) = v182;
            sub_1AC7603E4(v175, v150 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_modelOptions);
            *(v150 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_reportingOptions) = v183;
            *(v150 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_resultAttributeOptions) = v176;
            OUTLINED_FUNCTION_105();
            return;
          }

          v7 = *(v125 + 8 * v129);
          ++v25;
          if (v7)
          {
            v25 = v129;
            goto LABEL_84;
          }
        }

LABEL_100:
        __break(1u);
LABEL_101:
        swift_once();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_8_16();
      if ((v68 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  v151 = sub_1AC79FDC8();
  v152 = sub_1AC7A05F8();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v185[0] = v154;
    *v153 = 136315138;
    *(v153 + 4) = sub_1AC5CFE74(0xD000000000000046, 0x80000001AC7BAC30, v185);
    _os_log_impl(&dword_1AC5BC000, v151, v152, "Failed precondition: %s", v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v154);
    MEMORY[0x1B26EAB10](v154, -1, -1);
    MEMORY[0x1B26EAB10](v153, -1, -1);
  }

  __break(1u);
  swift_deallocPartialClassInstance();
  __break(1u);
}

void sub_1AC75CFC8()
{
  sub_1AC724938(&unk_1F2130008);
  qword_1EB56DFA8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFB0 = v0;
  qword_1EB56DFB8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFC0 = MEMORY[0x1E69E7CD0];
}

uint64_t NormalizingTranscriber.Preset.init(contentHints:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CD0];
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

double static NormalizingTranscriber.Preset.progressiveTranscription.getter()
{
  if (qword_1EB56B620 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56DFA8);

  return result;
}

void sub_1AC75D09C()
{
  sub_1AC724938(&unk_1F2130030);
  v1 = v0;
  sub_1AC72484C(&unk_1F2130058);
  qword_1EB56DFC8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFD0 = v1;
  qword_1EB56DFD8 = v2;
  unk_1EB56DFE0 = MEMORY[0x1E69E7CD0];
}

double static NormalizingTranscriber.Preset.research.getter()
{
  if (qword_1EB56B628 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56DFC8);

  return result;
}

uint64_t NormalizingTranscriber.Preset.init(contentHints:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = a2;
  return result;
}

uint64_t NormalizingTranscriber.Preset.contentHints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static NormalizingTranscriber.Preset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1AC61EB0C(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC623E28() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_0();
  if ((sub_1AC623E2C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_39();

  return sub_1AC623E30();
}

uint64_t NormalizingTranscriber.Preset.hash(into:)(void *a1)
{
  sub_1AC6239EC(a1, *v1);
  OUTLINED_FUNCTION_170();
  sub_1AC623E34();
  sub_1AC623E34();
  OUTLINED_FUNCTION_39();

  return sub_1AC623E38();
}

uint64_t NormalizingTranscriber.Preset.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  sub_1AC6239EC(v3, v1);
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC623E38();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75D43C(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  sub_1AC6239EC(v4, v2);
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC623E38();
  return sub_1AC7A0EC8();
}

id static NormalizingTranscriber.ContentHint.customLanguageModel(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
  (*(v6 + 16))(v10, a1, v4);
  result = sub_1AC75D5B4(v10);
  *a2 = result;
  return result;
}

id sub_1AC75D5B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F788();
  v4 = [v2 initWithLanguageModel_];

  v5 = sub_1AC79F7F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

BOOL static NormalizingTranscriber.ContentHint.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 3)
      {
        return 0;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      if ((OUTLINED_FUNCTION_132() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v3;
}

uint64_t NormalizingTranscriber.ContentHint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1B26E9A40](v3);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t NormalizingTranscriber.ContentHint.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ModelOptions.geoLMRegionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 20);

  return sub_1AC61CB64(v3, a1);
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 20);

  return sub_1AC633390(v0, v3);
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.getter()
{
  type metadata accessor for NormalizingTranscriber.ModelOptions(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

double NormalizingTranscriber.ModelOptions.speechProfiles.getter()
{
  type metadata accessor for NormalizingTranscriber.ModelOptions(0);

  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfiles.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfiles.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.enableParallelLoading.setter(char a1)
{
  result = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.enableParallelLoading.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

double NormalizingTranscriber.ModelOptions.userIdMask.getter()
{
  type metadata accessor for NormalizingTranscriber.ModelOptions(0);

  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.userIdMask.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.userIdMask.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

double NormalizingTranscriber.ModelOptions.speechProfileContainers.getter()
{
  type metadata accessor for NormalizingTranscriber.ModelOptions(0);

  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfileContainers.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfileContainers.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.enableFullPayloadCorrection.setter(char a1)
{
  result = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.enableFullPayloadCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for NormalizingTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

void static NormalizingTranscriber.ModelOptions.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v34);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_49_1();
  v40 = v26[1];
  v41 = v24[1];
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_19;
    }

    v42 = *v26 == *v24 && v40 == v41;
    if (!v42 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v41)
  {
    goto LABEL_19;
  }

  v43 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v44 = v43[5];
  v45 = *(v38 + 48);
  sub_1AC61CB64(v26 + v44, v20);
  sub_1AC61CB64(v24 + v44, v20 + v45);
  OUTLINED_FUNCTION_14_7(v20);
  if (!v42)
  {
    sub_1AC61CB64(v20, v37);
    OUTLINED_FUNCTION_14_7(v20 + v45);
    if (!v46)
    {
      (*(v29 + 32))(v33, v20 + v45, v27);
      OUTLINED_FUNCTION_13_16();
      sub_1AC760448(v47, v48, MEMORY[0x1E6968FC8]);
      v49 = sub_1AC79FED8();
      v50 = *(v29 + 8);
      v50(v33, v27);
      v50(v37, v27);
      sub_1AC5C720C(v20, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v49 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    (*(v29 + 8))(v37, v27);
LABEL_18:
    sub_1AC5C720C(v20, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_7(v20 + v45);
  if (!v42)
  {
    goto LABEL_18;
  }

  sub_1AC5C720C(v20, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_21:
  v51 = v43[6];
  v52 = (v26 + v51);
  v53 = *(v26 + v51 + 8);
  v54 = (v24 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_19;
    }

    v56 = *v52 == *v54 && v53 == v55;
    if (!v56 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v55)
  {
    goto LABEL_19;
  }

  sub_1AC6290FC();
  if ((v57 & 1) != 0 && *(v26 + v43[8]) == *(v24 + v43[8]))
  {
    v58 = v43[9];
    v59 = *(v26 + v58);
    v60 = *(v24 + v58);
    if (v59)
    {
      if (!v60)
      {
        goto LABEL_19;
      }

      sub_1AC630858(v59, v60);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v60)
    {
      goto LABEL_19;
    }

    v63 = v43[10];
    v64 = *(v26 + v63);
    v65 = *(v24 + v63);
    if (v64)
    {
      if (!v65)
      {
        goto LABEL_19;
      }

      v66 = sub_1AC629308(v64, v65);

      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v65)
    {
      goto LABEL_19;
    }

    if (*(v26 + v43[11]) == *(v24 + v43[11]))
    {
      sub_1AC6294D8();
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_105();
}

void NormalizingTranscriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_25();
  v24 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v31);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  if (*(v21 + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v35 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  sub_1AC61CB64(v21 + v35[5], v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v24) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v26 + 32))(v30, v34, v24);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_13_16();
    sub_1AC760448(v36, v37, MEMORY[0x1E6968FC0]);
    sub_1AC79FE58();
    (*(v26 + 8))(v30, v24);
  }

  if (*(v21 + v35[6] + 8))
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_50_7();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC633F38();
  sub_1AC7A0E98();
  v38 = *(v21 + v35[9]);
  if (v38)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v20, v38);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v21 + v35[10]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC7A0E98();
  sub_1AC633D0C();
  OUTLINED_FUNCTION_105();
}

uint64_t NormalizingTranscriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  NormalizingTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75E38C(uint64_t a1)
{
  sub_1AC7A0E78();
  NormalizingTranscriber.ModelOptions.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.TranscriptionOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ReportingOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75E528(uint64_t a1)
{
  sub_1AC7A0E78();
  NormalizingTranscriber.ReportingOption.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static NormalizingTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static NormalizingTranscriber.supportedLocale(equivalentTo:)()
{
  v1 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1AC6AEC88;

  return sub_1AC740D54();
}

uint64_t static NormalizingTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t NormalizingTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale, v1);
  return v5;
}

uint64_t sub_1AC75E8FC()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

void static NormalizingTranscriber.Result.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_57_0();
    if (sub_1AC7A06A8())
    {
      v2 = OUTLINED_FUNCTION_39();

      sub_1AC6285F8(v2, v3, v4);
    }
  }
}

void NormalizingTranscriber.Result.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC7A0568();
  OUTLINED_FUNCTION_170();
  sub_1AC7A06E8();
  v6 = OUTLINED_FUNCTION_50_7();

  sub_1AC6336F0(v6, v7, v8);
}

uint64_t NormalizingTranscriber.Result.hashValue.getter()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0(v5, v2, v3);
  return sub_1AC7A0EC8();
}

double sub_1AC75EBB0()
{
  v0.n128_f64[0] = NormalizingTranscriber.Result.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC75EC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t NormalizingTranscriber.muxMultisegmentResults.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_49_1();
  v1 = OUTLINED_FUNCTION_77_0();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DFE8, &qword_1AC7B3810);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v3, &qword_1EB56C348, &qword_1AC7A8820, v4);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC75EDA8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC75EDCC, 0, 0);
}

void sub_1AC75EDCC()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E078, &unk_1AC7B3FA8);
  sub_1AC7A0BA8();
  v2 = 0;
  v45 = v1 + 64;
  v47 = v1;
  OUTLINED_FUNCTION_117_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v46 = v9 + 64;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_57_2();
LABEL_8:
      v13 = v10 | (v2 << 6);
      v14 = (*(v47 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = 33 * v13;
      v18 = *(v47 + 56) + 264 * v13;
      v48 = *v18;
      v49 = *(v18 + 16);
      v50 = *(v18 + 32);
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      v21 = *(v18 + 72);
      v23 = *(v18 + 80);
      v22 = *(v18 + 88);
      v24 = *(v18 + 96);
      v25 = *(v18 + 104);
      v26 = *(v18 + 160);
      v27 = *(v18 + 168);
      v28 = *(v18 + 200);
      v29 = *(v18 + 224);
      v30 = *(v18 + 232);
      *&v51[3] = *(v18 + 108);
      *&v51[19] = *(v18 + 124);
      *&v51[35] = *(v18 + 140);
      v52 = *(v18 + 192);
      v53 = *(v18 + 256);
      v31 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v32 = *(v46 + v31) | (1 << v13);
      v33 = (v3[6] + 16 * v13);
      v34 = *(v18 + 240);
      v35 = *(v18 + 208);
      v36 = *(v18 + 176);
      v37 = *(v18 + 56);
      *(v46 + v31) = v32;
      *v33 = v16;
      v33[1] = v15;
      v38 = v3[7] + 8 * v17;
      *v38 = v48;
      *(v38 + 16) = v49;
      *(v38 + 32) = v50;
      *(v38 + 48) = v19;
      *(v38 + 56) = v37;
      *(v38 + 64) = v20;
      *(v38 + 72) = v21;
      *(v38 + 80) = v23;
      *(v38 + 88) = v22;
      *(v38 + 96) = v24;
      *(v38 + 104) = v25;
      *(v38 + 152) = *&v51[47];
      *(v38 + 137) = *&v51[32];
      *(v38 + 121) = *&v51[16];
      *(v38 + 105) = *v51;
      *(v38 + 160) = v26;
      *(v38 + 168) = v27;
      *(v38 + 176) = v36;
      *(v38 + 192) = v52;
      *(v38 + 200) = v28;
      *(v38 + 208) = v35;
      *(v38 + 224) = v29;
      *(v38 + 232) = v30;
      *(v38 + 240) = v34;
      *(v38 + 256) = v53;
      v39 = v3[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v3[2] = v41;
      v42 = v3;

      sub_1AC63482C(v26, v27);

      v3 = v42;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v11 = v2;
    while (1)
    {
      v2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v8)
      {
        break;
      }

      v12 = *(v45 + 8 * v2);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v6 = (v12 - 1) & v12;
        goto LABEL_8;
      }
    }

    **(v44 + 16) = v3;
    v43 = *(v44 + 8);

    v43();
  }
}

uint64_t static NormalizingTranscriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v75 = *a1;
  v76 = v2;
  v77 = a1[2];
  v3 = *(a1 + 9);
  v64 = *(a1 + 104);
  v4 = *(a1 + 124);
  v69 = *(a1 + 108);
  v70 = v4;
  v71 = *(a1 + 140);
  v60 = *(a1 + 20);
  v61 = *(a1 + 21);
  v62 = *(a1 + 22);
  v5 = *(a1 + 23);
  v56 = *(a1 + 192);
  v52 = *(a1 + 216);
  v53 = *(a1 + 200);
  v51 = *(a1 + 232);
  v50 = *(a1 + 30);
  v42 = *(a1 + 31);
  v44 = *(a1 + 256);
  v6 = a2[1];
  v78 = *a2;
  v79 = v6;
  v80 = a2[2];
  v7 = *(a2 + 9);
  v63 = *(a2 + 104);
  v8 = *(a2 + 140);
  v9 = *(a2 + 108);
  v73 = *(a2 + 124);
  v74 = v8;
  v72 = v9;
  v57 = *(a2 + 20);
  v58 = *(a2 + 21);
  v59 = *(a2 + 22);
  v10 = *(a2 + 23);
  v55 = *(a2 + 192);
  v54 = *(a2 + 26);
  v45 = *(a2 + 25);
  v46 = *(a2 + 27);
  v47 = *(a2 + 28);
  v48 = *(a2 + 232);
  v49 = *(a2 + 30);
  v41 = *(a2 + 31);
  v43 = *(a2 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC6285F8(v3, v7, v11);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628640();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628938();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628F50();
  v16 = v15;
  result = 0;
  if ((v16 & 1) != 0 && v64 == v63)
  {
    if ((sub_1AC7A0548() & 1) == 0)
    {
      return 0;
    }

    if (v60)
    {
      if (v57)
      {
        v18 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v18, v19);
        v20 = OUTLINED_FUNCTION_16_2();
        sub_1AC63482C(v20, v21);
        v22 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v22, v23);
        sub_1AC6305D8();
        if (v24)
        {
          sub_1AC6306C8(v61, v58);
          v26 = v25;
          v27 = OUTLINED_FUNCTION_16_2();
          sub_1AC63486C(v27);

          v28 = OUTLINED_FUNCTION_15();
          sub_1AC63486C(v28);
          result = 0;
          if ((v26 & 1) == 0 || v62 != v59)
          {
            return result;
          }

LABEL_24:
          if (v56)
          {
            if (!v55)
            {
              return 0;
            }
          }

          else
          {
            v38 = v55;
            if (v5 != v10)
            {
              v38 = 1;
            }

            if (v38)
            {
              return 0;
            }
          }

          if (*(&v53 + 1))
          {
            v67[0] = v53;
            v67[1] = v52;
            v68 = v51;
            if (v54)
            {
              v65[0] = v45;
              v65[1] = v54;
              v65[2] = v46;
              v65[3] = v47;
              v66 = v48 & 1;
              v39 = static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v67, v65);
              swift_bridgeObjectRetain_n();

              result = 0;
              if ((v39 & 1) == 0 || v50 != v49)
              {
                return result;
              }

LABEL_38:
              if (v44)
              {
                if (v43)
                {
                  return 1;
                }
              }

              else
              {
                v40 = v43;
                if (v42 != v41)
                {
                  v40 = 1;
                }

                if ((v40 & 1) == 0)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          else if (!v54)
          {

            if (v50 != v49)
            {
              return 0;
            }

            goto LABEL_38;
          }

          return 0;
        }

        v37 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v37);

        v36 = OUTLINED_FUNCTION_15();
LABEL_20:
        sub_1AC63486C(v36);
        return 0;
      }

      v31 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v31, v32);
      sub_1AC63482C(0, v58);
      v33 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v33, v34);
    }

    else
    {
      sub_1AC63482C(0, v61);
      if (!v57)
      {
        sub_1AC63482C(0, v58);
        sub_1AC63486C(0);
        goto LABEL_24;
      }

      v29 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v29, v30);
    }

    v35 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v35);
    v36 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  return result;
}

uint64_t NormalizingTranscriber.MultisegmentResult.hash(into:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *(v6 + 104);
  v8 = *(v6 + 160);
  v17 = *(v6 + 168);
  v18 = *(v6 + 176);
  v20 = *(v6 + 192);
  v21 = *(v6 + 208);
  v22 = *(v6 + 240);
  v15 = *(v6 + 184);
  v16 = *(v6 + 248);
  v23 = *(v6 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  v9 = OUTLINED_FUNCTION_170();
  sub_1AC6336F0(v9, v10, v11);
  sub_1AC633C28();
  OUTLINED_FUNCTION_50_7();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v19);
  sub_1AC7A0568();
  if (v8)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v8);
    sub_1AC634414(a1, v17);
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v20)
  {
    OUTLINED_FUNCTION_80_1();
    if (v21)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)(a1);

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x1B26E9A70](v13);
    if (v21)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v22);
  if (v23)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v16);
}

uint64_t NormalizingTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  NormalizingTranscriber.MultisegmentResult.hash(into:)(v6, v0, v1, v2, v3, v4);
  return sub_1AC7A0EC8();
}

double sub_1AC75F7E8()
{
  v0.n128_f64[0] = NormalizingTranscriber.MultisegmentResult.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC75F830(uint64_t a1)
{
  sub_1AC7A0E78();
  NormalizingTranscriber.MultisegmentResult.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75F86C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC75F880()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1AC75F920;

  return sub_1AC743644();
}

uint64_t sub_1AC75F920()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1AC75FA04()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return static NormalizingTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC75FA8C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v1 + 32) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1AC75FB84, 0, 0);
}

uint64_t sub_1AC75FB84()
{
  v1 = v0[4];
  v2 = v0[2] + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t NormalizingTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);

  sub_1AC760390();

  return v0;
}

uint64_t NormalizingTranscriber.__deallocating_deinit()
{
  NormalizingTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC75FF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32E0;

  return NormalizingTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC75FFE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC6AEC88;

  return sub_1AC75F86C(a1);
}

uint64_t sub_1AC760080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6BB1B8;

  return sub_1AC75FA04();
}

uint64_t sub_1AC7601B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D508;

  return static NormalizingTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC76023C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32DC;

  return static NormalizingTranscriber.supportedLocale(equivalentTo:)();
}

uint64_t sub_1AC76032C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC760390()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1AC7603E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC760448(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AC760494()
{
  result = qword_1EB56DFF0;
  if (!qword_1EB56DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DFF0);
  }

  return result;
}

unint64_t sub_1AC7604EC()
{
  result = qword_1EB56DFF8;
  if (!qword_1EB56DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DFF8);
  }

  return result;
}

unint64_t sub_1AC7605D0()
{
  result = qword_1EB56E018;
  if (!qword_1EB56E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E018);
  }

  return result;
}

unint64_t sub_1AC76066C()
{
  result = qword_1EB56E030;
  if (!qword_1EB56E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E030);
  }

  return result;
}

unint64_t sub_1AC760708()
{
  result = qword_1EB56E048;
  if (!qword_1EB56E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E048);
  }

  return result;
}

unint64_t sub_1AC760760()
{
  result = qword_1EB56E050;
  if (!qword_1EB56E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E050);
  }

  return result;
}

unint64_t sub_1AC7607B8()
{
  result = qword_1EB56E058;
  if (!qword_1EB56E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E058);
  }

  return result;
}

uint64_t sub_1AC760834(uint64_t a1)
{
  *(a1 + 8) = sub_1AC760448(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber, &protocol conformance descriptor for NormalizingTranscriber);
  result = sub_1AC760448(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber, &unk_1AC7B3D34);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC7608D8(uint64_t a1)
{
  result = sub_1AC760448(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber, &unk_1AC7B3D34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC760930(uint64_t a1)
{
  result = sub_1AC760448(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber, &protocol conformance descriptor for NormalizingTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC7609D8(uint64_t a1)
{
  result = sub_1AC79FB18();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NormalizingTranscriber.ModelOptions(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1AC760B34(uint64_t a1)
{
  sub_1AC622E1C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.TranscriptionOption(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC760E8C()
{
  result = qword_1EB56E070;
  if (!qword_1EB56E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E070);
  }

  return result;
}

uint64_t TranscriptionEvaluator.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TranscriptionEvaluator.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1AC760F64()
{
  OUTLINED_FUNCTION_85();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_85_0(v10);

  return sub_1AC76162C();
}

uint64_t sub_1AC760FFC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 96) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 80);

    return MEMORY[0x1EEE6DFA0](sub_1AC761134, v9, 0);
  }
}

uint64_t sub_1AC761134()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v9 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v9;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1AC761238;

  return sub_1AC606220(&unk_1AC7B3FC8, v5);
}

uint64_t sub_1AC761238()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);

    return MEMORY[0x1EEE6DFA0](sub_1AC76136C, v7, 0);
  }

  else
  {

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1AC76136C()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC7613D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC7614CC;

  return sub_1AC7115A0();
}

uint64_t sub_1AC7614CC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1AC761608, 0, 0);
  }
}

uint64_t sub_1AC76164C()
{
  OUTLINED_FUNCTION_72();
  if (*(v0[2] + 112))
  {
    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC63C9C8();
  }
}

uint64_t sub_1AC761754()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 32) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1AC76188C, v9, 0);
  }
}

uint64_t sub_1AC76188C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E080, &unk_1AC7B4040);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v2 + 112) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AC761944, 0, 0);
}

uint64_t sub_1AC761944()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7110B0();
}

uint64_t sub_1AC7619D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC761AD8;
  }

  else
  {
    v8 = sub_1AC761B40;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC761AD8()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC761B40()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC761BA8, v1, 0);
}

uint64_t sub_1AC761BA8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);

  result = *(v1 + 112);
  if (result)
  {
    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC761C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC761D14;

  return sub_1AC7613D4(a1);
}

uint64_t sub_1AC761D14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t TranscriptionEvaluator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TranscriptionEvaluator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of TranscriptionEvaluator.evaluateMessagesContext(_:recognizedText:correctedText:asrID:speechProfilePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 104) + **(*v8 + 104));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  OUTLINED_FUNCTION_85_0(v18);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1AC762044(uint64_t a1, uint64_t a2)
{
  v3 = SFAnalyticsEventTypeGetName(a1);
  if (!v3)
  {
    sub_1AC79FF68();
    v3 = sub_1AC79FF58();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v6[4] = sub_1AC762C20;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AC7623B0;
  v6[3] = &block_descriptor_19;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

void sub_1AC762148(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E088, &unk_1AC7B4088);
    v2 = sub_1AC7A0BC8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_1AC5CFF64(*(a1 + 56) + 32 * v9, v26);
    *&v25 = v11;
    *(&v25 + 1) = v12;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v13 = v25;
    sub_1AC5C3968(v24, v23);
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);

    if (!swift_dynamicCast())
    {

      return;
    }

    v5 &= v5 - 1;
    v14 = sub_1AC6E0808();
    v15 = v14;
    if (v16)
    {
      *(v2[6] + 16 * v14) = v13;

      v17 = v2[7];
      v18 = *(v17 + 8 * v15);
      *(v17 + 8 * v15) = v22;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v2[6] + 16 * v14) = v13;
      *(v2[7] + 8 * v14) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_22;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1AC7623B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v4 = sub_1AC79FE18();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1AC76244C(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7B4050;
  *(inited + 32) = sub_1AC79FF68();
  *(inited + 40) = v3;
  v5 = MEMORY[0x1E69E6158];
  v27 = *a1;
  v4 = v27;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 80) = sub_1AC79FF68();
  *(inited + 88) = v6;
  v26 = a1[1];
  v7 = v26;
  *(inited + 120) = v5;
  *(inited + 96) = v7;
  *(inited + 128) = sub_1AC79FF68();
  *(inited + 136) = v8;
  v9 = MEMORY[0x1E69E6370];
  v10 = *(a1 + 48);
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v10;
  *(inited + 176) = sub_1AC79FF68();
  *(inited + 184) = v11;
  v25 = *(a1 + 56);
  v12 = v25;
  *(inited + 216) = v5;
  *(inited + 192) = v12;
  *(inited + 224) = sub_1AC79FF68();
  *(inited + 232) = v13;
  v24 = a1[2];
  v14 = v24;
  *(inited + 264) = v5;
  *(inited + 240) = v14;
  *(inited + 272) = sub_1AC79FF68();
  *(inited + 280) = v15;
  v16 = *(a1 + 72);
  *(inited + 312) = v9;
  *(inited + 288) = v16;
  *(inited + 320) = sub_1AC79FF68();
  *(inited + 328) = v17;
  v18 = *(a1 + 73);
  *(inited + 360) = v9;
  *(inited + 336) = v18;
  *(inited + 368) = sub_1AC79FF68();
  *(inited + 376) = v19;
  v20 = *(a1 + 74);
  *(inited + 408) = v9;
  *(inited + 384) = v20;
  *(inited + 416) = sub_1AC79FF68();
  *(inited + 424) = v21;
  *(inited + 456) = MEMORY[0x1E69E6530];
  *(inited + 432) = 2;
  sub_1AC762BC4(&v27, v23);
  sub_1AC762BC4(&v26, v23);
  sub_1AC762BC4(&v25, v23);
  sub_1AC762BC4(&v24, v23);
  return sub_1AC79FE38();
}

uint64_t sub_1AC762648(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC76244C(a1);
  v6 = sub_1AC79FF68();
  v8 = v7;
  v13 = MEMORY[0x1E69E6158];
  v11 = a2;
  v12 = a3;
  OUTLINED_FUNCTION_2_24(v6, v7);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1AC6E114C(v10, v6, v8);

  sub_1AC762044(100, v5);
}

uint64_t sub_1AC762704(__int128 *a1)
{
  sub_1AC76244C(a1);
  v1 = sub_1AC79FF68();
  OUTLINED_FUNCTION_2_24(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_19(isUniquelyReferenced_nonNull_native, v4, v5, v6);

  v7 = sub_1AC79FF68();
  v9 = v8;
  OUTLINED_FUNCTION_2_24(v7, v8);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  sub_1AC6E114C(v10, v7, v9);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v11, v12);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v13);

  sub_1AC762044(103, v15);
}

uint64_t sub_1AC762838(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AC76244C(a1);
  v5 = sub_1AC79FF68();
  OUTLINED_FUNCTION_2_24(v5, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_19(isUniquelyReferenced_nonNull_native, v8, v9, v10);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  v16 = sub_1AC5CF764(0, &qword_1EB56AA90, 0x1E696AEC0);
  OUTLINED_FUNCTION_2_24(v16, v11);
  v12 = a4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v13);

  sub_1AC762044(105, v15);
}

uint64_t sub_1AC762938(__int128 *a1)
{
  sub_1AC76244C(a1);
  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v1, v2);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v3);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v4, v5);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v6);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v7, v8);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v9);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v10, v11);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v12);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v13, v14);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v15);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v16, v17);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v18);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v19, v20);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v21);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_2_24(v22, v23);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v24);

  sub_1AC762044(106, v26);
}

void OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1AC6E114C(va, v4, v5);
}

void sub_1AC762C50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  if (!a1)
  {
    goto LABEL_5;
  }

  v5 = v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock(v5);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v7 = sub_1AC79FDE8();
  __swift_project_value_buffer(v7, qword_1ED9386C8);
  if (v6)
  {
    v14 = sub_1AC79FDC8();
    v15 = sub_1AC7A05F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_150();
      v17 = OUTLINED_FUNCTION_48();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, 0x80000001AC7B7630, &v20);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v18, v19, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v8 = v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked));
    *(v8 + 8) = a1;

    *(v8 + 16) = 1;
    os_unfair_lock_unlock(v8);
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v1;

    sub_1AC659B08();
  }
}

uint64_t EndpointDetector.__allocating_init(taskHint:detectionOptions:)(unsigned __int8 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  EndpointDetector.init(taskHint:detectionOptions:)(a1, a2);
  return v4;
}

uint64_t EndpointDetector.results.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech16EndpointDetector__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t EndpointDetector.init(taskHint:detectionOptions:)(unsigned __int8 *a1, __int128 *a2)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E090, &qword_1AC7B4098);
  OUTLINED_FUNCTION_40();
  v45 = v5;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  OUTLINED_FUNCTION_40();
  v46 = v8;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_16(v10, v42);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E098, &unk_1AC7B40A0);
  v12 = OUTLINED_FUNCTION_167(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v18);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = *a1;
  v42 = *a2;
  v23 = *(a2 + 2);
  v24 = *(a2 + 24);
  v25 = *(a2 + 25);
  v26 = (v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  *v26 = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0) + 28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A8, &qword_1AC7B40B8);
  OUTLINED_FUNCTION_167(v32);
  bzero(v26 + v31, *(v33 + 64));
  sub_1AC763334(v21, v26 + v31);
  v34 = v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
  *(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked) = 0;
  if (v22 == 16)
  {
    v35 = 0;
  }

  else
  {
    v35 = v22;
  }

  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  *(v2 + 16) = v35;
  *(v2 + 20) = v42;
  *(v2 + 36) = v23;
  *(v2 + 44) = v24;
  *(v2 + 45) = v25;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v49 = v17;
  (*(v45 + 104))(v44, *MEMORY[0x1E69E8790], v47);
  v40 = v43;
  sub_1AC7A03B8();
  (*(v46 + 32))(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__results, v40, v48);
  sub_1AC5D1E4C(v17, v15, &qword_1EB56E098, &unk_1AC7B40A0);
  result = __swift_getEnumTagSinglePayload(v15, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v36 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_resultsBuilder, v15, v36);
    sub_1AC5C720C(v17, &qword_1EB56E098, &unk_1AC7B40A0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC763334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC7633A4(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56E098, &unk_1AC7B40A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t EndpointDetector.__allocating_init(taskHint:detectionOptions:)(uint64_t a1, uint64_t a2)
{
  v7 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 25);
  sub_1AC6F4A30(a1, &v12);
  v8 = v7;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v5 = swift_allocObject();
  EndpointDetector.init(taskHint:detectionOptions:)(&v12, &v8);
  return v5;
}

uint64_t EndpointDetector.availableCompatibleAudioFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t EndpointDetector.availableCompatibleAudioFormats(clientID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t sub_1AC7635DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC763600, 0, 0);
}

uint64_t sub_1AC763600()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC763630, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC763630()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765BA0(*(v0 + 32), *(v0 + 24), &off_1F212E2C8, sub_1AC765C74);

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

uint64_t sub_1AC7636B0(char *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  swift_unknownObjectRetain();
  v4 = sub_1AC763724(&a1[v3]);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1AC763724(uint64_t a1)
{
  v3 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v4 = *(a1 + *(v3 + 20));
  LOBYTE(lhs.value) = v1[16];
  v5 = TaskHint.preferredModelTaskNames.getter();
  v6 = sub_1AC765948(v5, v4);

  v7 = a1 + *(v3 + 40);
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 25);
  v12 = HIDWORD(v8);
  v13 = MEMORY[0x1E6960CC0];
  if (v11 & 1) != 0 || (*(v7 + 24))
  {
    if ((v6 & 1) == 0)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }

    v53 = *(v7 + 16);
    v54 = *v7;
    v55 = 0;
    v56 = v6;
    goto LABEL_12;
  }

  if (v1[45] & 1) != 0 || (v1[44])
  {
    v15 = *MEMORY[0x1E6960CC0];
    v16 = *(MEMORY[0x1E6960CC0] + 8);
    v17 = *(MEMORY[0x1E6960CC0] + 12);
    v18 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    OUTLINED_FUNCTION_13_17();
  }

  rhs.epoch = v18;
  lhs.value = v9;
  lhs.timescale = v8;
  lhs.flags = v12;
  lhs.epoch = v10;
  rhs.value = v15;
  rhs.timescale = v16;
  rhs.flags = v17;
  CMTimeSubtract(&v57, &lhs, &rhs);
  sub_1AC7A0728();
  v20 = fabs(v19);
  if (v6)
  {
    v55 = v20 <= 0.001;
    v56 = v6;
    v53 = v10;
    v54 = v9;
LABEL_12:
    lhs.value = 0;
    *&lhs.timescale = 0xE000000000000000;
    sub_1AC7A09C8();

    lhs.value = 0xD000000000000013;
    *&lhs.timescale = 0x80000001AC7BAED0;
    LOBYTE(rhs.value) = v1[16];
    TaskHint.preferredModelTaskNames.getter();
    v21 = MEMORY[0x1B26E8D20]();
    v23 = v22;

    MEMORY[0x1B26E8C40](v21, v23);

    OUTLINED_FUNCTION_16_7();
    v24 = sub_1AC7A0458();
    MEMORY[0x1B26E8C40](v24);

    value = lhs.value;
    v26 = *&lhs.timescale;
    v14 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v51;
    }

    v27 = *(v14 + 16);
    if (v27 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v52;
    }

    *(v14 + 16) = v27 + 1;
    v28 = v14 + 16 * v27;
    *(v28 + 32) = value;
    *(v28 + 40) = v26;
    if (v55)
    {
      v29 = 1;
      v6 = v56;
      goto LABEL_32;
    }

    v6 = v56;
    v10 = v53;
    v9 = v54;
LABEL_19:
    lhs.value = 0;
    *&lhs.timescale = 0xE000000000000000;
    sub_1AC7A09C8();
    rhs.value = lhs.value;
    *&rhs.timescale = *&lhs.timescale;
    MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7BAEB0);
    if (v1[45] & 1) != 0 || (v1[44])
    {
      v30 = *v13;
      v31 = *(v13 + 8);
      v32 = *(v13 + 12);
      v33 = *(v13 + 16);
    }

    else
    {
      OUTLINED_FUNCTION_13_17();
    }

    lhs.value = v30;
    lhs.timescale = v31;
    lhs.flags = v32;
    lhs.epoch = v33;
    type metadata accessor for CMTime(0);
    sub_1AC7A0AF8();
    OUTLINED_FUNCTION_16_7();
    if (v11 & 1) != 0 || (*(v7 + 24))
    {
      v9 = *v13;
      LODWORD(v8) = *(v13 + 8);
      v34 = *(v13 + 12);
      v10 = *(v13 + 16);
    }

    else
    {
      v34 = HIDWORD(v8);
    }

    lhs.value = v9;
    lhs.timescale = v8;
    lhs.flags = v34;
    lhs.epoch = v10;
    sub_1AC7A0AF8();
    v35 = rhs.value;
    v36 = *&rhs.timescale;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v49;
    }

    v37 = *(v14 + 16);
    if (v37 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v50;
    }

    v29 = 0;
    *(v14 + 16) = v37 + 1;
    v38 = v14 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    goto LABEL_32;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v20 > 0.001)
  {
    goto LABEL_19;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {

    v29 = 1;
    return v29 & (v6 ^ 1u);
  }

  v29 = 1;
LABEL_32:
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v39 = sub_1AC79FDE8();
  __swift_project_value_buffer(v39, qword_1ED9386C8);

  v40 = sub_1AC79FDC8();
  v41 = sub_1AC7A05E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_150();
    v43 = OUTLINED_FUNCTION_48();
    lhs.value = v43;
    *v42 = 136315138;
    rhs.value = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC5C8BE0(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0, MEMORY[0x1E69E6310]);
    v44 = sub_1AC79FEA8();
    v46 = v45;

    v47 = sub_1AC5CFE74(v44, v46, &lhs.value);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1AC5BC000, v40, v41, "EndpointDetector.isWorkerUsable: Worker not usable because %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  return v29 & (v6 ^ 1u);
}

uint64_t sub_1AC763CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 45) & 1) != 0 || (*(v2 + 44))
  {
    v10 = *MEMORY[0x1E6960CC0];
    LODWORD(v11) = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v12) = *(MEMORY[0x1E6960CC0] + 12);
    v13 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    v10 = *(v2 + 20);
    v11 = *(v2 + 28);
    v13 = *(v2 + 36);
    v12 = HIDWORD(v11);
  }

  v14 = a1 + *(v6 + 40);
  if (*(v14 + 25) & 1) != 0 || (*(v14 + 24))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v15 = sub_1AC79FDE8();
    __swift_project_value_buffer(v15, qword_1ED9386C8);
    v16 = sub_1AC79FDC8();
    v17 = sub_1AC7A05E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AC5BC000, v16, v17, "EndpointDetector.makeWorkerUsable: no detection options, making usable", v18, 2u);
      OUTLINED_FUNCTION_70();
    }

    sub_1AC61B924(a1, v9);
    v19 = *(v3 + 36);
    v20 = *(v3 + 44);
    v21 = *(v3 + 45);
    v22 = &v9[*(v6 + 40)];
    *v22 = *(v3 + 20);
    *(v22 + 2) = v19;
    v22[24] = v20;
    v22[25] = v21;
    sub_1AC61B988(v9, a2);
  }

  else
  {
    v28 = *v14;
    v29 = *(v14 + 8);
    v30 = *(v14 + 16);
    rhs.epoch = v13;
    lhs.value = v28;
    *&lhs.timescale = v29;
    lhs.epoch = v30;
    rhs.value = v10;
    rhs.timescale = v11;
    rhs.flags = v12;
    CMTimeSubtract(&v41, &lhs, &rhs);
    sub_1AC7A0728();
    if (fabs(v31) <= 0.001)
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3(&off_1ED937D60);
      }

      v36 = sub_1AC79FDE8();
      __swift_project_value_buffer(v36, qword_1ED9386C8);
      v37 = sub_1AC79FDC8();
      v38 = sub_1AC7A05E8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1AC5BC000, v37, v38, "EndpointDetector.makeWorkerUsable: already usable", v39, 2u);
        OUTLINED_FUNCTION_70();
      }

      sub_1AC61B924(a1, a2);
    }

    else
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3(&off_1ED937D60);
      }

      v32 = sub_1AC79FDE8();
      __swift_project_value_buffer(v32, qword_1ED9386C8);
      v33 = sub_1AC79FDC8();
      v34 = sub_1AC7A05E8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1AC5BC000, v33, v34, "EndpointDetector.makeWorkerUsable: detectAfterTime different, cannot make usable", v35, 2u);
        OUTLINED_FUNCTION_70();
      }
    }
  }

  OUTLINED_FUNCTION_10_21();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_1AC764010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v4);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_16(v6, v64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v11 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  v20 = (v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0);
  sub_1AC5D1E4C(v20 + *(v21 + 28), v10, &qword_1EB56BFD8, &qword_1AC7A83F0);
  os_unfair_lock_unlock(v20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1AC5C720C(v10, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v22 = v17;
  (*(v13 + 32))(v19, v10, v11);
  LOBYTE(v81) = *(v2 + 16);
  v23 = TaskHint.preferredModelTaskNames.getter();
  if (!v23[2])
  {
    while (1)
    {

      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_3(&off_1ED937D60);
LABEL_11:
      v57 = sub_1AC79FDE8();
      __swift_project_value_buffer(v57, qword_1ED9386C8);
      v58 = sub_1AC79FDC8();
      v59 = sub_1AC7A05F8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_150();
        v61 = OUTLINED_FUNCTION_48();
        v81 = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_1AC5CFE74(0xD0000000000000B2, 0x80000001AC7BAEF0, &v81);
        OUTLINED_FUNCTION_1(&dword_1AC5BC000, v62, v63, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v61);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      __break(1u);
    }
  }

  v24 = v23[4];
  v25 = v23[5];

  v75 = v22;
  v76 = v13;
  v26 = *(v13 + 16);
  v77 = v19;
  v74 = v11;
  v26(v22, v19, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  *(inited + 32) = v24;
  *(inited + 40) = v25;
  sub_1AC7244B8(inited, v28, v29, v30, v31, v32, v33, v34, v64, v65, v67, v68, v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80[0], v80[1], v80[2], v80[3], v80[4], v80[5]);
  v71 = v35;
  v36 = *(v2 + 16);
  v65 = (v36 > 0xF) | (0x311Cu >> v36);
  v38 = v36 == 1 || v36 == 6;
  v66 = v38;
  type metadata accessor for TranscriberCommon.ModelOptions(0);
  v39 = v78;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v69 = *(v2 + 20);
  v68 = *(v2 + 36);
  v44 = *(v2 + 44);
  LODWORD(v67) = *(v2 + 45);
  HIDWORD(v67) = v44;
  v45 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v46 = a1 + v45[10];
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 24) = 256;
  *(v46 + 16) = 0;
  v47 = v45[11];
  *(a1 + v47) = 3;
  v48 = MEMORY[0x1E69E7CD0];
  v72 = v45[14];
  *(a1 + v72) = MEMORY[0x1E69E7CD0];
  v73 = v45[15];
  *(a1 + v73) = v48;
  v26(a1, v22, v11);
  *(a1 + v45[5]) = v71;
  *(a1 + v45[6]) = v65 & 1;
  *(a1 + v45[7]) = v66;
  *(a1 + v45[8]) = 0;
  sub_1AC5D1E4C(v39, a1 + v45[9], &qword_1EB56C318, &unk_1AC7A8790);
  *v46 = v69;
  *(v46 + 16) = v68;
  v49 = v67;
  *(v46 + 24) = BYTE4(v67);
  *(v46 + 25) = v49;
  *(a1 + v47) = 3;
  *(a1 + v45[13]) = v48;
  v81 = v48;
  v79 = &unk_1F212FA38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA40, qword_1AC7B2AA0);
  sub_1AC5C8BE0(&qword_1EB56ABF0, &qword_1EB56CA38, &unk_1AC7AB4D0, MEMORY[0x1E69E6518]);
  sub_1AC5C8BE0(&qword_1EB56AC90, &qword_1EB56CA40, qword_1AC7B2AA0, MEMORY[0x1E69E6340]);
  sub_1AC6AA608();
  v50 = sub_1AC7A04B8();
  v51 = a1 + v45[12];
  *v51 = v50 & 1;
  *(v51 + 8) = 0;
  sub_1AC617030(&unk_1F212FA60, v48);
  *(a1 + v72) = v52;
  sub_1AC6170AC(&unk_1F212F5E8, v48);
  *(a1 + v73) = v53;
  sub_1AC5C720C(v78, &qword_1EB56C318, &unk_1AC7A8790);
  v54 = *(v76 + 8);
  v55 = v74;
  v54(v75, v74);
  return (v54)(v77, v55);
}

uint64_t EndpointDetector.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC5CB404();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

__n128 EndpointDetector.ModuleOutput.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t EndpointDetector.ModuleOutput.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v9.start.value = 0;
  *&v9.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v10 = *&v9.start.value;
  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  v3 = *(v0 + 16);
  *&v9.start.value = *v0;
  *&v9.start.epoch = v3;
  *&v9.duration.timescale = *(v0 + 32);
  v4 = CMTimeRangeCopyDescription(0, &v9);
  if (!v4)
  {
    v4 = sub_1AC79FF58();
  }

  v9.start.value = v4;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6F4364726F77202CLL, 0xEC00000020746E75);
  v9.start.value = v1;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v6);

  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40](0xD000000000000010);
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0x436573756170202CLL, 0xEE002073746E756FLL);
  v7 = MEMORY[0x1B26E8D20](v2, v5);
  MEMORY[0x1B26E8C40](v7);

  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v10;
}

double sub_1AC7648FC@<D0>(_OWORD *a1@<X8>)
{
  EndpointDetector.ModuleOutput.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

Speech::EndpointDetector::DetectionOptions __swiftcall EndpointDetector.DetectionOptions.init(detectAfterTime:)(Speech::EndpointDetector::DetectionOptions detectAfterTime)
{
  *v1 = detectAfterTime.detectAfterTime.value.value;
  *(v1 + 8) = *&detectAfterTime.detectAfterTime.value.timescale;
  *(v1 + 16) = detectAfterTime.detectAfterTime.value.epoch;
  *(v1 + 24) = detectAfterTime.detectAfterTime.is_nil;
  return detectAfterTime;
}

BOOL static EndpointDetector.DetectionOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    return (*(a2 + 24) & 1) == 0 && (sub_1AC7A06A8() & 1) != 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

uint64_t EndpointDetector.DetectionOptions.hash(into:)(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    return sub_1AC7A0E98();
  }

  sub_1AC7A0E98();

  return sub_1AC7A06E8();
}

uint64_t EndpointDetector.DetectionOptions.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v1 != 1)
  {
    sub_1AC7A06E8();
  }

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC764AE4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v2 != 1)
  {
    sub_1AC7A06E8();
  }

  return sub_1AC7A0EC8();
}

void sub_1AC764B64(uint64_t a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0C0, &unk_1AC7B42E0);
  OUTLINED_FUNCTION_40();
  v14 = v13;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = sub_1AC7A0558();
  v19 = a2[1];
  __src[0] = *a2;
  __src[1] = v19;
  __src[2] = a2[2];
  *&__src[3] = v18;
  *(&__src[3] + 1) = v20;
  *&__src[4] = v21;
  *(&__src[4] + 1) = a1;
  *&__src[5] = a4;
  *(&__src[5] + 1) = a3;
  *&__src[6] = a5;
  *(&__src[6] + 1) = a6;
  memcpy(v34, __src, sizeof(v34));

  sub_1AC73FF68(__src, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  sub_1AC7A0388();
  (*(v14 + 8))(v17, v12);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v22 = sub_1AC79FDE8();
  __swift_project_value_buffer(v22, qword_1ED9386C8);
  sub_1AC73FF68(__src, v34);
  v23 = sub_1AC79FDC8();
  v24 = sub_1AC7A05E8();
  sub_1AC73FFC4(__src);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_150();
    v26 = OUTLINED_FUNCTION_48();
    v32 = v26;
    *v25 = 136315138;
    memcpy(v33, __src, sizeof(v33));
    v27 = EndpointDetector.ModuleOutput.description.getter();
    v29 = v28;
    memcpy(v34, v33, sizeof(v34));
    sub_1AC73FFC4(v34);
    v30 = sub_1AC5CFE74(v27, v29, &v32);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v23, v24, "EndpointDetector: Yielded result %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC73FFC4(__src);
  }
}

uint64_t sub_1AC764E1C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  return sub_1AC7A0398();
}

uint64_t EndpointDetector.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0);
  sub_1AC5C720C(v1 + *(v2 + 28), &qword_1EB56BFD8, &qword_1AC7A83F0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  v3 = OBJC_IVAR____TtC6Speech16EndpointDetector__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  OUTLINED_FUNCTION_80();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC6Speech16EndpointDetector_resultsBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  OUTLINED_FUNCTION_80();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t EndpointDetector.__deallocating_deinit()
{
  EndpointDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC764FE0()
{
  v1 = EndpointDetector.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC76503C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC7650C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

unint64_t sub_1AC7651D8()
{
  result = qword_1EB56E0B8;
  if (!qword_1EB56E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E0B8);
  }

  return result;
}

uint64_t sub_1AC765254(uint64_t a1)
{
  *(a1 + 8) = sub_1AC7653C4(&qword_1EB56B038, type metadata accessor for EndpointDetector, &protocol conformance descriptor for EndpointDetector);
  result = sub_1AC7653C4(&qword_1EB56B030, type metadata accessor for EndpointDetector, &unk_1AC7B41E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for EndpointDetector(uint64_t a1)
{
  result = qword_1EB56B020;
  if (!qword_1EB56B020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC765324(uint64_t a1)
{
  result = sub_1AC7653C4(&qword_1EB56B030, type metadata accessor for EndpointDetector, &unk_1AC7B41E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC7653C4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1AC765414(uint64_t a1)
{
  sub_1AC765598(319);
  if (v1 <= 0x3F)
  {
    sub_1AC7655FC(319, &qword_1EB56AC30, MEMORY[0x1E69E87C8]);
    if (v2 <= 0x3F)
    {
      sub_1AC7655FC(319, &qword_1EB56AC68, MEMORY[0x1E69E87A0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1AC765598(uint64_t a1)
{
  if (!qword_1EB56B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
    v1 = sub_1AC79FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB56B440);
    }
  }
}

void sub_1AC7655FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for EndpointDetector.ModuleOutput, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for EndpointDetector.ModuleOutput(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for EndpointDetector.ModuleOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EndpointDetector.DetectionOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EndpointDetector.DetectionOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1AC765948(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1AC7A0E78();

  sub_1AC7A0048();
  v11 = sub_1AC7A0EC8();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1AC7A0D38();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_1AC765A80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC7635DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC765BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 24) = a3;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
  swift_beginAccess();

  sub_1AC703CBC();
  v9 = *(*(a2 + v8) + 16);
  sub_1AC703DF4(v9);
  v10 = *(a2 + v8);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = a4;
  *(v11 + 40) = v7;
  *(a2 + v8) = v10;
  swift_endAccess();
}

uint64_t sub_1AC765C80()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v6);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = *v3;
  *(v1 + 144) = *(v3 + 16);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1AC765D34()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 56) == 1)
  {
    v1 = objc_allocWithZone(_SFLanguageDetectorOptions);
    v2 = 0;
    v3 = 10;
    v4 = 1;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(v0 + 64);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    v7 = *(v0 + 144);
    objc_allocWithZone(_SFLanguageDetectorOptions);

    v4 = v7;
    v3 = v6;
    v5 = (v7 >> 8) & 1;
  }

  *(v0 + 72) = sub_1AC76BDE8(v2, v3, v4, v5);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  sub_1AC6B87D0();
  *(v0 + 80) = v10;
  sub_1AC5D1E4C(v9, v8, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v11 = type metadata accessor for SpeechAnalyzer.Options(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
  v13 = *(v0 + 48);
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(*(v0 + 48), &qword_1EB56C7D0, &qword_1AC7ACB40);
    v14 = 0;
  }

  else
  {
    v14 = sub_1AC6D99DC();
    sub_1AC76C050(v13);
  }

  *(v0 + 88) = v14;
  if (qword_1ED938050 != -1)
  {
    swift_once();
  }

  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_85_0(v15);
  OUTLINED_FUNCTION_170();

  sub_1AC63B4A4();
}

uint64_t sub_1AC765F0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v2 + 104) = v1;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC766014()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E108, &unk_1AC7B45D0);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1AC7660D4;

  return sub_1AC71C840();
}

uint64_t sub_1AC7660D4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *v1;
  OUTLINED_FUNCTION_18();
  *v3 = v2;
  *(v4 + 136) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC7661D4()
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v1 = sub_1AC79FDE8();
  __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[15];
  v11 = v0[10];
  v18 = v0[11];
  v12 = v0[9];
  v13 = v0[5];
  v14 = v0[3];

  sub_1AC5D1E4C(v14, v13, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v15 = swift_allocObject();
  sub_1AC767888(v10, v13);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1AC76634C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC7663E8()
{
  OUTLINED_FUNCTION_72();

  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC766470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  sub_1AC5D1E4C(a2, &v20 - v14, &qword_1EB56BE70, &qword_1AC7A8270);
  v15 = *(*v2 + 96);
  OUTLINED_FUNCTION_235();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v11, v2 + v15, v4);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v6 + 32))(v18 + v17, v11, v4);
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1AC659DBC();
}

uint64_t sub_1AC766664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1AC5D1E4C(a2, &v16 - v10, &qword_1EB56BE70, &qword_1AC7A8270);
  v11 = *(*v2 + 96);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v2 + v11, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  sub_1AC659DBC();
}

uint64_t sub_1AC76688C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + 120);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6E7954(v1);
}

uint64_t sub_1AC766930()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1AC766A20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E148, &unk_1AC7B4640);
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9F0, &qword_1AC7AB3B0);
  OUTLINED_FUNCTION_40();
  v8 = v7;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  OUTLINED_FUNCTION_40();
  v14 = v13;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E150, &qword_1AC7B4650);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v3 + 8))(v6, v1);
  (*(v14 + 32))(v0 + *(*v0 + 96), v17, v12);
  (*(v8 + 32))(v0 + *(*v0 + 104), v11, v20);
  return v0;
}

uint64_t sub_1AC766C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E128, &qword_1AC7B4608);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA00, &qword_1AC7B4610);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E130, &qword_1AC7B4618);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v2 + 8))(v4, v1);
  (*(v9 + 32))(v0 + *(*v0 + 96), v11, v8);
  (*(v5 + 32))(v0 + *(*v0 + 104), v7, v14);
  return v0;
}

uint64_t sub_1AC766F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E140, &qword_1AC7B4638);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC766FEC, 0, 0);
}

uint64_t sub_1AC766FEC()
{
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1AC7670A0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC767188()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[6];
  v0[13] = v1;
  v0[14] = v2;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1AC7672D8, Strong, 0);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_170();
      sub_1AC5C3958(v7, v8);
      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_3_12(v9);
      *v10 = v11;
      v10[1] = sub_1AC7670A0;
      OUTLINED_FUNCTION_138();

      return MEMORY[0x1EEE6D9C8](v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_12_10();
    v5(v4);

    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC7672D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC76733C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C3958(*(v0 + 104), *(v0 + 112));

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_12(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0(v2);

  return MEMORY[0x1EEE6D9C8](v4);
}

uint64_t sub_1AC7673D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E120, &qword_1AC7B4600);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC7674A0, 0, 0);
}

uint64_t sub_1AC7674A0()
{
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1AC767554()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC76763C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[6];
  v0[13] = v1;
  v0[14] = v2;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1AC76778C, Strong, 0);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_170();
      sub_1AC5C3958(v7, v8);
      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_3_12(v9);
      *v10 = v11;
      v10[1] = sub_1AC767554;
      OUTLINED_FUNCTION_138();

      return MEMORY[0x1EEE6D9C8](v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_12_10();
    v5(v4);

    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC76778C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC7677F0()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C3958(*(v0 + 104), *(v0 + 112));

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_12(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0(v2);

  return MEMORY[0x1EEE6D9C8](v4);
}

uint64_t sub_1AC767888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v6);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v11 = OUTLINED_FUNCTION_167(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v47 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 225) = 0u;
  v25 = MEMORY[0x1E69E7CC0];
  *(v2 + 248) = MEMORY[0x1E69E7CC0];
  *(v2 + 256) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E110, &qword_1AC7B45E0);
  swift_allocObject();
  *(v2 + 264) = sub_1AC766C88();
  *(v2 + 120) = a1;
  v48 = a2;
  sub_1AC5D1E4C(a2, v9, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v26 = type metadata accessor for SpeechAnalyzer.Options(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v26);
  v49 = a1;
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v9, &qword_1EB56C7D0, &qword_1AC7ACB40);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    sub_1AC7A0338();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_1AC5C720C(v16, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    (*(v19 + 16))(v16, v9, v17);

    sub_1AC76C050(v9);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    (*(v19 + 32))(v24, v16, v17);
  }

  v28 = *(v19 + 16);
  v28(v14, v24, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  sub_1AC766664(v2, v14);
  sub_1AC5C720C(v14, &qword_1EB56BE70, &qword_1AC7A8270);
  v29 = v47;
  if (qword_1ED937ED8 != -1)
  {
    swift_once();
  }

  v30 = qword_1ED938608;

  sub_1AC76BE94(v31, v30, &off_1F2138ED0);

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v32 = sub_1AC79FDE8();
  __swift_project_value_buffer(v32, qword_1ED9386C8);
  v28(v29, v24, v17);
  v33 = sub_1AC79FDC8();
  v34 = sub_1AC7A05D8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_150();
    v36 = OUTLINED_FUNCTION_48();
    v50 = v36;
    *v35 = 136315138;
    sub_1AC76C0AC(&qword_1EB56ACB0, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v37 = sub_1AC7A0CC8();
    v38 = v29;
    v40 = v39;
    v46 = v24;
    v41 = *(v19 + 8);
    v41(v38, v17);
    v42 = sub_1AC5CFE74(v37, v40, &v50);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1AC5BC000, v33, v34, "LanguageDetectorWorker: Operating at priority %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    sub_1AC5C720C(v48, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v41(v46, v17);
  }

  else
  {

    sub_1AC5C720C(v48, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v43 = *(v19 + 8);
    v43(v29, v17);
    v43(v24, v17);
  }

  return v3;
}

uint64_t sub_1AC767E3C()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 264) = v4;
  *(v1 + 272) = v0;
  *(v1 + 256) = v5;
  v6 = v4[1];
  *(v1 + 280) = *v4;
  *(v1 + 296) = v6;
  *(v1 + 312) = v4[2];
  v7 = sub_1AC79FDE8();
  *(v1 + 328) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v1 + 336) = v8;
  *(v1 + 344) = swift_task_alloc();
  memcpy((v1 + 16), v3, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC767F1C, v0, 0);
}

void sub_1AC767F1C()
{
  v41 = v0;
  v1 = *(v0 + 272);
  v2 = v1[23];
  if (v2)
  {
    *(v0 + 392) = *(v2 + 16);
    v3 = off_1ED937D60;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v4 = __swift_project_value_buffer(*(v0 + 328), qword_1ED9386C8);
    v5 = OUTLINED_FUNCTION_27_13(v4);
    v6 = [v5 channelCount];

    if (v6 == 1)
    {
      v7 = OUTLINED_FUNCTION_37_14();
      v8(v7);
      v9 = OUTLINED_FUNCTION_33_12();
      v10 = [v9 commonFormat];

      if (v10 == 3 && OUTLINED_FUNCTION_45_13())
      {
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        v11 = OUTLINED_FUNCTION_45_13();
        v12 = OUTLINED_FUNCTION_33_12();
        v13 = [v12 channelCount];

        if (v13)
        {
          v14 = *v11;
        }

        else
        {
          v14 = 0;
        }

        *(v0 + 408) = sub_1AC5CFAB8(v14, [v3 frameLength]);
        *(v0 + 416) = v20;
        v21 = swift_task_alloc();
        *(v0 + 424) = v21;
        *v21 = v0;
        OUTLINED_FUNCTION_10_22(v21);

        sub_1AC6CD264();
        return;
      }

      v22 = sub_1AC79FDC8();
      v23 = sub_1AC7A05F8();
      v24 = OUTLINED_FUNCTION_366(v23);
      v26 = *(v0 + 336);
      v25 = *(v0 + 344);
      v27 = *(v0 + 328);
      if (v24)
      {
        v28 = OUTLINED_FUNCTION_150();
        v29 = OUTLINED_FUNCTION_48();
        v40 = v29;
        *v28 = 136315138;
        v30 = OUTLINED_FUNCTION_31_14();
        *(v28 + 4) = sub_1AC5CFE74(v30, v31, &v40);
        OUTLINED_FUNCTION_59(&dword_1AC5BC000, v32, v33, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v29);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      (*(v26 + 8))(v25, v27);
      __break(1u);
    }

    v34 = sub_1AC79FDC8();
    v35 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_366(v35))
    {
      v36 = OUTLINED_FUNCTION_150();
      v37 = OUTLINED_FUNCTION_48();
      v40 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1AC5CFE74(0xD000000000000024, 0x80000001AC7B7230, &v40);
      OUTLINED_FUNCTION_635(&dword_1AC5BC000, v38, v39, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
    v15 = [*(v0 + 16) format];
    v16 = v1[24];
    v1[24] = v15;

    v17 = v1[15];

    sub_1AC5CD620(v0 + 16, v0 + 184);
    v18 = swift_task_alloc();
    *(v0 + 352) = v18;
    *v18 = v0;
    v18[1] = sub_1AC7682E0;
    v19 = *(v0 + 272);

    sub_1AC6E7324(v17, v19, v0 + 16);
  }
}

uint64_t sub_1AC7682E0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 360) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC768414()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0F8, &qword_1AC7B4588);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  *(v0 + 368) = v2;
  *(v2 + 16) = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC7684A0()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6CCEA8();
}

uint64_t sub_1AC76852C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1AC768648()
{
  v34 = v1;
  *(v1[34] + 184) = v1[46];

  v1[49] = v1[45];
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = __swift_project_value_buffer(v1[41], qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_27_13(v2);
  v4 = [v3 channelCount];

  if (v4 == 1)
  {
    v5 = OUTLINED_FUNCTION_37_14();
    v6(v5);
    v7 = OUTLINED_FUNCTION_33_12();
    v8 = [v7 commonFormat];

    if (v8 == 3 && OUTLINED_FUNCTION_45_13())
    {
      (*(v1[42] + 8))(v1[43], v1[41]);
      v9 = OUTLINED_FUNCTION_45_13();
      v10 = OUTLINED_FUNCTION_33_12();
      v11 = [v10 channelCount];

      if (v11)
      {
        v12 = *v9;
      }

      else
      {
        v12 = 0;
      }

      v1[51] = sub_1AC5CFAB8(v12, [v0 frameLength]);
      v1[52] = v13;
      v14 = swift_task_alloc();
      v1[53] = v14;
      *v14 = v1;
      OUTLINED_FUNCTION_10_22(v14);

      sub_1AC6CD264();
      return;
    }

    v15 = sub_1AC79FDC8();
    v16 = sub_1AC7A05F8();
    v17 = OUTLINED_FUNCTION_366(v16);
    v19 = v1[42];
    v18 = v1[43];
    v20 = v1[41];
    if (v17)
    {
      v21 = OUTLINED_FUNCTION_150();
      v22 = OUTLINED_FUNCTION_48();
      v33 = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_31_14();
      *(v21 + 4) = sub_1AC5CFE74(v23, v24, &v33);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v25, v26, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    (*(v19 + 8))(v18, v20);
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (OUTLINED_FUNCTION_366(v28))
  {
    v29 = OUTLINED_FUNCTION_150();
    v30 = OUTLINED_FUNCTION_48();
    v33 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AC5CFE74(0xD000000000000024, 0x80000001AC7B7230, &v33);
    OUTLINED_FUNCTION_635(&dword_1AC5BC000, v31, v32, "Failed precondition: %s");
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_70();
  }

  __break(1u);
}

uint64_t sub_1AC768940()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC7689AC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

_DWORD *sub_1AC768AC8()
{
  sub_1AC5CFBB8(*(v0 + 408), *(v0 + 416));
  v1 = sub_1AC79FDC8();
  v2 = sub_1AC7A05D8();
  v3 = OUTLINED_FUNCTION_153(v2);
  v4 = *(v0 + 416);
  if (v3)
  {
    result = OUTLINED_FUNCTION_150();
    *result = 134217984;
    v6 = result;
    v7 = 0;
    switch(v4 >> 62)
    {
      case 1uLL:
        v8 = *(v0 + 408);
        v9 = *(v0 + 412);
        v10 = __OFSUB__(v9, v8);
        LODWORD(v7) = v9 - v8;
        if (!v10)
        {
          v7 = v7;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_16;
      case 2uLL:
        v11 = *(*(v0 + 408) + 16);
        v12 = *(*(v0 + 408) + 24);
        v10 = __OFSUB__(v12, v11);
        v7 = v12 - v11;
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_8;
      default:
        v7 = *(v0 + 422);
LABEL_8:
        v13 = *(v0 + 408);
        v14 = *(v0 + 416);
        *(v6 + 1) = v7;
        sub_1AC5C28A8(v13, v14);
        OUTLINED_FUNCTION_69();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        OUTLINED_FUNCTION_129();
        goto LABEL_9;
    }
  }

  sub_1AC5C28A8(*(v0 + 408), *(v0 + 416));
LABEL_9:
  v20 = *(v0 + 272);

  if (*(v20 + 176) == 1)
  {
    v21 = (v0 + 320);
    v22 = (v0 + 312);
    v23 = (v0 + 304);
    v24 = (v0 + 296);
    v25 = (v0 + 288);
    v26 = (v0 + 280);
  }

  else
  {
    v26 = (v0 + 132);
    v28 = *(v20 + 160);
    v27 = *(v20 + 168);
    v29 = *(v20 + 136);
    v30 = *(v20 + 144);
    *(v0 + 84) = *(v20 + 128);
    *(v0 + 92) = v29;
    *(v0 + 100) = v30;
    *(v0 + 116) = v28;
    *(v0 + 124) = v27;
    sub_1AC7A0588();
    v25 = (v0 + 140);
    v24 = (v0 + 148);
    v23 = (v0 + 156);
    v22 = (v0 + 164);
    v21 = (v0 + 172);
  }

  v31 = *v22;
  v32 = *v23;
  v33 = *v24;
  v34 = *v25;
  v35 = *v26;
  v36 = *(v0 + 408);
  v39 = *(v0 + 416);
  v40 = *v21;
  v37 = *(v0 + 256);
  *(v20 + 128) = v35;
  *(v20 + 136) = v34;
  *(v20 + 144) = v33;
  *(v20 + 152) = v32;
  *(v20 + 160) = v31;
  *(v20 + 168) = v40;
  *(v20 + 176) = 0;

  sub_1AC5C28A8(v36, v39);
  *v37 = v35;
  v37[1] = v34;
  v37[2] = v33;
  v37[3] = v32;
  v37[4] = v31;
  v37[5] = v40;

  OUTLINED_FUNCTION_29();

  return v38();
}

uint64_t sub_1AC768D04()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C28A8(*(v0 + 408), *(v0 + 416));

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC768D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC768D94, a3);
}

void sub_1AC768D94()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[3] + 136);
  type metadata accessor for EARLanguageDetectorResultStream();
  v4 = swift_allocObject();

  v6 = sub_1AC76BF00(v5, v3, v4);
  v0[6] = v6;
  *(v1 + 200) = v6;

  v7 = [*v2 format];
  [v7 sampleRate];
  v9 = v8;
  v10 = v8;

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1AC768F04;

  sub_1AC71D214();
}

uint64_t sub_1AC768F04()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[4];
    v10 = sub_1AC769058;
  }

  else
  {
    v11 = v5[4];

    v5[9] = v3;
    v10 = sub_1AC76902C;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC76902C()
{
  **(v0 + 16) = *(v0 + 72);
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1AC769058()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC7690B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[26];
  v8 = v4[27];
  v4[26] = a1;
  v4[27] = a2;
  sub_1AC5C3958(v7, v8);
  v9 = v4[28];
  v10 = v4[29];
  v4[28] = a3;
  v4[29] = a4;

  return sub_1AC5C3958(v9, v10);
}

uint64_t sub_1AC76910C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 16) = v4;
  *(v5 + 48) = a4;
  return OUTLINED_FUNCTION_15_5(sub_1AC76912C, v4);
}

uint64_t sub_1AC76912C()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 48) == 1 && (v1 = *(*(v0 + 16) + 184), (*(v0 + 24) = v1) != 0))
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC7691D4()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC769260()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC74085C;
  }

  else
  {
    v8 = sub_1AC76C2E4;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC769364(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC769384, v1);
}

uint64_t sub_1AC769384()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 48) == 1 && (v1 = *(*(v0 + 16) + 184), (*(v0 + 24) = v1) != 0))
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC76942C()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC7694B8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC7398F8;
  }

  else
  {
    v8 = sub_1AC7695BC;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC7695BC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC769630()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v1 = sub_1AC79FDE8();
  v0[3] = __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[2];

  v11 = *(v10 + 184);
  v0[4] = v11;
  if (v11)
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_14_19(v15);

    return sub_1AC769B30();
  }
}

uint64_t sub_1AC769770()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC7697FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC71A7F8;
  }

  else
  {
    v8 = sub_1AC769900;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC769900()
{
  OUTLINED_FUNCTION_85();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_19(v1);

  return sub_1AC769B30();
}

uint64_t sub_1AC769974()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC769A94()
{
  OUTLINED_FUNCTION_72();
  v0 = sub_1AC79FDC8();
  v1 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v1))
  {
    v2 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v2);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1AC769B50()
{
  OUTLINED_FUNCTION_72();
  if (*(v1[2] + 240))
  {
    OUTLINED_FUNCTION_29();

    return v2();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v4 = sub_1AC79FDE8();
    v1[3] = __swift_project_value_buffer(v4, qword_1ED9386C8);
    v5 = sub_1AC79FDC8();
    v6 = sub_1AC7A05D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v7);
      _os_log_impl(&dword_1AC5BC000, v5, v6, "LanguageDetectorWorker: Waiting for didFinish", v0, 2u);
      OUTLINED_FUNCTION_129();
    }

    v8 = v1[2];

    v10 = sub_1AC76C0AC(&qword_1EB56E0F0, v9, type metadata accessor for LanguageDetectorWorker, &unk_1AC7B44D8);
    v11 = swift_task_alloc();
    v1[4] = v11;
    *v11 = v1;
    v11[1] = sub_1AC769D30;
    v12 = v1[2];
    v13 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v11, v8, v10, 0xD000000000000012, 0x80000001AC7BB050, sub_1AC76BE80, v12, v13);
  }
}

uint64_t sub_1AC769D30()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v0;

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC769E4C()
{
  OUTLINED_FUNCTION_72();
  v0 = sub_1AC79FDC8();
  v1 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v1))
  {
    v2 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v2);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1AC769EE8(uint64_t a1, uint64_t a2)
{
  sub_1AC703CD4();
  v4 = *(*(a2 + 248) + 16);
  sub_1AC703E0C(v4);
  v5 = *(a2 + 248);
  *(v5 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 248) = v5;
  return result;
}

uint64_t sub_1AC769F9C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC76C048;
  *(inited + 40) = v3;
  v4 = a1;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC76A044(unint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v54 - v9;
  v10 = *a1;
  if (off_1ED937D60 != -1)
  {
LABEL_26:
    swift_once();
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1ED9386C8);
  v12 = sub_1AC79FDC8();
  v13 = sub_1AC7A05E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v63[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1AC5CFE74(0xD000000000000026, 0x80000001AC7BB0A0, v63);
    _os_log_impl(&dword_1AC5BC000, v12, v13, "LanguageDetectorWorker.%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B26EAB10](v15, -1, -1);
    MEMORY[0x1B26EAB10](v14, -1, -1);
  }

  v57 = v5;
  *(v10 + 240) = 1;
  *(v10 + 184) = 0;

  *(v10 + 200) = 0;

  if ((*(v10 + 176) & 1) == 0)
  {
    v17 = *(v10 + 160);
    v16 = *(v10 + 168);
    v18 = *(v10 + 136);
    v63[0] = *(v10 + 128);
    v63[1] = v18;
    v64 = *(v10 + 144);
    v65 = v17;
    v66 = v16;
    v19 = sub_1AC7A0558();
    v22 = *MEMORY[0x1E6960CC0];
    v23 = *(MEMORY[0x1E6960CC0] + 8);
    v24 = *(MEMORY[0x1E6960CC0] + 12);
    v25 = *(MEMORY[0x1E6960CC0] + 16);
    *(v10 + 128) = v19;
    *(v10 + 136) = v20;
    *(v10 + 144) = v21;
    *(v10 + 152) = v22;
    *(v10 + 160) = v23 | (v24 << 32);
    *(v10 + 168) = v25;
    *(v10 + 176) = 0;
    v26 = *(v10 + 208);
    if (v26)
    {
      v27 = *(v10 + 216);
      v59[0] = v19;
      v59[1] = v20;
      v59[2] = v21;
      v59[3] = v22;
      v60 = v23;
      v61 = v24;
      v62 = v25;

      v26(v59);
      sub_1AC5C3958(v26, v27);
    }
  }

  swift_beginAccess();
  v56 = v10;
  v28 = *(v10 + 256);
  v29 = *(v28 + 16);

  v10 = 0;
  v30 = v28 + 40;
  while (v29 != v10)
  {
    if (v10 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(v30 - 8);

    (v5)(&v58, v31);
    if (v58)
    {
      sub_1AC6AE294(a2);
      swift_unknownObjectRelease();
    }

    v30 += 16;
    ++v10;
  }

  v32 = v56;
  v33 = *(v56 + 248);
  *(v56 + 248) = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v34 = *(v32 + 224);
    v35 = v57;
    if (v34)
    {
      v36 = *(v32 + 232);
      v37 = a2;
      sub_1AC5D9374(v34, v36);
      v34(a2);
      sub_1AC5C3958(v34, v36);
    }

    else
    {
      v44 = a2;
    }

    v45 = *(v33 + 2);
    if (v45)
    {
      v48 = *(v35 + 2);
      v47 = v35 + 16;
      v46 = v48;
      v49 = (v47[64] + 32) & ~v47[64];
      v57 = v33;
      v50 = &v33[v49];
      v51 = *(v47 + 7);
      v52 = (v47 - 8);
      do
      {
        v46(v8, v50, v4);
        v58 = a2;
        v53 = a2;
        sub_1AC7A01C8();
        (*v52)(v8, v4);
        v50 += v51;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    v38 = *(v33 + 2);
    if (v38)
    {
      v39 = *(v57 + 2);
      v40 = &v33[(v57[80] + 32) & ~v57[80]];
      v41 = *(v57 + 9);
      v42 = (v57 + 8);
      v43 = v55;
      do
      {
        v39(v43, v40, v4);
        sub_1AC7A01D8();
        (*v42)(v43, v4);
        v40 += v41;
        --v38;
      }

      while (v38);
    }
  }
}

uint64_t sub_1AC76A520()
{
  OUTLINED_FUNCTION_85();
  v0[2] = v1;
  v2 = sub_1AC79FB18();
  v0[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_85_0(v4);

  return sub_1AC71CB68();
}

uint64_t sub_1AC76A600()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC76A734()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC63110C(0, v2, 0);
    v4 = v12;
    v5 = v1 + 40;
    do
    {

      sub_1AC79F968();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AC63110C(v6 > 1, v7 + 1, 1);
      }

      v8 = *(v0 + 40);
      v9 = *(v0 + 24);
      *(v12 + 16) = v7 + 1;
      (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v8, v9);
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 16) = v4;

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1AC76A8A8(uint64_t a1)
{
  if (a1 == 1)
  {
    return sub_1AC79F9B8();
  }

  else
  {
    return MEMORY[0x1EEDC4FE0]();
  }
}

uint64_t sub_1AC76A8C0(void *a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(inited + 32) = sub_1AC76BFB8;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC76A978(uint64_t *a1, unint64_t a2, Float64 a3)
{
  v6 = sub_1AC79F9C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (off_1ED937D60 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v11 = sub_1AC79FDE8();
    __swift_project_value_buffer(v11, qword_1ED9386C8);
    v12 = sub_1AC79FDC8();
    v13 = sub_1AC7A05E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1AC5CFE74(0xD000000000000028, 0x80000001AC7BB070, v73);
      _os_log_impl(&dword_1AC5BC000, v12, v13, "LanguageDetectorWorker.%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B26EAB10](v15, -1, -1);
      MEMORY[0x1B26EAB10](v14, -1, -1);
    }

    v16 = *(v10 + 192);
    if (!v16 || (*(v10 + 176) & 1) != 0)
    {
      break;
    }

    v18 = *(v10 + 160);
    v17 = *(v10 + 168);
    v19 = *(v10 + 136);
    v73[0] = *(v10 + 128);
    v73[1] = v19;
    v74 = *(v10 + 144);
    v75 = v18;
    v76 = v17;
    v20 = v16;
    [v20 sampleRate];
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v21 <= -2147483650.0)
    {
      goto LABEL_29;
    }

    if (v21 >= 2147483650.0)
    {
      goto LABEL_30;
    }

    v56 = v20;
    v61 = a2;
    v57 = v9;
    v58 = v7;
    v59 = v6;
    CMTimeMakeWithSeconds(&v69, a3, v21);
    sub_1AC7A0558();
    v60 = v10;
    v9 = HIDWORD(v22);
    sub_1AC7A06B8();
    v23 = v60;
    sub_1AC7A0578();
    v25 = v63;
    v24 = v64;
    v26 = v65;
    v27 = v66;
    v29 = v67;
    v28 = v68;
    v23[16] = v63;
    v23[17] = v24;
    v23[18] = v26;
    v23[19] = v27;
    v23[20] = v29;
    v23[21] = v28;
    *(v23 + 176) = 0;
    v30 = v23[26];
    if (v30)
    {
      v31 = v23[27];
      v69.value = v25;
      *&v69.timescale = v24;
      v69.epoch = v26;
      v70 = v27;
      v71 = v29;
      v72 = v28;

      v30(&v69);
      sub_1AC5C3958(v30, v31);
    }

    v32 = [v61 confidences];
    sub_1AC71BA64();
    v33 = sub_1AC79FE28();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C730, &qword_1AC7AA650);
    v34 = sub_1AC7A0BA8();
    v35 = v34;
    v36 = 0;
    v10 = v33 + 64;
    v37 = 1 << *(v33 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v7 = v38 & *(v33 + 64);
    v6 = (v37 + 63) >> 6;
    v62 = v34 + 64;
    if (v7)
    {
      while (1)
      {
        v39 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_20:
        a2 = v39 | (v36 << 6);
        v42 = (*(v33 + 48) + 16 * a2);
        v9 = *v42;
        v43 = v42[1];
        v44 = *(*(v33 + 56) + 8 * a2);

        [v44 doubleValue];
        *(v62 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
        v45 = (v35[6] + 16 * a2);
        *v45 = v9;
        v45[1] = v43;
        *(v35[7] + 8 * a2) = v46;
        v47 = v35[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          break;
        }

        v35[2] = v49;
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v40 = v36;
      while (1)
      {
        v36 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v36 >= v6)
        {

          v50 = v61;
          v51 = [v61 detectedLangauge];
          v52 = v57;
          v53 = v60;
          sub_1AC76A8A8(v51);
          v54 = swift_beginAccess();
          v55 = v53[32];
          MEMORY[0x1EEE9AC00](v54);
          *(&v56 - 4) = v53;
          *(&v56 - 3) = v35;
          *(&v56 - 2) = v52;
          *(&v56 - 1) = v50;

          sub_1AC68D898(sub_1AC76BFC4, (&v56 - 6), v55);

          (*(v58 + 8))(v52, v59);
          return;
        }

        v41 = *(v10 + 8 * v36);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v7 = (v41 - 1) & v41;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_27:
    swift_once();
  }
}

void *sub_1AC76AF5C(void *(**a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51 = a4;
  v10 = type metadata accessor for EARLocaleAlternative(0);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AC79FB18();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*a1)(v61, v15);
  if (*&v61[0])
  {
    if (*(a2 + 176))
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v49 = *&v61[0];
    v20 = *(a2 + 160);
    v19 = *(a2 + 168);
    v21 = *(a2 + 136);
    *&v61[0] = *(a2 + 128);
    *(&v61[0] + 1) = v21;
    v61[1] = *(a2 + 144);
    v62 = v20;
    v63 = v19;
    v22 = *(a3 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v45 = a5;
      v46 = v14;
      v47 = v13;
      v48 = v5;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1AC631858();
      v23 = v60;
      result = sub_1AC637A8C(a3);
      v25 = result;
      v26 = 0;
      v59 = a3 + 64;
      v53 = v24;
      v54 = v22;
      v52 = a3 + 72;
      while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(a3 + 32))
      {
        v27 = v25 >> 6;
        if ((*(v59 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a3 + 36) != v24)
        {
          goto LABEL_29;
        }

        v58 = v24;
        v57 = v18;
        v28 = *(*(a3 + 56) + 8 * v25);

        sub_1AC79F968();
        *&v12[*(v56 + 20)] = v28;
        v29 = v23;
        v60 = v23;
        v30 = v23[2];
        if (v30 >= v23[3] >> 1)
        {
          sub_1AC631858();
          v29 = v60;
        }

        v29[2] = v30 + 1;
        v23 = v29;
        result = sub_1AC76BFE4(v12, v29 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v30);
        v31 = 1 << *(a3 + 32);
        if (v25 >= v31)
        {
          goto LABEL_30;
        }

        v32 = *(v59 + 8 * v27);
        if ((v32 & (1 << v25)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a3 + 36) != v58)
        {
          goto LABEL_32;
        }

        v33 = v32 & (-2 << (v25 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = a3;
          v35 = v12;
          v36 = v27 << 6;
          v37 = v27 + 1;
          v38 = (v52 + 8 * v27);
          while (v37 < (v31 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_1AC637E98(v25, v58, v57 & 1);
              v31 = __clz(__rbit64(v39)) + v36;
              goto LABEL_21;
            }
          }

          result = sub_1AC637E98(v25, v58, v57 & 1);
LABEL_21:
          v12 = v35;
          a3 = v34;
        }

        v18 = 0;
        ++v26;
        v25 = v31;
        v24 = v53;
        if (v26 == v54)
        {
          v13 = v47;
          v41 = v51;
          v14 = v46;
          a5 = v45;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v41 = v51;
LABEL_25:
    v42 = [a5 dominantLocale];
    sub_1AC79FF68();

    v43 = v50;
    sub_1AC79F968();
    sub_1AC6AE2EC(v61, v23, v41, v43);
    swift_unknownObjectRelease();

    return (*(v14 + 8))(v43, v13);
  }

  return result;
}

uint64_t sub_1AC76B3E8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  *(inited + 32) = sub_1AC76BFAC;
  *(inited + 40) = v7;
  swift_unknownObjectRetain();
  v8 = a3;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC76B4B0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = *(*a1 + 200);
  if (*(*(*a1 + 120) + 16) == a2 || (v6 ? (v7 = v6 == a2) : (v7 = 0), v7))
  {
    swift_beginAccess();
    v8 = *(v5 + 256);
    v9 = *(v8 + 16);

    v10 = 0;
    for (i = v8 + 40; ; i += 16)
    {
      if (v9 == v10)
      {

        return;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      v12 = *(i - 8);

      v12(&v14, v13);
      if (v14)
      {
        sub_1AC6AE294(a4);
        swift_unknownObjectRelease();
      }

      ++v10;
    }

    __break(1u);
  }
}

uint64_t sub_1AC76B5D0()
{

  sub_1AC5C3958(*(v0 + 208), *(v0 + 216));
  sub_1AC5C3958(*(v0 + 224), *(v0 + 232));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC76B640()
{
  sub_1AC76B5D0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC76B66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC68D878();
}

uint64_t sub_1AC76B6F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC5C517C;

  return sub_1AC767E3C();
}

uint64_t sub_1AC76B7A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AC76B7C8, v1, 0);
}

uint64_t sub_1AC76B7C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 176);
  v4 = *(v1 + 144);
  v5 = *(v1 + 160);
  *v2 = *(v1 + 128);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_44();
  return v6();
}

uint64_t sub_1AC76B804(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1AC5C4D48;

  return sub_1AC76910C(v6, v7, v8, a4);
}

uint64_t sub_1AC76B898(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC769364(a1);
}

uint64_t sub_1AC76B92C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC769614();
}

uint64_t sub_1AC76B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC76B9E0, v4, 0);
}

uint64_t sub_1AC76B9E0()
{
  OUTLINED_FUNCTION_85();
  sub_1AC7690B4(v0[2], v0[3], v0[4], v0[5]);
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t EARLocaleAlternative.locale.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t type metadata accessor for EARLocaleAlternative(uint64_t a1)
{
  result = qword_1EB56E0D0;
  if (!qword_1EB56E0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static EARLocaleAlternative.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1B26E85C0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EARLocaleAlternative(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t EARLocaleAlternative.hash(into:)()
{
  sub_1AC79FB18();
  sub_1AC76C0AC(&qword_1EB56B468, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  OUTLINED_FUNCTION_170();
  sub_1AC79FE58();
  v1 = *(v0 + *(type metadata accessor for EARLocaleAlternative(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1B26E9A70](*&v1);
}

uint64_t EARLocaleAlternative.hashValue.getter()
{
  sub_1AC7A0E78();
  EARLocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC76BC74(uint64_t a1)
{
  sub_1AC7A0E78();
  EARLocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC76BD90(uint64_t a1, uint64_t a2)
{
  result = sub_1AC76C0AC(&qword_1EB56E0E8, a2, type metadata accessor for LanguageDetectorWorker, &unk_1AC7B4478);
  *(a1 + 8) = result;
  return result;
}

id sub_1AC76BDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    sub_1AC79FB18();
    v9 = sub_1AC7A0148();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithLanguageConstraints:v9 alternativesCount:a2 resultReportingFrequency:a3 useVAD:a4 & 1];

  return v10;
}

void sub_1AC76BE94(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 4);
  sub_1AC6B42B4(&a2[6], a1, a3);

  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_1AC76BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = a2;

  *(a3 + 112) = sub_1AC6A836C();
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 152) = &off_1F2138EE0;
  swift_unknownObjectWeakAssign();

  sub_1AC6A8434(a3);

  return a3;
}

uint64_t sub_1AC76BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EARLocaleAlternative(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC76C050(uint64_t a1)
{
  v2 = type metadata accessor for SpeechAnalyzer.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC76C0AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC76C0F4()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_10_14();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_7_12(v2);

  return sub_1AC7673D4(v3, v4, v5, v6, v7);
}

uint64_t sub_1AC76C1EC()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_10_14();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_7_12(v2);

  return sub_1AC766F20(v3, v4, v5, v6, v7);
}

uint64_t SFEntitledAssetTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Hammer"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Assistant"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"GeoLMRegionMapping"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"GeoLMRegionSpecific"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"LanguageDetector"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"GeneralASR"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFEntitledAssetTypeForTaskName(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Dictation", @"VoiceMail", @"Captioning", @"SearchOrMessaging", @"WebSearch", @"DictationCC", @"SpellCC", @"SiriDictation", @"Spelling", @"Tshot", @"Unspecified", @"Confirmation", @"FoundInCalls", 0}];
  v3 = [v2 containsObject:v1];

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"OfflineTranscription", @"LiveTranscription", @"TranslateApp", 0}];
    v6 = [v5 containsObject:v1];

    if (v6)
    {
      v4 = 7;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC77252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SFUserIdHash(uint64_t a1)
{
  if (a1)
  {
    v1 = [@"User" stringByAppendingString:a1];
    v2 = SFHash64String(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SFUserIdHashToString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", objc_msgSend(a1, "unsignedLongLongValue")];
    v1 = vars8;
  }

  return a1;
}

id SFUserIdHashFromString(void *a1)
{
  v1 = a1;
  v2 = SFScanHexString(v1);
  if (v2 || [v1 isEqual:@"0"])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *SFUserDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!(v3 | v4))
  {
    v10 = @"Default";
    v11 = @"Default";
    goto LABEL_9;
  }

  if (!v3)
  {
    v6 = &stru_1F2139F58;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = &stru_1F2139F58;
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = MEMORY[0x1E696AEC0];
  v8 = SFUserIdHashToString(v5);
  v9 = [v7 stringWithFormat:@"<%@>", v8];

LABEL_8:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@%@", @"User", v6, v9];

LABEL_9:

  return v10;
}

id SFUserIdHashFromDataSiteURL(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  if (([v2 isEqual:@"Default"] & 1) == 0)
  {
    v3 = SFUserIdHashFromString(v2);
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "SFUserIdHashFromDataSiteURL";
      v8 = 2112;
      v9 = v1;
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s Unrecognized dataSiteURL: %@", &v6, 0x16u);
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id SFPersonaIdFromSiteURL(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];

  if (v2)
  {
    v2 = v1;
  }

  return v2;
}

id SFDataSiteURL(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"User" isDirectory:1 relativeToURL:a1];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1 relativeToURL:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Default" isDirectory:1 relativeToURL:a1];
  }

  return v5;
}

__CFString *SFSpeechProfileSiteDescription(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  if ([v2 isEqual:@"Default"])
  {
    v3 = @"Default";
    v4 = @"Default";
  }

  else
  {
    v5 = SFPersonaIdFromSiteURL(v1);
    v3 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "SFSpeechProfileSiteDescription";
        v11 = 2112;
        v12 = v1;
        _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unrecognized siteURL: %@", &v9, 0x16u);
      }
    }
  }

  return v3;
}

__CFString *SFModelTaskToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Invalid Task";
  }

  else
  {
    return off_1E797BD60[a1];
  }
}

void sub_1AC775944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC775CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC7762DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC7766CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC776848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC776B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC778D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ExpandTranscription(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:v1];
  v3 = [v1 segments];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __ExpandTranscription_block_invoke;
  v10[3] = &unk_1E797BFA0;
  v11 = v1;
  v12 = v3;
  v4 = v2;
  v13 = v4;
  v5 = v3;
  v6 = v1;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = v13;
  v8 = v4;

  return v4;
}

void __ExpandTranscription_block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 alternativeSubstrings];
  v7 = [v5 alternativeConfidences];
  v8 = [v6 mutableCopy];
  v9 = [v7 mutableCopy];
  v10 = [v5 substring];
  [v8 insertObject:v10 atIndex:0];

  v11 = MEMORY[0x1E696AD98];
  [v5 confidence];
  v12 = [v11 numberWithFloat:?];
  [v9 insertObject:v12 atIndex:0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __ExpandTranscription_block_invoke_2;
  v17[3] = &unk_1E797BF78;
  v18 = a1[4];
  v19 = v5;
  v20 = v8;
  v21 = v9;
  v25 = a3;
  v22 = v7;
  v23 = a1[5];
  v24 = a1[6];
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v16 = v5;
  [v6 enumerateObjectsUsingBlock:v17];
}

void __ExpandTranscription_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [*(a1 + 32) segments];
  v7 = [v6 subarrayWithRange:{0, *(a1 + 88)}];
  [v62 addObjectsFromArray:v7];

  v8 = [*(a1 + 40) substringRange];
  v58 = v9;
  v60 = v8;
  v10 = [v5 length];
  [*(a1 + 48) removeObjectAtIndex:a3 + 1];
  [*(a1 + 56) removeObjectAtIndex:a3 + 1];
  v11 = [*(a1 + 64) objectAtIndex:a3];
  v12 = [SFTranscriptionSegment alloc];
  [*(a1 + 40) timestamp];
  v14 = v13;
  [*(a1 + 40) duration];
  v16 = v15;
  [v11 floatValue];
  v18 = v17;
  v19 = [*(a1 + 48) copy];
  v20 = [*(a1 + 56) copy];
  v21 = [*(a1 + 40) phoneSequence];
  v22 = [*(a1 + 40) ipaPhoneSequence];
  LODWORD(v23) = v18;
  v24 = [(SFTranscriptionSegment *)v12 _initWithSubstring:v5 range:v60 timestamp:v10 duration:v19 confidence:v20 alternativeSubstrings:v21 alternativeConfidences:v14 phoneSequence:v16 ipaPhoneSequence:v23 voiceAnalytics:v22, 0];

  v56 = v5;
  [*(a1 + 48) insertObject:v5 atIndex:a3 + 1];
  v54 = v11;
  [*(a1 + 56) insertObject:v11 atIndex:a3 + 1];
  v53 = v24;
  [v62 addObject:v24];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v55 = a1;
  obj = [*(a1 + 72) subarrayWithRange:{*(a1 + 88) + 1, objc_msgSend(*(a1 + 72), "count") + ~*(a1 + 88)}];
  v25 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v25)
  {
    v26 = v25;
    v61 = v10 - v58;
    v59 = *v64;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v64 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v63 + 1) + 8 * i);
        v29 = [v28 substringRange];
        v31 = v30;
        v32 = [SFTranscriptionSegment alloc];
        v33 = [v28 substring];
        [v28 timestamp];
        v35 = v34;
        [v28 duration];
        v37 = v36;
        [v28 confidence];
        v39 = v38;
        v40 = [v28 alternativeSubstrings];
        v41 = [v28 alternativeConfidences];
        v42 = [v28 phoneSequence];
        v43 = [v28 ipaPhoneSequence];
        LODWORD(v44) = v39;
        v45 = [(SFTranscriptionSegment *)v32 _initWithSubstring:v33 range:v61 + v29 timestamp:v31 duration:v40 confidence:v41 alternativeSubstrings:v42 alternativeConfidences:v35 phoneSequence:v37 ipaPhoneSequence:v44 voiceAnalytics:v43, 0];

        [v62 addObject:v45];
      }

      v26 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v26);
  }

  v46 = [v55[4] formattedString];
  v47 = [v55[5] substringRange];
  v49 = [v46 stringByReplacingCharactersInRange:v47 withString:{v48, v56}];

  v50 = [SFTranscription alloc];
  v51 = [v62 copy];
  v52 = [(SFTranscription *)v50 _initWithSegments:v51 formattedString:v49 speakingRate:0.0 averagePauseDuration:0.0];

  [v55[10] addObject:v52];
}

void sub_1AC77ABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC780F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1723(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1841(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC7881F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1AC788DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC788F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC78917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC789B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_1AC78D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC791A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2196(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC7935C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VoiceAnalyticsForSegment(void *a1, double a2, double a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [v5 acousticFeatures];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = v47 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v7)
  {

    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_34;
  }

  v38 = v5;
  v39 = 0;
  v8 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *v45;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v45 != v43)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v44 + 1) + 8 * i);
      v11 = [v6 objectForKey:{v10, v38}];
      v12 = [v11 acousticFeatureValuePerFrame];
      v13 = [v12 count];

      if (v13)
      {
        [v11 frameDuration];
        if (v14 > 1.0)
        {
          v14 = v14 / 1000.0;
        }

        if (v14 == 0.0)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = v14;
        }

        v16 = [v11 acousticFeatureValuePerFrame];
        v17 = [v16 count];

        if (v17 >= (a2 / v15))
        {
          v18 = (a2 / v15);
        }

        else
        {
          v18 = v17;
        }

        if (v17 >= (a3 / v15))
        {
          v19 = (a3 / v15);
        }

        else
        {
          v19 = v17;
        }

        v20 = v19 - v18;
        v21 = objc_autoreleasePoolPush();
        if ([v10 isEqualToString:@"jitter"])
        {
          v22 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v25 = [(SFAcousticFeature *)v22 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v42;
          v42 = v25;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"shimmer"])
        {
          v27 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v28 = [(SFAcousticFeature *)v27 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v41;
          v41 = v28;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"pitch"])
        {
          v29 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v30 = [(SFAcousticFeature *)v29 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v40;
          v40 = v30;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"voicing"])
        {
          v31 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v32 = [(SFAcousticFeature *)v31 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v39;
          v39 = v32;
LABEL_26:
        }

        objc_autoreleasePoolPop(v21);
        v8 = 1;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v7);

  if (v8)
  {
    v34 = v41;
    v33 = v42;
    v7 = v39;
    v35 = v40;
    v36 = [[SFVoiceAnalytics alloc] _initWithJitter:v42 shimmer:v41 pitch:v40 voicing:v39];
    v5 = v38;
  }

  else
  {
    v36 = 0;
    v5 = v38;
    v7 = v39;
    v34 = v41;
    v33 = v42;
    v35 = v40;
  }

LABEL_34:

  return v36;
}

uint64_t SFIsInternalInstall()
{
  if (SFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
  }

  return SFIsInternalInstall_isInternal;
}

void *SFSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id SFHash64(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length];
    v4 = [v2 bytes];
    if (v3 >= 0x10)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v4 + v5)) ^ ((0x9DDFEA08EB382D69 * *(v4 + v5)) >> 44));
        v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v4 + v5 + 8)) ^ ((0x9DDFEA08EB382D69 * *(v4 + v5 + 8)) >> 44));
        v6 -= 0x622015F714C7D297 * ((v9 ^ (v9 >> 41)) + (v8 ^ (v8 >> 41)));
        v5 += 16;
      }

      while (v5 < (v3 & 0xFFFFFFF0));
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }

    if (v3 > v5)
    {
      __memcpy_chk();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SFHash64String(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = SFHash64(v1);

  return v2;
}

uint64_t SFScanHexString(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  [v1 scanHexLongLong:&v4];
  v2 = v4;

  return v2;
}

id SFGetOrCreateDirectoryPath(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1 isDirectory:1];
    v4 = SFGetOrCreateDirectoryURL(v3, a2);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    v3 = v5;
    v4 = 0;
    if (a2 && v5)
    {
      v6 = v5;
      v4 = 0;
      *a2 = v3;
    }
  }

  return v4;
}

id SFGetOrCreateDirectoryURL(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:a2];

    v6 = 0;
    if (v5)
    {
      v6 = v3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    if (a2 && v7)
    {
      v7 = v7;
      *a2 = v7;
    }

    v6 = 0;
  }

  return v6;
}

uint64_t SFRemoveItemIfExistsAtPath(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

    v5 = SFRemoveItemIfExistsAtURL(v4, a2);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path: %@", v3, *MEMORY[0x1E696A578]];

    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v7 errorWithDomain:v8 code:-1000 userInfo:v10];
    if (a2)
    {
      if (v11)
      {
        v11 = v11;
        *a2 = v11;
      }
    }

    return 0;
  }
}

uint64_t SFRemoveItemIfExistsAtURL(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v16];
    v6 = v16;
    v7 = v6;
    if (v5)
    {

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }

    v13 = [v6 code];

    if (v13 == 4)
    {
      goto LABEL_9;
    }

    v12 = 0;
    if (a2 && v7)
    {
      v15 = v7;
      v12 = 0;
      *a2 = v7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v17 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid item URL: %@", 0];
    v18[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v8 errorWithDomain:v9 code:-1000 userInfo:v10];
    if (a2 && v11)
    {
      v11 = v11;
      *a2 = v11;
    }

    v12 = 0;
  }

LABEL_10:

  return v12;
}

uint64_t SFWritePropertyList(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:a4];
  if ([v8 length])
  {
    v9 = [v7 path];
    v10 = open_dprotected_np([v9 UTF8String], 1538, a3, 0, 384);

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10 closeOnDealloc:1];
    v12 = [v11 writeData:v8 error:a4];
    if ((v12 & 1) == 0)
    {
      v13 = [v7 URLByDeletingLastPathComponent];
      v14 = [v13 path];

      v19 = 0;
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [v15 fileExistsAtPath:v14 isDirectory:&v19];

      if ((v16 & 1) == 0)
      {
        v17 = SFLogFramework;
        if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v21 = "SFWritePropertyList";
          v22 = 2112;
          v23 = v14;
          v24 = 1024;
          v25 = v19;
          _os_log_error_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_ERROR, "%s Parent directory: %@ does not exist (isDirectory: %i)", buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id SFReadPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a1 options:0 error:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:a2 format:0 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL IsNarrowBand(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    mSampleRate = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v7 formatDescriptions];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(*(&v16 + 1) + 8 * j));
              if (StreamBasicDescription && mSampleRate < StreamBasicDescription->mSampleRate)
              {
                mSampleRate = StreamBasicDescription->mSampleRate;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  else
  {
    mSampleRate = 0.0;
  }

  v14 = mSampleRate <= 8000.0 && mSampleRate > 0.0;

  return v14;
}

uint64_t __Block_byref_object_copy__2448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC797D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id xpcInterface_EARSpeechRecognizer()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B1C8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_setExtraLmList_sandboxExtensions_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_setExtraLmList_sandboxExtensions_ argumentIndex:1 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_modelInfoWithReply_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_recognitionStatisticsWithReply_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_recognitionUtterenceStatisticsWithReply_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_recognitionMetricsWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_EARSpeechRecognitionResultStream()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F214D3A0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_speechRecognizerDidProduceEndpointFeaturesWithWordCount_trailingSilenceDuration_eosLikelihood_pauseCounts_silencePosterior_processedAudioDurationInMilliseconds_acousticEndpointerScore_ argumentIndex:3 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_speechRecognizerDidRecognizeFinalResultMultiUserPackages_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_speechRecognizerDidProduceLoggableMultiUserPackages_ argumentIndex:0 ofReply:0];

  return v0;
}

id xpcInterface_LSRAssets()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B288];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_getContextualNamedEntitySourcesForApplication_taskName_reply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_getContextualRankedContactSourcesForApplication_taskName_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_EAREuclid()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B2E8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_findNearestNeighbors_numberOfNeighbors_reply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_computeEmbeddings_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_EARLanguageDetector()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B528];
  v1 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_modelInfoWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_EARFullPayloadCorrector()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B348];
  v1 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_correctPostITNOutput_withOptions_reply_ argumentIndex:1 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_correctPostITNOutput_withOptions_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_LSRAssetInventory()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B408];
  v1 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_allocatedLocalesWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void SFEndModelRetention(const void *a1)
{
  if (!a1)
  {
    a1 = &__block_literal_global_2854;
  }

  v1 = _Block_copy(a1);
  [SFSpeechAnalyzer endModelRetentionWithCompletion:v1];
}

void sub_1AC79BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3056(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC79C5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79CAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79D3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79DDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SFEntitledAssetConfig *SFEntitledAssetConfigForLanguageDetector()
{
  v0 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];

  return v0;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}