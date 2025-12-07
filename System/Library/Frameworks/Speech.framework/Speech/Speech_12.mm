uint64_t sub_1AC6CF450(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x74616C736E617254;
}

uint64_t sub_1AC6CF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      sub_1AC6102B0(&v13 + 7, *(a1 + v10++), a3, a4, a5, a6, a7, a8, v13, v14);
      --v9;
    }

    while (v9);

    return v14;
  }

  else
  {
    v11 = a2;
  }

  return v11;
}

void sub_1AC6CF538()
{
  qword_1EB56CF78 = MEMORY[0x1E69E7CD0];
  unk_1EB56CF80 = MEMORY[0x1E69E7CD0];
  qword_1EB56CF88 = MEMORY[0x1E69E7CD0];
  unk_1EB56CF90 = MEMORY[0x1E69E7CC0];
}

uint64_t SpeechTranscriber.Preset.init(transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

double static SpeechTranscriber.Preset.transcription.getter()
{
  if (qword_1EB56B5B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CF78);

  return result;
}

void sub_1AC6CF5F8()
{
  sub_1AC724674(&unk_1F212FB80);
  qword_1EB56CF98 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFA0 = v0;
  qword_1EB56CFA8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFB0 = MEMORY[0x1E69E7CC0];
}

double static SpeechTranscriber.Preset.transcriptionWithAlternatives.getter()
{
  if (qword_1EB56B5B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CF98);

  return result;
}

void sub_1AC6CF6C0()
{
  sub_1AC724674(&unk_1F212FBA8);
  v1 = v0;
  sub_1AC724660(&unk_1F212FBD0);
  qword_1EB56CFB8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFC0 = v1;
  qword_1EB56CFC8 = v2;
  unk_1EB56CFD0 = MEMORY[0x1E69E7CC0];
}

double static SpeechTranscriber.Preset.timeIndexedTranscriptionWithAlternatives.getter()
{
  if (qword_1EB56B5C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFB8);

  return result;
}

void sub_1AC6CF7A0()
{
  sub_1AC724674(&unk_1F212F688);
  qword_1EB56CFD8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFE0 = v0;
  qword_1EB56CFE8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFF0 = MEMORY[0x1E69E7CC0];
}

double static SpeechTranscriber.Preset.progressiveTranscription.getter()
{
  if (qword_1EB56B5C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFD8);

  return result;
}

void sub_1AC6CF868()
{
  sub_1AC724674(&unk_1F212FBF8);
  v1 = v0;
  sub_1AC724660(&unk_1F212FC20);
  qword_1EB56CFF8 = MEMORY[0x1E69E7CD0];
  unk_1EB56D000 = v1;
  qword_1EB56D008 = v2;
  unk_1EB56D010 = MEMORY[0x1E69E7CC0];
}

double static SpeechTranscriber.Preset.timeIndexedProgressiveTranscription.getter()
{
  if (qword_1EB56B5D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFF8);

  return result;
}

void sub_1AC6CF948()
{
  qword_1EB56D018 = MEMORY[0x1E69E7CD0];
  unk_1EB56D020 = MEMORY[0x1E69E7CD0];
  qword_1EB56D028 = MEMORY[0x1E69E7CD0];
  unk_1EB56D030 = &unk_1F212FC48;
}

uint64_t *SpeechTranscriber.Preset.init(modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *result;
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = v5;
  return result;
}

double static SpeechTranscriber.Preset.translateApp.getter()
{
  if (qword_1EB56B5D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56D018);

  return result;
}

double sub_1AC6CFA04()
{
  if (qword_1EB56B5C8 != -1)
  {
    swift_once();
  }

  qword_1EB56D038 = qword_1EB56CFD8;
  unk_1EB56D040 = unk_1EB56CFE0;
  qword_1EB56D048 = qword_1EB56CFE8;
  unk_1EB56D050 = unk_1EB56CFF0;

  return result;
}

double static SpeechTranscriber.Preset.progressiveLiveTranscription.getter()
{
  if (qword_1EB56B5E0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56D038);

  return result;
}

uint64_t SpeechTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SpeechTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeechTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

double SpeechTranscriber.Preset.modelOptions.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t SpeechTranscriber.Preset.modelOptions.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t static SpeechTranscriber.Preset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AC623E30() & 1) == 0)
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

  sub_1AC6299CC();
  v3 = v2;

  return v3 & 1;
}

void SpeechTranscriber.Preset.hash(into:)()
{
  sub_1AC623E38();
  OUTLINED_FUNCTION_170();
  sub_1AC623E34();
  sub_1AC623E34();

  sub_1AC6341DC();
}

uint64_t SpeechTranscriber.Preset.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC623E38();
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CFE08(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC623E38();
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

unint64_t sub_1AC6CFE7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AC7A0BF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AC6CFEC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC6CFE7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AC6CFEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC6CF450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SpeechTranscriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CFF9C(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.TranscriptionOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.ReportingOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.ResultAttributeOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t static SpeechTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_26_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static SpeechTranscriber.supportedLocale(equivalentTo:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v3);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AC6AEC88;

  return sub_1AC740D54();
}

uint64_t static SpeechTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_26_9();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t SpeechTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale, v1);
  return v5;
}

uint64_t sub_1AC6D04F4()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

uint64_t sub_1AC6D0588()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_69_1();

  return v4(v3);
}

uint64_t SpeechTranscriber.results.getter()
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

void static SpeechTranscriber.Result.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 9);
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_57_0();
    if (sub_1AC7A06A8())
    {

      sub_1AC6285F8(v2, v3, v4);
    }
  }
}

void SpeechTranscriber.Result.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 72);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_170();
  sub_1AC7A06E8();

  sub_1AC6336F0(a1, v8, v9);
}

uint64_t SpeechTranscriber.Result.hashValue.getter()
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

double sub_1AC6D099C()
{
  v0.n128_f64[0] = SpeechTranscriber.Result.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t SpeechTranscriber.multisegmentResults.getter()
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

uint64_t SpeechTranscriber.muxMultisegmentResults.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_49_1();
  v1 = OUTLINED_FUNCTION_77_0();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D058, &qword_1AC7AD060);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v3, &qword_1EB56C348, &qword_1AC7A8820, v4);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC6D0C0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6D0C30, 0, 0);
}

void sub_1AC6D0C30()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D108, &qword_1AC7AD730);
  sub_1AC7A0BA8();
  v2 = 0;
  v45 = v1 + 64;
  v47 = v1;
  OUTLINED_FUNCTION_13_5();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v46 = v9 + 64;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
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

uint64_t static SpeechTranscriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
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

uint64_t SpeechTranscriber.MultisegmentResult.hash(into:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t SpeechTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  SpeechTranscriber.MultisegmentResult.hash(into:)(v6, v0, v1, v2, v3, v4);
  return sub_1AC7A0EC8();
}

double sub_1AC6D1658()
{
  v0.n128_f64[0] = SpeechTranscriber.MultisegmentResult.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC6D16A0(uint64_t a1)
{
  sub_1AC7A0E78();
  SpeechTranscriber.MultisegmentResult.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D16DC()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_1AC79FB18();
  v1[5] = swift_task_alloc();
  sub_1AC79FF48();
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC6D1D14();
}

uint64_t sub_1AC6D17C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v1 + 72) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D18B8, 0, 0);
}

uint64_t sub_1AC6D18B8()
{
  v16 = v0;
  if (*(v0 + 72))
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_1AC6D1BE8;

    return sub_1AC743644();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v3 = sub_1AC79FDE8();
    __swift_project_value_buffer(v3, qword_1ED9386C8);

    v4 = sub_1AC79FDC8();
    v5 = sub_1AC7A05F8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      sub_1AC6D3290(&qword_1EB56B458, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
      v8 = sub_1AC7A0CC8();
      v10 = sub_1AC5CFE74(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1AC5BC000, v4, v5, "SpeechTranscriber cannot be initialized with an unsupported locale: %s.\nPlease consult SpeechTranscriber.supportedLocales.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B26EAB10](v7, -1, -1);
      MEMORY[0x1B26EAB10](v6, -1, -1);
    }

    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB56DF80;
    sub_1AC79FA88();
    v12 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v12, v13);
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1AC6D1BE8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1AC6D1D14()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC6D1D9C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v1 + 32) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D1E94, 0, 0);
}

uint64_t sub_1AC6D1E94()
{
  v1 = v0[4];
  v2 = v0[2] + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t SpeechTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SpeechTranscriber.__deallocating_deinit()
{
  SpeechTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6D225C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32E0;

  return SpeechTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6D22E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6AEC88;

  return sub_1AC6D16DC();
}

uint64_t sub_1AC6D2380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6BB1B8;

  return sub_1AC6D1D14();
}

uint64_t sub_1AC6D24AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D508;

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC6D2538(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC6D32DC;

  return static SpeechTranscriber.supportedLocale(equivalentTo:)(a1, a2);
}

unint64_t sub_1AC6D262C()
{
  result = qword_1EB56D060;
  if (!qword_1EB56D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D060);
  }

  return result;
}

unint64_t sub_1AC6D2684()
{
  result = qword_1EB56D068;
  if (!qword_1EB56D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D068);
  }

  return result;
}

unint64_t sub_1AC6D2720()
{
  result = qword_1EB56D080;
  if (!qword_1EB56D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D080);
  }

  return result;
}

unint64_t sub_1AC6D27BC()
{
  result = qword_1EB56D098;
  if (!qword_1EB56D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D098);
  }

  return result;
}

unint64_t sub_1AC6D2858()
{
  result = qword_1EB56D0B0;
  if (!qword_1EB56D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0B0);
  }

  return result;
}

unint64_t sub_1AC6D28B0()
{
  result = qword_1EB56D0B8;
  if (!qword_1EB56D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0B8);
  }

  return result;
}

unint64_t sub_1AC6D2908()
{
  result = qword_1EB56D0C0;
  if (!qword_1EB56D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0C0);
  }

  return result;
}

uint64_t sub_1AC6D2984(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6D3290(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber, &protocol conformance descriptor for SpeechTranscriber);
  result = sub_1AC6D3290(&qword_1EB56C938, type metadata accessor for SpeechTranscriber, &unk_1AC7AD51C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SpeechTranscriber(uint64_t a1)
{
  result = qword_1EB56B420;
  if (!qword_1EB56B420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6D2A54(uint64_t a1)
{
  result = sub_1AC6D3290(&qword_1EB56C938, type metadata accessor for SpeechTranscriber, &unk_1AC7AD51C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D2AAC(uint64_t a1)
{
  result = sub_1AC6D3290(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber, &protocol conformance descriptor for SpeechTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D2B54(uint64_t a1)
{
  result = sub_1AC79FB18();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t destroy for SpeechTranscriber.Preset()
{
}

uint64_t *initializeWithCopy for SpeechTranscriber.Preset(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for SpeechTranscriber.Preset(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

_OWORD *assignWithTake for SpeechTranscriber.Preset(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechTranscriber.Preset(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SpeechTranscriber.Preset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for SpeechTranscriber.ModelOptions(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for SpeechTranscriber.ModelOptions(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.TranscriptionOption(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ModelOptions.TaskName(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC6D323C()
{
  result = qword_1EB56D100;
  if (!qword_1EB56D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D100);
  }

  return result;
}

uint64_t sub_1AC6D3290(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1AC6D32F8(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    a2(0, v3, 0);
    v8 = a3(a1);
    v9 = v28;
    v10 = 0;
    v11 = a1 + 56;
    v12 = 1;
    v13 = -2;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v12 << *(a1 + 32))
      {
        v14 = v8 >> 6;
        v15 = v12 << v8;
        if ((*(v11 + 8 * (v8 >> 6)) & (v12 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_25;
        }

        v16 = *(*(a1 + 48) + v8);
        v18 = *(v29 + 16);
        v17 = *(v29 + 24);
        if (v18 >= v17 >> 1)
        {
          a2(v17 > 1, v18 + 1, 1);
          OUTLINED_FUNCTION_40_6();
        }

        *(v29 + 16) = v18 + 1;
        *(v29 + v18 + 32) = v16;
        if (v7)
        {
          goto LABEL_29;
        }

        v19 = v12 << *(a1 + 32);
        if (v8 >= v19)
        {
          goto LABEL_26;
        }

        v20 = *(v11 + 8 * v14);
        if ((v20 & v15) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_28;
        }

        v21 = v20 & (v13 << (v8 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v14 << 6;
          v23 = v14 + 1;
          v24 = (a1 + 64 + 8 * v14);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1AC637E98(v8, v6, 0);
              OUTLINED_FUNCTION_40_6();
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v8, v6, 0);
          OUTLINED_FUNCTION_40_6();
        }

LABEL_19:
        if (++v10 == v9)
        {
          return;
        }

        v7 = 0;
        v6 = *(a1 + 36);
        v8 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void Transcriber.Result.text.getter()
{
  if (*(*(v0 + 72) + 16))
  {
    sub_1AC79F5C8();
    OUTLINED_FUNCTION_80();
    v1 = OUTLINED_FUNCTION_42_6();

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

__n128 Transcriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t Transcriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2, v3);
}

double Transcriber.MultisegmentResult.latticeMitigatorResult.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
}

__n128 Transcriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
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

void Transcriber.selectedLocales.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = sub_1AC79FB18();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = objc_opt_self();
  (*(v24 + 16))(v27, *(v20 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v23);
  sub_1AC79F978();
  (*(v24 + 8))(v27, v23);
  v32 = sub_1AC79FF58();

  v33 = [v31 languageCode_];

  sub_1AC79FF68();
  sub_1AC79F968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1AC7A6D00;
  (*(v24 + 32))(v35 + v34, v30, v23);
  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.locale.getter()
{
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_42_6();

  return v1(v0);
}

uint64_t Transcriber.__allocating_init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v0;
}

void Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v3 = v0;
  v73 = v4;
  v6 = v5;
  v69 = v7;
  v9 = v8;
  v11 = v10;
  v75 = v12;
  v76 = v3;
  v65 = *v3;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v71 = v14;
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v70 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D110, &qword_1AC7AD738);
  OUTLINED_FUNCTION_167(v17);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_1();
  v19 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  v22 = OUTLINED_FUNCTION_167(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v68 = v23 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v58 - v29;
  v67 = *v11;
  v74 = v9;
  OUTLINED_FUNCTION_50_7();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v19) == 1)
  {
    sub_1AC5C720C(v2, &qword_1EB56D110, &qword_1AC7AD738);
    v31 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    v32 = v28;
    v33 = 1;
  }

  else
  {
    v64 = type metadata accessor for Transcriber.ModelOptions;
    sub_1AC6D7FEC();
    sub_1AC5C6E6C();
    v34 = v19[6];
    v62 = *(v1 + v19[5]);
    v35 = *(v1 + v34 + 8);
    v63 = *(v1 + v34);
    v66 = v6;
    v36 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    sub_1AC5C6E6C();
    v37 = *(v1 + v19[9]);
    v38 = v19[13];
    v39 = *(v1 + v19[12]);
    v40 = (v1 + v19[8]);
    v41 = v40[1];
    v60 = *v40;
    LODWORD(v40) = *(v1 + v19[11]);
    v58 = *(v1 + v19[10]);
    v59 = v40;
    v42 = v19[14];
    v43 = *(v1 + v19[15]);
    v61 = *(v1 + v38);
    v44 = *(v1 + v42);
    v45 = v44;

    sub_1AC6D8044(v1, v64);
    v28[v36[5]] = v62;
    v46 = &v28[v36[6]];
    *v46 = v63;
    *(v46 + 1) = v35;
    *&v28[v36[9]] = v37;
    v47 = &v28[v36[8]];
    *v47 = v60;
    *(v47 + 1) = v41;
    v6 = v66;
    v48 = v59;
    v28[v36[10]] = v58;
    v28[v36[11]] = v48;
    *&v28[v36[12]] = v39;
    *&v28[v36[15]] = v43;
    v28[v36[13]] = v61;
    *&v28[v36[14]] = v44;
    v32 = v28;
    v33 = 0;
    v31 = v36;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  sub_1AC637E08();
  sub_1AC6D32F8(v69, sub_1AC63129C, sub_1AC6C2CA0);
  v50 = v49;

  sub_1AC6090E4(v50);
  sub_1AC6D32F8(v6, sub_1AC63175C, sub_1AC6C2CA0);
  v52 = v51;

  sub_1AC6091C8(v52);
  v53 = v71;
  v54 = v75;
  v55 = v72;
  (*(v71 + 16))(v70, v75, v72);
  v77 = v67;
  sub_1AC5C6E6C();
  type metadata accessor for TranscriberCommon(0);
  swift_allocObject();
  sub_1AC7489A0();
  v57 = v56;
  sub_1AC5C720C(v74, &qword_1EB56D110, &qword_1AC7AD738);
  (*(v53 + 8))(v54, v55);
  sub_1AC5C720C(v30, &qword_1EB56C318, &unk_1AC7A8790);
  v76[2] = v57;
  OUTLINED_FUNCTION_105();
}

uint64_t type metadata accessor for Transcriber.ModelOptions(uint64_t a1)
{
  result = qword_1EB56B2D0;
  if (!qword_1EB56B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Transcriber.taskHint.getter(_BYTE *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint);
  if (v2 == 16)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

void Transcriber.modelOptions.getter()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_602();
  v5 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_51();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1AC5C720C(v0, &qword_1EB56C318, &unk_1AC7A8790);
    v10 = type metadata accessor for Transcriber.ModelOptions(0);
    v11 = v2;
    v12 = 1;
  }

  else
  {
    sub_1AC6D7FEC();
    sub_1AC5C6E6C();
    v13 = v5[6];
    v29 = *(v9 + v5[5]);
    v14 = *(v9 + v13 + 8);
    v30 = *(v9 + v13);
    v15 = type metadata accessor for Transcriber.ModelOptions(0);
    sub_1AC5C6E6C();
    v16 = *(v9 + v5[9]);
    v17 = v5[13];
    v18 = *(v9 + v5[12]);
    v19 = (v9 + v5[8]);
    v20 = *(v9 + v5[10]);
    v21 = *(v9 + v5[11]);
    v22 = *v19;
    v23 = v19[1];
    v24 = *(v9 + v5[15]);
    v27 = v21;
    v28 = *(v9 + v17);

    sub_1AC6D8044(v9, type metadata accessor for TranscriberCommon.ModelOptions);
    *(v2 + v15[5]) = v29;
    v25 = (v2 + v15[6]);
    *v25 = v30;
    v25[1] = v14;
    *(v2 + v15[9]) = v16;
    v26 = (v2 + v15[8]);
    *v26 = v22;
    v26[1] = v23;
    *(v2 + v15[10]) = v20;
    *(v2 + v15[11]) = v27;
    *(v2 + v15[12]) = v18;
    *(v2 + v15[15]) = v24;
    *(v2 + v15[13]) = v28;
    *(v2 + v15[14]) = 0;
    v11 = v2;
    v12 = 0;
    v10 = v15;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:enableFullPayloadCorrection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, char a13)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v15 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_2_16(v15);
  OUTLINED_FUNCTION_17_7();
  result = sub_1AC637E08();
  *(v14 + v13[9]) = a6;
  v17 = (v14 + v13[8]);
  *v17 = a8;
  v17[1] = a9;
  *(v14 + v13[10]) = a10;
  *(v14 + v13[11]) = a11;
  *(v14 + v13[12]) = a7;
  *(v14 + v13[15]) = a12;
  *(v14 + v13[13]) = a13;
  *(v14 + v13[14]) = 0;
  return result;
}

uint64_t sub_1AC6D43C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_4();
  v16 = v15;
  v40 = v17;
  v19 = *(*(v14 + 16) + *v18);
  OUTLINED_FUNCTION_117_0();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v24)
    {
      break;
    }

    v22 = *(v19 + 56 + 8 * v28);
    ++v26;
    if (v22)
    {
      v26 = v28;
      do
      {
LABEL_6:
        v29 = *(*(v19 + 48) + (__clz(__rbit64(v22)) | (v26 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = v16(0, *(v27 + 16) + 1, 1, v27);
          v27 = result;
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          result = v16(v30 > 1, v31 + 1, 1, v27);
          v27 = result;
        }

        v22 &= v22 - 1;
        *(v27 + 16) = v31 + 1;
        *(v27 + v31 + 32) = v29;
      }

      while (v22);
    }
  }

  OUTLINED_FUNCTION_14();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40, a11, a12, a13, a14);
}

uint64_t static Transcriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for TranscriberCommon(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748000();
}

uint64_t static Transcriber.supportedLocale(equivalentTo:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TranscriberCommon(0);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1AC5C5380;

  return sub_1AC740D54();
}

uint64_t static Transcriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for TranscriberCommon(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC74809C();
}

uint64_t sub_1AC6D4720()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

uint64_t Transcriber.requestResultAtEndpoints(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D47B8()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_109_1(v1);

  return sub_1AC742780(v2);
}

uint64_t sub_1AC6D4858()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7429DC();
}

uint64_t sub_1AC6D48F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC742BD0();
}

uint64_t Transcriber.setLeftContextText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D498C()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC742DC4(v2, v3);
}

uint64_t Transcriber.setRightContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D4A30()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC742FBC(v2, v3);
}

uint64_t Transcriber.setSelectedText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D4AD4()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC743210(v2, v3);
}

uint64_t Transcriber.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_49_1();
  v1 = OUTLINED_FUNCTION_77_0();
  v2(v1);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v3, &qword_1EB56C330, &qword_1AC7A8800, v4);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

void static Transcriber.Result.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_51();
    if (sub_1AC7A06A8())
    {
      v2 = OUTLINED_FUNCTION_39();

      sub_1AC6285F8(v2, v3, v4);
    }
  }
}

void Transcriber.Result.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC7A0568();
  sub_1AC7A06E8();
  v6 = OUTLINED_FUNCTION_50_7();

  sub_1AC6336F0(v6, v7, v8);
}

uint64_t Transcriber.Result.hashValue.getter()
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

double sub_1AC6D4E88()
{
  v0.n128_f64[0] = Transcriber.Result.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t Transcriber.multisegmentResults.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_49_1();
  v1 = OUTLINED_FUNCTION_77_0();
  v2(v1);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v3, &qword_1EB56C340, &qword_1AC7A8810, v4);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t Transcriber.muxMultisegmentResults.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_49_1();
  v1 = OUTLINED_FUNCTION_77_0();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D118, &qword_1AC7AD7C0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_51();
  sub_1AC5C8BE0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC6D50E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6D510C, 0, 0);
}

void sub_1AC6D510C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D188, &qword_1AC7ADD98);
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
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
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
    OUTLINED_FUNCTION_44();

    v43();
  }
}

uint64_t static Transcriber.MultisegmentResult.split(result:)()
{
  OUTLINED_FUNCTION_50_0();
  memcpy(__dst, v2, 0x101uLL);
  return sub_1AC62C474(v1, v0, __dst);
}

uint64_t static Transcriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
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

  OUTLINED_FUNCTION_51();
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

uint64_t Transcriber.MultisegmentResult.hash(into:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 72);
  v18 = *(v6 + 104);
  v9 = *(v6 + 160);
  v16 = *(v6 + 168);
  v17 = *(v6 + 176);
  v19 = *(v6 + 192);
  v20 = *(v6 + 208);
  v21 = *(v6 + 240);
  v14 = *(v6 + 184);
  v15 = *(v6 + 248);
  v22 = *(v6 + 256);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_17_7();
  sub_1AC7A06E8();
  sub_1AC6336F0(a1, v8, v10);
  sub_1AC633C28();
  OUTLINED_FUNCTION_50_7();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v18);
  sub_1AC7A0568();
  if (v9)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v9);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v19)
  {
    OUTLINED_FUNCTION_80_1();
    if (v20)
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
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v21);
  if (v22)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t Transcriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  Transcriber.MultisegmentResult.hash(into:)(v6, v0, v1, v2, v3, v4);
  return sub_1AC7A0EC8();
}

double sub_1AC6D5B28()
{
  v0.n128_f64[0] = Transcriber.MultisegmentResult.range.getter(v11);
  *&result = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC6D5B70(uint64_t a1)
{
  sub_1AC7A0E78();
  Transcriber.MultisegmentResult.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D5BC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748138();
}

uint64_t sub_1AC6D5C44()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_82();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t Transcriber.ModelOptions.geoLMRegionID.getter()
{
  type metadata accessor for Transcriber.ModelOptions(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t Transcriber.ModelOptions.taskForMemoryLock.getter()
{
  type metadata accessor for Transcriber.ModelOptions(0);

  return OUTLINED_FUNCTION_39();
}

double Transcriber.ModelOptions.speechProfiles.getter()
{
  type metadata accessor for Transcriber.ModelOptions(0);

  return result;
}

double Transcriber.ModelOptions.userIdMask.getter()
{
  type metadata accessor for Transcriber.ModelOptions(0);

  return result;
}

void *Transcriber.ModelOptions.languageModelCustomizationConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for Transcriber.ModelOptions(0) + 56));
  v2 = v1;
  return v1;
}

double Transcriber.ModelOptions.speechProfileContainers.getter()
{
  type metadata accessor for Transcriber.ModelOptions(0);

  return result;
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:enableFullPayloadCorrection:languageModelCustomizationConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v15 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_2_16(v15);
  OUTLINED_FUNCTION_17_7();
  v16 = sub_1AC637E08();
  OUTLINED_FUNCTION_32_7(v16, v17, v18, v19, v20, v21, v22, v23, v36, v39, a6);
  *v24 = v25;
  v24[1] = a9;
  *(v14 + *(v13 + 40)) = a10;
  OUTLINED_FUNCTION_22_6(v26, v27, v28, v29, v30, v31, v32, v33, v37, v40, v42);
  OUTLINED_FUNCTION_41_7(v34, v38, v41, v44, v45);
  *(v14 + v35) = a12;
  *(v14 + *(v13 + 56)) = a13;
}

void static Transcriber.ModelOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v5 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v79 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v9 = OUTLINED_FUNCTION_167(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v76 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v77 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v76 - v21;
  v23 = *(v20 + 48);
  v78 = v4;
  sub_1AC5C6E6C();
  v24 = v2;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v22);
  if (v25)
  {
    OUTLINED_FUNCTION_14_7(&v22[v23]);
    if (v25)
    {
      sub_1AC5C720C(v22, &qword_1EB56BB68, &qword_1AC7A8490);
      goto LABEL_12;
    }

LABEL_9:
    v26 = v22;
LABEL_10:
    sub_1AC5C720C(v26, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_13;
  }

  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(&v22[v23]);
  if (v25)
  {
    (*(v79 + 8))(v14, v5);
    goto LABEL_9;
  }

  v27 = v79;
  (*(v79 + 32))(v0, &v22[v23], v5);
  OUTLINED_FUNCTION_1_14();
  sub_1AC6D84E0(v28, 255, v29, MEMORY[0x1E6968FC8]);
  v30 = sub_1AC79FED8();
  v31 = *(v27 + 8);
  v31(v0, v5);
  v31(v14, v5);
  sub_1AC5C720C(v22, &qword_1EB56BB68, &qword_1AC7A8490);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v32 = type metadata accessor for Transcriber.ModelOptions(0);
  v33 = v78;
  if (*(v78 + *(v32 + 20)) != *(v24 + *(v32 + 20)))
  {
    goto LABEL_13;
  }

  v34 = v32;
  v35 = v24;
  v36 = *(v32 + 24);
  v37 = (v78 + v36);
  v38 = *(v78 + v36 + 8);
  v39 = (v24 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_13;
    }

    v41 = *v37 == *v39 && v38 == v40;
    if (!v41 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v40)
  {
    goto LABEL_13;
  }

  v42 = *(v15 + 48);
  v43 = v77;
  sub_1AC5C6E6C();
  v44 = v43;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v43);
  if (!v25)
  {
    v45 = v76;
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_14_7(v43 + v42);
    if (!v46)
    {
      v49 = v79;
      (*(v79 + 32))(v0, v44 + v42, v5);
      OUTLINED_FUNCTION_1_14();
      sub_1AC6D84E0(v50, 255, v51, MEMORY[0x1E6968FC8]);
      v52 = v45;
      v53 = sub_1AC79FED8();
      v54 = *(v49 + 8);
      v54(v0, v5);
      v54(v52, v5);
      sub_1AC5C720C(v44, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v53 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

    v47 = OUTLINED_FUNCTION_39();
    v48(v47);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_14_7(v43 + v42);
  if (!v25)
  {
LABEL_31:
    v26 = v43;
    goto LABEL_10;
  }

  sub_1AC5C720C(v43, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_33:
  v55 = v34[8];
  v56 = (v33 + v55);
  v57 = *(v33 + v55 + 8);
  v58 = (v35 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59)
    {
      goto LABEL_13;
    }

    v60 = *v56 == *v58 && v57 == v59;
    if (!v60 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v59)
  {
    goto LABEL_13;
  }

  sub_1AC6290FC();
  if (v61)
  {
    OUTLINED_FUNCTION_39_6();
    if (v25)
    {
      OUTLINED_FUNCTION_39_6();
      if (v25)
      {
        v62 = v34[12];
        v63 = *(v33 + v62);
        v64 = *(v35 + v62);
        if (v63)
        {
          if (!v64)
          {
            goto LABEL_13;
          }

          sub_1AC630858(v63, v64);
          v66 = v65;

          if ((v66 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v64)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_39_6();
        if (!v25)
        {
          goto LABEL_13;
        }

        v67 = v34[14];
        v68 = *(v33 + v67);
        v69 = *(v35 + v67);
        if (v68)
        {
          if (!v69)
          {
            goto LABEL_13;
          }

          sub_1AC6D809C();
          v70 = v69;
          v71 = v68;
          v72 = sub_1AC7A0758();

          if ((v72 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v69)
        {
          goto LABEL_13;
        }

        v73 = v34[15];
        v74 = *(v78 + v73);
        v75 = *(v35 + v73);
        if (v74 && v75)
        {

          sub_1AC629308(v74, v75);
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_105();
}

void Transcriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v34 = OUTLINED_FUNCTION_167(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v40, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v28 + 32))(v32, v40, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_1_14();
    sub_1AC6D84E0(v41, 255, v42, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_42_6();
    sub_1AC79FE58();
    (*(v28 + 8))(v32, v26);
  }

  v43 = type metadata accessor for Transcriber.ModelOptions(0);
  sub_1AC7A0E98();
  if (*(v23 + v43[6] + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v37, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v28 + 32))(v32, v37, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_1_14();
    sub_1AC6D84E0(v44, 255, v45, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_42_6();
    sub_1AC79FE58();
    (*(v28 + 8))(v32, v26);
  }

  if (*(v23 + v43[8] + 8))
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
  sub_1AC7A0E98();
  v46 = *(v23 + v43[12]);
  if (v46)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v25, v46);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC7A0E98();
  v47 = *(v23 + v43[14]);
  if (v47)
  {
    OUTLINED_FUNCTION_83();
    v48 = v47;
    sub_1AC7A0768();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v23 + v43[15]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  Transcriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6A6C(uint64_t a1)
{
  sub_1AC7A0E78();
  Transcriber.ModelOptions.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6B14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D6B78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC74338C();
}

uint64_t sub_1AC6D6C10()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC743518();
}

uint64_t sub_1AC6D6CA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7483E0();
}

uint64_t sub_1AC6D6D2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  v6 = *v3;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_1AC6D6E44()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC748624();
}

uint64_t sub_1AC6D6EEC()
{
  OUTLINED_FUNCTION_85();
  v1[21] = v0;
  v2 = sub_1AC79FB18();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6D6FA8, 0, 0);
}

uint64_t sub_1AC6D6FA8()
{
  v8 = v0;
  v1 = v0[21];
  v2 = objc_opt_self();
  v0[25] = v2;
  if (*(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) == 16)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v7 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint);
    v4 = sub_1AC6F4C94(&v7);
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_1AC6D7110;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1AC70C6FC;
    v0[13] = &block_descriptor_6;
    v0[14] = v5;
    [v3 supportedLanguagesForTaskHint:v4 completion:v0 + 10];
    v2 = (v0 + 2);
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1AC6D7110()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D71E4, 0, 0);
}

uint64_t sub_1AC6D71E4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  (*(v4 + 16))(v1, *(v0[21] + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v3);
  sub_1AC79F978();
  (*(v4 + 8))(v1, v3);
  v6 = sub_1AC79FF58();

  v7 = [v2 languageCode_];

  v8 = sub_1AC79FF68();
  v10 = v9;

  v0[18] = v8;
  v0[19] = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 18;
  v12 = sub_1AC6F488C(sub_1AC637CD4, v11, v5);

  OUTLINED_FUNCTION_82();

  return v13(v12);
}

uint64_t sub_1AC6D7368(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6D737C()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_109_1(v1);

  return sub_1AC743644();
}

uint64_t Transcriber.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC6D75F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return Transcriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6D7684(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC6D7368(a1);
}

uint64_t sub_1AC6D771C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC6D6EEC();
}

uint64_t sub_1AC6D784C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return static Transcriber.supportedLocales.getter();
}

uint64_t sub_1AC6D78D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC5C4D48;

  return static Transcriber.supportedLocale(equivalentTo:)(a1, a2);
}

void Transcriber.__allocating_init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D110, &qword_1AC7AD738);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  (*(v11 + 16))(v0, v6, v9);
  sub_1AC6F4A30(v4, &v13);
  sub_1AC5C6E6C();
  swift_allocObject();
  Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  sub_1AC5C720C(v2, &qword_1EB56D110, &qword_1AC7AD738);
  (*(v11 + 8))(v6, v9);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6D7B4C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:taskForMemoryLock:atypicalSpeech:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1AC637E08();
  v12 = type metadata accessor for Transcriber.ModelOptions(0);
  *(v11 + v12[5]) = v9;
  v13 = (v11 + v12[6]);
  *v13 = 0;
  v13[1] = 0;
  sub_1AC637E08();
  *(v11 + v12[9]) = v7;
  v14 = (v11 + v12[8]);
  *v14 = v5;
  v14[1] = v3;
  *(v11 + v12[10]) = v1;
  *(v11 + v12[11]) = 0;
  *(v11 + v12[12]) = 0;
  *(v11 + v12[15]) = 0;
  *(v11 + v12[13]) = 0;
  *(v11 + v12[14]) = 0;
  OUTLINED_FUNCTION_105();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)()
{
  OUTLINED_FUNCTION_21_4();
  v11 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v8 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_7_10(v8);
  *v9 = 0;
  v9[1] = 0;
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  *(v2 + v8[9]) = v1;
  v10 = (v2 + v8[8]);
  *v10 = v0;
  v10[1] = v7;
  *(v2 + v8[10]) = v5;
  *(v2 + v8[11]) = v11;
  *(v2 + v8[12]) = 0;
  *(v2 + v8[15]) = 0;
  *(v2 + v8[13]) = 0;
  *(v2 + v8[14]) = 0;
  OUTLINED_FUNCTION_14();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_21_4();
  v36 = v23;
  v25 = v24;
  v27 = v26;
  v37 = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v33 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_7_10(v33);
  *v34 = 0;
  v34[1] = 0;
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  *(v32 + v33[9]) = v30;
  v35 = (v32 + v33[8]);
  *v35 = v27;
  v35[1] = v25;
  *(v32 + v33[10]) = v36;
  *(v32 + v33[11]) = a23;
  *(v32 + v33[12]) = v37;
  *(v32 + v33[15]) = 0;
  *(v32 + v33[13]) = 0;
  *(v32 + v33[14]) = 0;
  OUTLINED_FUNCTION_14();
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  OUTLINED_FUNCTION_4_9();
  sub_1AC637E08();
  v14 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_2_16(v14);
  v15 = sub_1AC637E08();
  *(v12 + v11[9]) = a6;
  v16 = (v12 + v11[8]);
  *v16 = a8;
  v16[1] = a9;
  *(v12 + v11[10]) = a10;
  OUTLINED_FUNCTION_22_6(v15, v17, v18, v19, v20, v21, v22, v23, v25, v26, a11);
  *(v12 + v24) = a7;
  *(v12 + v11[15]) = 0;
  *(v12 + v11[13]) = 0;
  *(v12 + v11[14]) = 0;
}

void Transcriber.ModelOptions.init(supplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfiles:userIdMask:taskForMemoryLock:atypicalSpeech:enableParallelLoading:speechProfileContainers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_17_7();
  sub_1AC637E08();
  v12 = type metadata accessor for Transcriber.ModelOptions(0);
  OUTLINED_FUNCTION_2_16(v12);
  OUTLINED_FUNCTION_17_7();
  v13 = sub_1AC637E08();
  OUTLINED_FUNCTION_32_7(v13, v14, v15, v16, v17, v18, v19, v20, v33, v36, a6);
  *v21 = v22;
  v21[1] = a9;
  *(v11 + *(v10 + 40)) = a10;
  OUTLINED_FUNCTION_22_6(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37, v39);
  OUTLINED_FUNCTION_41_7(v31, v35, v38, v41, v42);
  *(v11 + v32) = 0;
  *(v11 + *(v10 + 56)) = 0;
}

uint64_t sub_1AC6D7FEC()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC6D8044(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1AC6D809C()
{
  result = qword_1EB56D120;
  if (!qword_1EB56D120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56D120);
  }

  return result;
}

unint64_t sub_1AC6D80E4()
{
  result = qword_1EB56D128;
  if (!qword_1EB56D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D128);
  }

  return result;
}

unint64_t sub_1AC6D813C()
{
  result = qword_1EB56D130;
  if (!qword_1EB56D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D130);
  }

  return result;
}

unint64_t sub_1AC6D8224()
{
  result = qword_1EB56B2B0;
  if (!qword_1EB56B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2B0);
  }

  return result;
}

unint64_t sub_1AC6D82C0()
{
  result = qword_1EB56B2C0;
  if (!qword_1EB56B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2C0);
  }

  return result;
}

uint64_t sub_1AC6D833C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1AC6D84E0(&qword_1EB56B2A8, a2, type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
  result = sub_1AC6D84E0(&qword_1EB56B2A0, v3, type metadata accessor for Transcriber, &unk_1AC7ADBA4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC6D83E4(uint64_t a1, uint64_t a2)
{
  result = sub_1AC6D84E0(&qword_1EB56B2A0, a2, type metadata accessor for Transcriber, &unk_1AC7ADBA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D843C(uint64_t a1, uint64_t a2)
{
  result = sub_1AC6D84E0(&qword_1EB56B2A8, a2, type metadata accessor for Transcriber, &protocol conformance descriptor for Transcriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D84E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t *initializeBufferWithCopyOfBuffer for Transcriber.ModelOptions(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F7F8();
    if (__swift_getEnumTagSinglePayload(a2, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    }

    v10 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    v14 = a3[7];

    if (__swift_getEnumTagSinglePayload(a2 + v14, 1, v7))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(a1 + v14, a2 + v14, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1 + v14, a2 + v14, v7);
      __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v7);
    }

    v16 = a3[8];
    v17 = a3[9];
    v18 = (a1 + v16);
    v19 = (a2 + v16);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    *(a1 + v17) = *(a2 + v17);
    v21 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + v21) = *(a2 + v21);
    v22 = a3[13];
    *(a1 + a3[12]) = *(a2 + a3[12]);
    *(a1 + v22) = *(a2 + v22);
    v23 = a3[14];
    v24 = a3[15];
    v25 = *(a2 + v23);
    *(a1 + v23) = v25;
    *(a1 + v24) = *(a2 + v24);

    v26 = v25;
  }

  return a1;
}

uint64_t destroy for Transcriber.ModelOptions(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a2 + 28);
  if (!__swift_getEnumTagSinglePayload(a1 + v5, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1 + v5, v4);
  }
}

char *initializeWithCopy for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v11;
  v12 = a3[7];

  if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v6))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(&a1[v12], &a2[v12], v6);
    __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v6);
  }

  v14 = a3[8];
  v15 = a3[9];
  v16 = &a1[v14];
  v17 = &a2[v14];
  v18 = *(v17 + 1);
  *v16 = *v17;
  *(v16 + 1) = v18;
  *&a1[v15] = *&a2[v15];
  v19 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v19] = a2[v19];
  v20 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v20] = a2[v20];
  v21 = a3[14];
  v22 = a3[15];
  v23 = *&a2[v21];
  *&a1[v21] = v23;
  *&a1[v22] = *&a2[v22];

  v24 = v23;

  return a1;
}

char *assignWithCopy for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = *(v6 - 8);
  if (v8)
  {
    (*(v9 + 8))(a1, v6);
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(a1, a2, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  v11 = a3[6];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  v14 = a3[7];
  v15 = __swift_getEnumTagSinglePayload(&a1[v14], 1, v6);
  v16 = __swift_getEnumTagSinglePayload(&a2[v14], 1, v6);
  if (!v15)
  {
    v17 = *(v6 - 8);
    if (!v16)
    {
      (*(v17 + 24))(&a1[v14], &a2[v14], v6);
      goto LABEL_13;
    }

    (*(v17 + 8))(&a1[v14], v6);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v14], &a2[v14], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v6 - 8) + 16))(&a1[v14], &a2[v14], v6);
  __swift_storeEnumTagSinglePayload(&a1[v14], 0, 1, v6);
LABEL_13:
  v19 = a3[8];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *v20 = *v21;
  *(v20 + 1) = *(v21 + 1);

  *&a1[a3[9]] = *&a2[a3[9]];

  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  *&a1[a3[12]] = *&a2[a3[12]];

  a1[a3[13]] = a2[a3[13]];
  v22 = a3[14];
  v23 = *&a1[v22];
  v24 = *&a2[v22];
  *&a1[v22] = v24;
  v25 = v24;

  *&a1[a3[15]] = *&a2[a3[15]];

  return a1;
}

char *initializeWithTake for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[7];
  if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v9], &a2[v9], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(&a1[v9], &a2[v9], v6);
    __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v6);
  }

  v11 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v12] = a2[v12];
  v13 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v13] = a2[v13];
  v14 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v14] = *&a2[v14];
  return a1;
}

char *assignWithTake for Transcriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = *(v6 - 8);
  if (v8)
  {
    (*(v9 + 8))(a1, v6);
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(a1, a2, v6);
LABEL_7:
  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  v16 = a3[7];
  v17 = __swift_getEnumTagSinglePayload(&a1[v16], 1, v6);
  v18 = __swift_getEnumTagSinglePayload(&a2[v16], 1, v6);
  if (!v17)
  {
    v19 = *(v6 - 8);
    if (!v18)
    {
      (*(v19 + 40))(&a1[v16], &a2[v16], v6);
      goto LABEL_13;
    }

    (*(v19 + 8))(&a1[v16], v6);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v16], &a2[v16], *(*(v20 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v6 - 8) + 32))(&a1[v16], &a2[v16], v6);
  __swift_storeEnumTagSinglePayload(&a1[v16], 0, 1, v6);
LABEL_13:
  v21 = a3[8];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v25 = *v23;
  v24 = *(v23 + 1);
  *v22 = v25;
  *(v22 + 1) = v24;

  *&a1[a3[9]] = *&a2[a3[9]];

  v26 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v26] = a2[v26];
  *&a1[a3[12]] = *&a2[a3[12]];

  v27 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  v28 = *&a1[v27];
  *&a1[v27] = *&a2[v27];

  *&a1[a3[15]] = *&a2[a3[15]];

  return a1;
}

void sub_1AC6D9370(uint64_t a1)
{
  sub_1AC622E1C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for SFCustomLanguageModelData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1AC6D94CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1AC6D963C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_16_8();
  v6 = type metadata accessor for SpeechAnalyzer.Options(v5);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    sub_1AC5C720C(a1, &qword_1EB56C7D0, &qword_1AC7ACB40);
    type metadata accessor for AnalysisOptions(0);
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_105();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    sub_1AC6DBCF0();
    OUTLINED_FUNCTION_7_11();
    if (a1)
    {
      OUTLINED_FUNCTION_24_10(v13);
    }

    else
    {
      OUTLINED_FUNCTION_23_7();
    }

    v14 = OUTLINED_FUNCTION_22_7();
    v15(v14);
    v16 = OUTLINED_FUNCTION_25_9();
    v17(v16);
    v18 = type metadata accessor for AnalysisOptions(0);
    OUTLINED_FUNCTION_9_13(v18);
    sub_1AC6DBD44();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6D980C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_16_8();
  v6 = type metadata accessor for AnalysisOptions(v5);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    sub_1AC5C720C(a1, &qword_1EB56C7E8, &qword_1AC7AA900);
    type metadata accessor for SpeechAnalyzer.Options(0);
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_105();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    sub_1AC6DBCF0();
    OUTLINED_FUNCTION_7_11();
    if (a1)
    {
      OUTLINED_FUNCTION_24_10(v13);
    }

    else
    {
      OUTLINED_FUNCTION_23_7();
    }

    v14 = OUTLINED_FUNCTION_22_7();
    v15(v14);
    v16 = OUTLINED_FUNCTION_25_9();
    v17(v16);
    v18 = type metadata accessor for SpeechAnalyzer.Options(0);
    OUTLINED_FUNCTION_9_13(v18);
    sub_1AC6DBD44();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    OUTLINED_FUNCTION_105();
  }
}

id sub_1AC6D99DC()
{
  v1 = type metadata accessor for SpeechAnalyzer.Options(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = sub_1AC7A0278();
  v4 = (v0 + *(v1 + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v8 = v4[2];
    v7 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0;
    v9 = 0;
  }

  v11 = objc_allocWithZone(_SFAnalysisOptions);
  return sub_1AC6DBBF4(v3, v6, v5, v8, v7, v10, v9, (v2 - 3) < 2);
}

uint64_t SpeechAnalyzer.Options.modelRetention.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  result = type metadata accessor for SpeechAnalyzer.Options(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeechAnalyzer.Options.PowerContext.init(ane:cpu:gpu:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AnalysisOptions.modelRetention.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  result = type metadata accessor for AnalysisOptions(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

double sub_1AC6D9D04()
{
  v2 = OUTLINED_FUNCTION_56();
  v4 = (v1 + *(v3(v2) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  *v0 = *v4;
  v0[1] = v6;
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v9;
  v0[5] = v10;
  return sub_1AC6D9D54(v5, v6, v7, v8, v9, v10);
}

double sub_1AC6D9D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV14ModelRetentionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_39();

  return sub_1AC7A0D38();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  sub_1AC7A0048();
  OUTLINED_FUNCTION_170();
  sub_1AC7A0048();

  return sub_1AC7A0048();
}

uint64_t _s6Speech0A8AnalyzerC7OptionsV12PowerContextV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_31_7();
  v0 = sub_1AC7A0E78();
  OUTLINED_FUNCTION_18_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D9FC8()
{
  OUTLINED_FUNCTION_31_7();
  v0 = sub_1AC7A0E78();
  OUTLINED_FUNCTION_18_7(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

double sub_1AC6DA04C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  (*(v8 + 32))(a4, a1);
  v9 = a3(0);
  *(a4 + *(v9 + 20)) = v7;
  v10 = (a4 + *(v9 + 24));
  result = 0.0;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  return result;
}

void sub_1AC6DA0F0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a3 + 32);
  v10 = *(a3 + 40);
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  (*(v11 + 32))(a5, a1);
  v12 = a4(0);
  *(a5 + *(v12 + 20)) = v8;
  OUTLINED_FUNCTION_29_11(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(v24 + 32) = v9;
  *(v24 + 40) = v10;
}

double AnalysisOptions.init(highPriority:loggingInfo:powerContext:)(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_56();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_11();
  sub_1AC5C720C(a2, &qword_1EB56D190, &qword_1AC7ADDA0);
  OUTLINED_FUNCTION_27_8();
  if (a1)
  {
    sub_1AC7A0258();
  }

  else
  {
    sub_1AC7A0268();
  }

  v6 = OUTLINED_FUNCTION_170();
  v7(v6);
  v8 = type metadata accessor for AnalysisOptions(0);
  *(v2 + *(v8 + 20)) = 0;
  *&result = OUTLINED_FUNCTION_14_8(v8).n128_u64[0];
  return result;
}

double AnalysisOptions.init(highPriority:modelRetention:loggingInfo:powerContext:)(char a1, char *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_56();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  sub_1AC5C720C(a3, &qword_1EB56D190, &qword_1AC7ADDA0);
  v8 = *a2;
  OUTLINED_FUNCTION_27_8();
  if (a1)
  {
    sub_1AC7A0258();
  }

  else
  {
    sub_1AC7A0268();
  }

  v9 = OUTLINED_FUNCTION_170();
  v10(v9);
  v11 = type metadata accessor for AnalysisOptions(0);
  *(v3 + *(v11 + 20)) = v8;
  *&result = OUTLINED_FUNCTION_14_8(v11).n128_u64[0];
  return result;
}

void AnalysisOptions.init(priority:modelRetention:loggingInfo:powerContext:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AC5C720C(a3, &qword_1EB56D190, &qword_1AC7ADDA0);
  LOBYTE(a2) = *a2;
  v9 = *(a4 + 32);
  v10 = *(a4 + 40);
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for AnalysisOptions(0);
  *(a5 + *(v12 + 20)) = a2;
  OUTLINED_FUNCTION_29_11(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(v24 + 32) = v9;
  *(v24 + 40) = v10;
}

uint64_t sub_1AC6DA460()
{
  v0 = OUTLINED_FUNCTION_56();
  v1(v0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();

  return v3(v2);
}

uint64_t AnalysisOptions.LoggingInfo.requestID.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = *(type metadata accessor for AnalysisOptions.LoggingInfo(v2) + 20);
  sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AnalysisOptions.LoggingInfo.init(asrID:requestID:)()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC79F948();
  OUTLINED_FUNCTION_33_6();
  sub_1AC79F948();
  v2 = sub_1AC79F958();
  OUTLINED_FUNCTION_80();
  v5 = *(v3 + 8);
  v5(v0, v2);

  return (v5)(v1, v2);
}

uint64_t static AnalysisOptions.LoggingInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33_6();

  return sub_1AC79F928();
}

uint64_t AnalysisOptions.LoggingInfo.hash(into:)()
{
  OUTLINED_FUNCTION_25();
  sub_1AC79F958();
  OUTLINED_FUNCTION_6_10();
  sub_1AC6DACF8(v0, v1, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_170();
  sub_1AC79FE58();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_170();
  return sub_1AC79FE58();
}

uint64_t AnalysisOptions.LoggingInfo.hashValue.getter()
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  OUTLINED_FUNCTION_6_10();
  v2 = sub_1AC6DACF8(v0, v1, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_18_7(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_1AC79FE58();
  OUTLINED_FUNCTION_33_6();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DA760(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC79F958();
  sub_1AC6DACF8(&qword_1EB56CE18, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

BOOL sub_1AC6DA838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, void *))
{
  if ((sub_1AC7A0248() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  if (*(a1 + *(v8 + 20)) != *(a2 + *(v8 + 20)))
  {
    return 0;
  }

  v9 = *(v8 + 24);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v13 = *(a1 + v9 + 16);
  v12 = *(a1 + v9 + 24);
  v14 = *(a1 + v9 + 32);
  v15 = *(a1 + v9 + 40);
  v16 = (a2 + v9);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  v22 = v16[5];
  if (!v11)
  {
    v42 = OUTLINED_FUNCTION_28_8();
    sub_1AC6D9D54(v42, v43, v44, v45, v46, v15);
    if (!v18)
    {
      OUTLINED_FUNCTION_5_10();
      sub_1AC6D9D54(v75, v76, v77, v78, v79, v80);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_21_9();
      sub_1AC6DAA4C(v81, v82);
      return 1;
    }

    OUTLINED_FUNCTION_5_10();
    sub_1AC6D9D54(v47, v48, v49, v50, v51, v52);
    goto LABEL_10;
  }

  v85[0] = v10;
  v85[1] = v11;
  v85[2] = v13;
  v85[3] = v12;
  v85[4] = v14;
  v85[5] = v15;
  if (!v18)
  {
    v53 = OUTLINED_FUNCTION_2_17();
    sub_1AC6D9D54(v53, v54, v55, v56, v57, v15);
    OUTLINED_FUNCTION_5_10();
    sub_1AC6D9D54(v58, v59, v60, v61, v62, v63);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_21_9();
    sub_1AC6D9D54(v64, v65, v66, v67, v68, v69);

LABEL_10:
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_21_9();
    sub_1AC6DAA4C(v70, v71);
    OUTLINED_FUNCTION_5_10();
    sub_1AC6DAA4C(v72, v73);
    return 0;
  }

  v84[0] = v17;
  v84[1] = v18;
  v84[2] = v19;
  v84[3] = v20;
  v84[4] = v21;
  v84[5] = v22;
  v23 = v14;
  v83 = a4(v85, v84);
  v24 = OUTLINED_FUNCTION_2_17();
  sub_1AC6D9D54(v24, v25, v26, v27, v23, v15);
  OUTLINED_FUNCTION_5_10();
  sub_1AC6D9D54(v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_21_9();
  sub_1AC6D9D54(v34, v35, v36, v37, v38, v39);

  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_21_9();
  sub_1AC6DAA4C(v40, v41);
  return (v83 & 1) != 0;
}

uint64_t sub_1AC6DAA4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AC6DAAD0()
{
  result = qword_1EB56D1A8;
  if (!qword_1EB56D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1A8);
  }

  return result;
}

unint64_t sub_1AC6DAB28()
{
  result = qword_1EB56D1B0;
  if (!qword_1EB56D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1B0);
  }

  return result;
}

uint64_t sub_1AC6DABAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC6DAC04()
{
  result = qword_1EB56D1C8;
  if (!qword_1EB56D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1C8);
  }

  return result;
}

unint64_t sub_1AC6DAC5C()
{
  result = qword_1EB56D1D0;
  if (!qword_1EB56D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D1D0);
  }

  return result;
}

uint64_t sub_1AC6DACF8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void *sub_1AC6DADEC(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_0_11();
    v7 = OUTLINED_FUNCTION_39();
    v8(v7);
    v9 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v10 = (a1 + v9);
    v11 = *(a2 + v9 + 8);
    if (v11)
    {
      OUTLINED_FUNCTION_19_7(v11, v10);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v10);
    }
  }

  return a1;
}

uint64_t sub_1AC6DAED0()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v1);
  result = *(v1 + *(v0 + 24) + 8);
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC6DAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  v6 = OUTLINED_FUNCTION_170();
  v7(v6);
  v8 = *(a3 + 24);
  *(v3 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v9 = (v3 + v8);
  v10 = *(a2 + v8 + 8);
  if (v10)
  {
    OUTLINED_FUNCTION_19_7(v10, v9);
  }

  else
  {
    OUTLINED_FUNCTION_8_9(v9);
  }

  return v3;
}

uint64_t sub_1AC6DB008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_25();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  v8 = OUTLINED_FUNCTION_25_9();
  v9(v8);
  *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v10 = *(a3 + 24);
  v11 = v4 + v10;
  v12 = (a2 + v10);
  v13 = *(v4 + v10 + 8);
  v14 = *(v12 + 1);
  if (v13)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_30_6();

      *(v11 + 16) = *(v12 + 2);
      *(v11 + 24) = *(v12 + 3);

      *(v11 + 32) = *(v12 + 4);
      *(v11 + 40) = *(v12 + 5);
    }

    else
    {
      a4(v11);
      v16 = v12[1];
      v15 = v12[2];
      *v11 = *v12;
      *(v11 + 16) = v16;
      *(v11 + 32) = v15;
    }
  }

  else if (v14)
  {
    OUTLINED_FUNCTION_30_6();
    *(v11 + 16) = *(v12 + 2);
    *(v11 + 24) = *(v12 + 3);
    *(v11 + 32) = *(v12 + 4);
    *(v11 + 40) = *(v12 + 5);
  }

  else
  {
    v17 = *v12;
    v18 = v12[2];
    *(v11 + 16) = v12[1];
    *(v11 + 32) = v18;
    *v11 = v17;
  }

  return v4;
}

uint64_t sub_1AC6DB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  (*(v6 + 32))(a1, a2);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  OUTLINED_FUNCTION_8_9(a1 + v7);
  return a1;
}

uint64_t sub_1AC6DB220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_25();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_0_11();
  v8 = OUTLINED_FUNCTION_25_9();
  v9(v8);
  v10 = *(a3 + 24);
  *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v11 = v4 + v10;
  v12 = a2 + v10;
  if (!*(v4 + v10 + 8))
  {
    goto LABEL_5;
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
    a4(v4 + v10);
LABEL_5:
    v16 = *(v12 + 16);
    *v11 = *v12;
    *(v11 + 16) = v16;
    *(v11 + 32) = *(v12 + 32);
    return v4;
  }

  *v11 = *v12;
  *(v11 + 8) = v13;

  v14 = *(v12 + 24);
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 24) = v14;

  v15 = *(v12 + 40);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 40) = v15;

  return v4;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  v6 = sub_1AC7A0288();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_8();
  result = sub_1AC7A0288();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_26_10();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = v4;
  }

  return result;
}

uint64_t sub_1AC6DB468(uint64_t a1)
{
  result = sub_1AC7A0288();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Instrumentation.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1AC6DB590(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void *sub_1AC6DB66C()
{
  OUTLINED_FUNCTION_50_0();
  *v3 = *v2;
  v1[1] = v2[1];

  v1[2] = v0[2];
  v1[3] = v0[3];

  v1[4] = v0[4];
  v1[5] = v0[5];

  return v1;
}

void *sub_1AC6DB6F8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2[1];
  *v1 = *v2;
  v1[1] = v3;

  v4 = v0[3];
  v1[2] = v0[2];
  v1[3] = v4;

  v5 = v0[5];
  v1[4] = v0[4];
  v1[5] = v5;

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnalysisOptions.LoggingInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F958();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
  }

  return a1;
}

uint64_t destroy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v5 = a1 + *(a2 + 20);

  return v7(v5, v4);
}

uint64_t initializeWithCopy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t assignWithCopy for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t initializeWithTake for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t assignWithTake for AnalysisOptions.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  return a1;
}

uint64_t sub_1AC6DBB68(uint64_t a1)
{
  result = sub_1AC79F958();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1AC6DBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3)
  {
    v13 = sub_1AC79FF58();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1AC79FF58();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15 = sub_1AC79FF58();

LABEL_8:
  v16 = [v8 initWithPriority:a1 aneContext:v13 cpuContext:v14 gpuContext:v15 keepANEModelLoaded:a8 & 1];

  return v16;
}

uint64_t sub_1AC6DBCF0()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_0_11();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC6DBD44()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(v0);
  return v0;
}

__n128 OUTLINED_FUNCTION_8_9@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_6()
{
  *v0 = *v1;
  result = v1[1];
  v0[1] = result;
  return result;
}

double sub_1AC6DBEFC()
{
  v0 = [objc_opt_self() cooldownTimerTimeoutSeconds];
  sub_1AC6DBF60(1, 0, v2, v0);
  result = *v2;
  xmmword_1ED937970 = v2[0];
  unk_1ED937980 = v2[1];
  byte_1ED937990 = v3;
  return result;
}

uint64_t sub_1AC6DBF60@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = ceil(a4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v7 = result;
    result = sub_1AC7A0F48();
    *a3 = v7;
    *(a3 + 8) = a2 & 1;
    *(a3 + 16) = result;
    *(a3 + 24) = v8;
    *(a3 + 32) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC6DBFF4()
{
  if (qword_1ED937968 != -1)
  {
    swift_once();
  }

  v1[0] = xmmword_1ED937970;
  v1[1] = unk_1ED937980;
  v2 = byte_1ED937990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C880, &unk_1AC7AE290);
  swift_allocObject();
  result = sub_1AC6DC09C(v1, 0, 0);
  qword_1ED938600 = result;
  return result;
}

uint64_t sub_1AC6DC09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = 0;
  *(v3 + 176) = v7;
  v8 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v8;
  *(v3 + 144) = *(a1 + 32);
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return v3;
}

uint64_t *sub_1AC6DC0F8()
{
  if (v0[21])
  {

    sub_1AC7A0318();
  }

  sub_1AC5C3958(v0[19], v0[20]);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC6DC170()
{
  sub_1AC6DC0F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t getEnumTagSinglePayload for KeepAliveCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeepAliveCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t AnalysisContext.__allocating_init()()
{
  v0 = swift_allocObject();
  AnalysisContext.init()();
  return v0;
}

uint64_t sub_1AC6DC27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DC294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85();
  if (*(*(v14 + 40) + 16))
  {
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v15);
    v16 = swift_task_alloc();
    *(v14 + 56) = v16;
    *v16 = v14;
    v16[1] = sub_1AC6DC380;
    OUTLINED_FUNCTION_18_8();

    return MEMORY[0x1EEE6DDE8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v25();
  }
}

uint64_t sub_1AC6DC380()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6DC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[2] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6DC4A8, 0, 0);
}

uint64_t sub_1AC6DC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_85();
  if (*(*(v14 + 40) + 16))
  {
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_508(v15);
    v16 = swift_task_alloc();
    *(v14 + 56) = v16;
    *v16 = v14;
    v16[1] = sub_1AC6DC594;
    OUTLINED_FUNCTION_18_8();

    return MEMORY[0x1EEE6DDE8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v25();
  }
}

uint64_t sub_1AC6DC594()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1AC6DC694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1AC6E0808();
    if (v4)
    {
      OUTLINED_FUNCTION_56_5(v3);
    }
  }
}

void sub_1AC6DC6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1AC6E0868();
    if (v4)
    {
      OUTLINED_FUNCTION_56_5(v3);
    }
  }
}

double sub_1AC6DC72C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_1AC6E0868(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1AC5CFF64(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1AC6DC790(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_1AC6E08C4(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_56_5(v2);
    }
  }
}

uint64_t sub_1AC6DC7DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1AC6E08C4(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_5(v2);
}

uint64_t sub_1AC6DC828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1AC6E0808();
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_39();
}

void *sub_1AC6DC87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1AC6E0808();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_1AC6DC8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_1AC5D0E20(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a4 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t AnalysisContext.contextualStrings.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t AnalysisContext.userData.getter()
{
  os_unfair_lock_lock((v0 + 48));
  v1 = *(v0 + 56);

  os_unfair_lock_unlock((v0 + 48));
  return v1;
}

void sub_1AC6DC984()
{
  v0 = AnalysisContext.contextualStrings.getter();
  v1 = sub_1AC6E1808(v0, &qword_1EB56D2A8);

  OUTLINED_FUNCTION_117_0();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    while (2)
    {
      if (v4)
      {
        goto LABEL_7;
      }

      do
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        if (v9 >= v6)
        {
          goto LABEL_18;
        }

        v4 = v1[v9 + 8];
        ++v7;
      }

      while (!v4);
      v7 = v9;
LABEL_7:
      OUTLINED_FUNCTION_42_7();
      v12 = *(v11 + v10);

      v13 = *(v12 + 16);
      v14 = *(v8 + 16);
      if (__OFADD__(v14, v13))
      {
        goto LABEL_60;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v8 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v8 = v15;
      }

      v4 &= v4 - 1;
      if (*(v12 + 16))
      {
        if ((*(v8 + 24) >> 1) - *(v8 + 16) < v13)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v8 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_63;
          }

          *(v8 + 16) = v18;
        }

        continue;
      }

      break;
    }

    if (!v13)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_18:

  os_unfair_lock_lock((v77 + 32));
  v19 = *(v77 + 40);

  os_unfair_lock_unlock((v77 + 32));
  v76 = v8;
  if (v19)
  {
    v20 = sub_1AC6E1808(v19, &qword_1EB56D298);

    OUTLINED_FUNCTION_117_0();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;

    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        if (!v23)
        {
          do
          {
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_59;
            }

            if (v28 >= v25)
            {
              goto LABEL_36;
            }

            v23 = v20[v28 + 8];
            ++v26;
          }

          while (!v23);
          v26 = v28;
        }

        OUTLINED_FUNCTION_42_7();
        v31 = *(v30 + v29);

        v32 = *(v31 + 16);
        v33 = *(v27 + 16);
        if (__OFADD__(v33, v32))
        {
          goto LABEL_62;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v33 + v32 > *(v27 + 24) >> 1)
        {
          sub_1AC60E41C();
          v27 = v34;
        }

        v23 &= v23 - 1;
        if (!*(v31 + 16))
        {
          break;
        }

        if ((*(v27 + 24) >> 1) - *(v27 + 16) < v32)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v35 = *(v27 + 16);
          v17 = __OFADD__(v35, v32);
          v36 = v35 + v32;
          if (v17)
          {
            goto LABEL_65;
          }

          *(v27 + 16) = v36;
        }
      }
    }

    while (!v32);
    __break(1u);
LABEL_36:

    v37 = *(v27 + 16);
    if (v37)
    {
      v80 = MEMORY[0x1E69E7CC0];
      sub_1AC7A0A88();
      v38 = (v27 + 64);
      do
      {
        v39 = *(v38 - 2);
        v40 = *(v38 - 1);
        v41 = *v38;
        v38 += 40;
        objc_allocWithZone(_SFEnhancedContextualString);

        v42 = OUTLINED_FUNCTION_39();
        sub_1AC6E0474(v42, v43, v39, v40, v41);
        sub_1AC7A0A68();
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        --v37;
      }

      while (v37);

      v44 = v80;
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }

    v8 = v76;
  }

  else
  {
    v44 = 0;
  }

  v45 = AnalysisContext.contextualNamedEntities.getter();
  if (v45)
  {
    v46 = v45;
    v47 = *(v45 + 16);
    if (v47)
    {
      v75 = v44;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1AC7A0A88();
      v48 = 0;
      v79 = v46;
      while (1)
      {
        v49 = *(v46 + v48 + 32);
        v50 = *(v46 + v48 + 40);
        v51 = *(v46 + v48 + 48);
        v52 = *(v46 + v48 + 72);
        v53 = *(v46 + v48 + 80);
        v55 = *(v46 + v48 + 88);
        v54 = *(v46 + v48 + 96);
        if (*(v46 + v48 + 64))
        {
          OUTLINED_FUNCTION_61_4();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v56 = 0;
          if (v53)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v58 = *(v46 + v48 + 56);
          v78 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          OUTLINED_FUNCTION_61_4();
          swift_bridgeObjectRetain_n();

          v56 = [v78 initWithDouble_];
          if (v53)
          {
LABEL_50:
            v57 = 0;
            goto LABEL_51;
          }
        }

        v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_51:
        v59 = objc_allocWithZone(_SFContextualNamedEntityCodingObject);
        sub_1AC6E0748(v49, v50, v51, v56, v57, v55, v54);

        sub_1AC7A0A68();
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v48 += 72;
        --v47;
        v46 = v79;
        if (!v47)
        {

          v60 = v81;
          v8 = v76;
          v44 = v75;
          goto LABEL_55;
        }
      }
    }

    v60 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v60 = 0;
  }

LABEL_55:
  v61 = AnalysisContext.contextualStrings.getter();
  sub_1AC6DC6E0(0x6E6F437466656C5FLL, 0xEC00000074786574, v61);
  v63 = v62;

  AnalysisContext.contextualStrings.getter();
  OUTLINED_FUNCTION_68_5(0x6F4374686769725FLL, 0x746Eu);
  v65 = v64;

  AnalysisContext.contextualStrings.getter();
  OUTLINED_FUNCTION_68_5(0x657463656C65735FLL, 0x5464u);
  v67 = v66;

  if (!*(v8 + 16))
  {

    v8 = 0;
  }

  v68 = AnalysisContext.profileData.getter();
  v70 = v69;
  v71 = AnalysisContext.jitProfileData.getter();
  v73 = v72;
  v74 = objc_allocWithZone(_SFAnalysisContextCodingObject);
  sub_1AC6E0510(v63, v65, v67, v8, v60, v68, v70, v71, v73, v44);
}

uint64_t sub_1AC6DD08C()
{
  OUTLINED_FUNCTION_78_0();
  v0 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v0, &v3);

  if (v4)
  {
    sub_1AC5C3968(&v3, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_1AC5C720C(&v3, &qword_1EB56CA20, &qword_1AC7AE2A0);
    return 0;
  }
}

uint64_t AnalysisContext.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC6DD204();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1AC79FE38();
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
  sub_1AC6DD258();
  v3 = sub_1AC79FE38();
  *(v0 + 48) = 0;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  return v0;
}

unint64_t sub_1AC6DD204()
{
  result = qword_1EB56B0B0;
  if (!qword_1EB56B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0B0);
  }

  return result;
}

unint64_t sub_1AC6DD258()
{
  result = qword_1EB56B0C0;
  if (!qword_1EB56B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0C0);
  }

  return result;
}

void AnalysisContext.contextualStrings.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  if (v2)
  {
    os_unfair_lock_unlock((v1 + 64));
    __break(1u);
  }

  else
  {

    os_unfair_lock_unlock((v1 + 64));

    os_unfair_lock_unlock((v1 + 16));
  }
}

uint64_t AnalysisContext.contextualStrings.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.contextualStrings.getter();
  return OUTLINED_FUNCTION_196_0();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void AnalysisContext.userData.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 48));

  *(v1 + 56) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  if (v2)
  {
    os_unfair_lock_unlock((v1 + 64));
    __break(1u);
  }

  else
  {

    os_unfair_lock_unlock((v1 + 64));

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t AnalysisContext.userData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.userData.getter();
  return OUTLINED_FUNCTION_196_0();
}

uint64_t AnalysisContext.enhancedContextualStrings.getter()
{
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E0, &qword_1AC7AE2A8);
    sub_1AC6DD204();
    v1 = sub_1AC79FE38();
  }

  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

void AnalysisContext.enhancedContextualStrings.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 32));

  *(v1 + 40) = a1;

  os_unfair_lock_lock((v1 + 64));
  OUTLINED_FUNCTION_46_8();
  os_unfair_lock_unlock((v1 + 64));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t *sub_1AC6DD654(uint64_t *result, uint64_t a2)
{
  v3 = 0;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *result + 40;
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 - 8);

    v7(&v9, v8);
    if (v9)
    {
      sub_1AC67C4F8(a2);
      swift_unknownObjectRelease();
    }

    v6 += 16;
    ++v3;
  }

  return result;
}

uint64_t AnalysisContext.enhancedContextualStrings.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.enhancedContextualStrings.getter();
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DD764(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  (a3)(v4);
}

uint64_t AnalysisContext.setWait(contextualStrings:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DD7E8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);

  AnalysisContext.contextualStrings.setter(v2);
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 72);
  *(v0 + 32) = v3;

  os_unfair_lock_unlock((v1 + 64));
  v4 = OUTLINED_FUNCTION_24_11();
  v5 = OUTLINED_FUNCTION_422(v4);
  *v5 = v6;
  v5[1] = sub_1AC6DD8BC;

  return v8(&unk_1AC7AE2B8, 0, v3);
}

uint64_t sub_1AC6DD8BC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6DD9DC()
{
  OUTLINED_FUNCTION_72();
  v8 = v0;
  (*(v0 + 16))(&v7);
  v1 = v7;
  *(v0 + 32) = v7;
  if (v1)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_422(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC6DDAA4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t AnalysisContext.setWait<A>(userData:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DDBB8()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
  sub_1AC6DD258();
  v2 = sub_1AC7A0B88();
  AnalysisContext.userData.setter(v2);
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 72);
  v0[5] = v3;

  os_unfair_lock_unlock((v1 + 64));
  v4 = OUTLINED_FUNCTION_24_11();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1AC6DDCD8;

  return v6(&unk_1AC7AE2D0, 0, v3);
}

uint64_t sub_1AC6DDCD8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6DDDF8()
{
  OUTLINED_FUNCTION_72();
  v8 = v0;
  (*(v0 + 16))(&v7);
  v1 = v7;
  *(v0 + 32) = v7;
  if (v1)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_422(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t AnalysisContext.setWait(enhancedContextualStrings:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6DDED4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);

  AnalysisContext.enhancedContextualStrings.setter(v2);
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 72);
  *(v0 + 32) = v3;

  os_unfair_lock_unlock((v1 + 64));
  v4 = OUTLINED_FUNCTION_24_11();
  v5 = OUTLINED_FUNCTION_422(v4);
  *v5 = v6;
  v5[1] = sub_1AC6E3518;

  return v8(&unk_1AC7AE2E0, 0, v3);
}

uint64_t AnalysisContext.contextualNamedEntities.getter()
{
  v0 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v0, &v3);

  if (v4)
  {
    sub_1AC5C3968(&v3, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E8, &qword_1AC7AE2E8);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_1AC5C720C(&v3, &qword_1EB56CA20, &qword_1AC7AE2A0);
    return 0;
  }
}

void AnalysisContext.contextualNamedEntities.setter(uint64_t a1)
{
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1E8, &qword_1AC7AE2E8);
  }

  else
  {
    v2 = 0;
    *(&v9 + 1) = 0;
    v10 = 0;
  }

  *&v9 = a1;
  v11 = v2;
  v3 = AnalysisContext.userData.getter();
  if (v2)
  {
    sub_1AC5C3968(&v9, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AC6E0E44(v8, 0xD000000000000018, 0x80000001AC7B7C00, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1AC5C720C(&v9, &qword_1EB56CA20, &qword_1AC7AE2A0);
    sub_1AC6E0868();
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
      sub_1AC7A0B18();

      sub_1AC5C3968((*(v3 + 56) + 32 * v7), v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
      sub_1AC6DD258();
      sub_1AC7A0B38();
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    sub_1AC5C720C(v8, &qword_1EB56CA20, &qword_1AC7AE2A0);
  }

  AnalysisContext.userData.setter(v3);
}

uint64_t AnalysisContext.contextualNamedEntities.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_64_5(a1);
  *v1 = AnalysisContext.contextualNamedEntities.getter();
  return OUTLINED_FUNCTION_196_0();
}

void sub_1AC6DE2AC(uint64_t *a1, char a2)
{
  if (a2)
  {

    AnalysisContext.contextualNamedEntities.setter(v2);
  }

  else
  {
    AnalysisContext.contextualNamedEntities.setter(*a1);
  }
}

void AnalysisContext.voiceCommandContext.getter()
{
  v1 = AnalysisContext.userData.getter();
  sub_1AC6DC72C(v1, &v2);
  if (v3)
  {

    sub_1AC5C3968(&v2, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC6DE3F4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC6AA558(__dst, &v1);
  AnalysisContext.voiceCommandContext.setter();
}

void AnalysisContext.voiceCommandContext.setter()
{
  v11 = &type metadata for VoiceCommandContext;
  *&v10 = swift_allocObject();
  OUTLINED_FUNCTION_52_5((v10 + 16));
  v0 = AnalysisContext.userData.getter();
  sub_1AC5C3968(&v10, &v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  v2 = __swift_mutable_project_boxed_opaque_existential_1(&v8, v9);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v5 = (v4 - v3);
  (*(v6 + 16))(v4 - v3);
  memcpy(__dst, v5, sizeof(__dst));
  sub_1AC6E2098(__dst, 0xD000000000000014, 0x80000001AC7B7410, isUniquelyReferenced_nonNull_native, &v7);
  __swift_destroy_boxed_opaque_existential_0(&v8);
  AnalysisContext.userData.setter(v7);
}

void (*AnalysisContext.voiceCommandContext.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x168uLL);
  *a1 = v3;
  v3[44] = v1;
  AnalysisContext.voiceCommandContext.getter();
  return sub_1AC6DE61C;
}

void sub_1AC6DE61C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_52_5((v2 + 176));
    OUTLINED_FUNCTION_52_5(v3);
    sub_1AC6AA558(v2 + 176, v2 + 264);
    AnalysisContext.voiceCommandContext.setter();
    OUTLINED_FUNCTION_52_5((v2 + 88));
    sub_1AC6AA5B4(v2 + 88);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v3);
    AnalysisContext.voiceCommandContext.setter();
  }

  free(v2);
}

uint64_t AnalysisContext.profileData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = AnalysisContext.profileData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DE728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_143();
  sub_1AC641BD8(v6, v7);
  v8 = OUTLINED_FUNCTION_143();
  return a5(v8);
}

void sub_1AC6DE790()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_78_0();
  v7 = v6 >> 60;
  if (v6 >> 60 == 15)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v26 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E6969080];
    v8 = v1;
    v9 = v0;
  }

  *&v25 = v8;
  *(&v25 + 1) = v9;
  v27 = v10;
  sub_1AC641BD8(v1, v0);
  v11 = AnalysisContext.userData.getter();
  if (v7 <= 0xE)
  {
    sub_1AC5C3968(&v25, &v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v11;
    v16 = *(&v24 + 1);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_6();
    v20 = v19 - v18;
    (*(v21 + 16))(v19 - v18);
    sub_1AC6E2254(v20, v5, v3, isUniquelyReferenced_nonNull_native, &v22, v16);
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v11 = v22;
  }

  else
  {
    sub_1AC5C720C(&v25, &qword_1EB56CA20, &qword_1AC7AE2A0);
    sub_1AC6E0868();
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v22 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
      sub_1AC7A0B18();

      sub_1AC5C3968((*(v11 + 56) + 32 * v14), &v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA28, &unk_1AC7AB4B0);
      sub_1AC6DD258();
      sub_1AC7A0B38();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    sub_1AC5C720C(&v23, &qword_1EB56CA20, &qword_1AC7AE2A0);
  }

  AnalysisContext.userData.setter(v11);
  sub_1AC604184(v1, v0);
  OUTLINED_FUNCTION_105();
}

uint64_t AnalysisContext.jitProfileData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = AnalysisContext.jitProfileData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_196_0();
}

uint64_t sub_1AC6DEA68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_57_0();
    sub_1AC641BD8(v4, v5);
    v6 = OUTLINED_FUNCTION_57_0();
    a3(v6);
    v7 = OUTLINED_FUNCTION_57_0();

    return sub_1AC604184(v7, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_57_0();
    return a3(v10);
  }
}

void *sub_1AC6DEC7C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

void __swiftcall AnalysisContext.EnhancedContextualString.init(context:tagName:isLoggable:)(Speech::AnalysisContext::EnhancedContextualString *__return_ptr retstr, Swift::String context, Swift::String_optional tagName, Swift::Bool isLoggable)
{
  retstr->context = context;
  retstr->tagName = tagName;
  retstr->isLoggable = isLoggable;
}

uint64_t sub_1AC6DED28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakInit();

  sub_1AC703C14();
  v6 = *(*a1 + 16);
  sub_1AC703D64(v6);
  v7 = *a1;
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = sub_1AC6B18F4;
  *(v8 + 40) = v5;

  *a1 = v7;
  return result;
}

uint64_t sub_1AC6DEDD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *result;
  v6 = *(*result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4)
    {

      *v3 = v7;
      return result;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v12 = *(v5 + 16 * v4 + 32);

    (v12)(&v13, v8);
    v9 = v13;
    if (v13 && (swift_unknownObjectRelease(), v9 == a2))
    {

      ++v4;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1AC631518(0, *(v7 + 16) + 1, 1);
        v7 = v14;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1AC631518((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      ++v4;
      *(v7 + 16) = v11 + 1;
      *(v7 + 16 * v11 + 32) = v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalysisContext.deinit()
{
  sub_1AC5C720C(v0 + 24, &qword_1EB56D1F8, &qword_1AC7AE2F8);
  sub_1AC5C720C(v0 + 40, &qword_1EB56D200, &qword_1AC7AE300);
  sub_1AC5C720C(v0 + 56, &qword_1EB56D208, &qword_1AC7AE308);
  sub_1AC5C720C(v0 + 72, &qword_1EB56D210, &qword_1AC7AE310);
  return v0;
}

uint64_t AnalysisContext.__deallocating_deinit()
{
  AnalysisContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

Speech::ContextualNamedEntity::SourceFramework_optional __swiftcall ContextualNamedEntity.SourceFramework.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6DF07C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextualNamedEntity.SourceFramework.rawValue.getter();
  *a1 = result;
  return result;
}

void __swiftcall ContextualNamedEntity.init(personalizationPortraitName:score:category:language:)(Speech::ContextualNamedEntity *__return_ptr retstr, Swift::String personalizationPortraitName, Swift::Double score, Swift::Int category, Swift::String language)
{
  retstr->content = personalizationPortraitName;
  retstr->sourceFramework = Speech_ContextualNamedEntity_SourceFramework_personalizationPortrait;
  retstr->score.value = score;
  retstr->score.is_nil = 0;
  retstr->category.value = category;
  retstr->category.is_nil = 0;
  retstr->language.value = language;
}

uint64_t sub_1AC6DF0F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  return result;
}

BOOL static ContextualNamedEntity.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 5);
  v6 = *(a1 + 48);
  v8 = *(a1 + 7);
  v7 = *(a1 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v16 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (v14)
  {
    if (v2 != v9)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v22 = *(a2 + 40);
  v23 = *(a2 + 48);
  v17 = sub_1AC7A0D38();
  result = 0;
  if (v17)
  {
    v13 = v23;
    v12 = v22;
    if (v2 == v9)
    {
LABEL_9:
      if (v4)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == v10)
        {
          v19 = v11;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          return 0;
        }
      }

      if (v6)
      {
        if (!v13)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v12)
        {
          v20 = v13;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          return 0;
        }
      }

      if (v7)
      {
        if (!v15)
        {
          return 0;
        }

        if (v8 != v16 || v7 != v15)
        {
          OUTLINED_FUNCTION_143();
          if ((sub_1AC7A0D38() & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      return !v15;
    }
  }

  return result;
}

void ContextualNamedEntity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  sub_1AC7A0048();
  MEMORY[0x1B26E9A40](v2);
  if (v4 == 1)
  {
    sub_1AC7A0E98();
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1AC7A0E98();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_1AC7A0E98();
    OUTLINED_FUNCTION_66_6();
    return;
  }

  sub_1AC7A0E98();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1B26E9A70](v9);
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1AC7A0E98();
  MEMORY[0x1B26E9A40](v5);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_1AC7A0E98();
  OUTLINED_FUNCTION_66_6();

  sub_1AC7A0048();
}

uint64_t ContextualNamedEntity.hashValue.getter()
{
  sub_1AC7A0E78();
  ContextualNamedEntity.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DF3A4(uint64_t a1)
{
  sub_1AC7A0E78();
  ContextualNamedEntity.hash(into:)(v2);
  return sub_1AC7A0EC8();
}

void *VoiceCommandContext.disambiguationActive.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.cursorInVisibleText.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.favorCommandSuppression.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.abortCommandSuppression.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *VoiceCommandContext.undoEvent.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

__n128 VoiceCommandContext.init(prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t VoiceCommandContext.init(prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = 0;
  return result;
}

uint64_t static VoiceCommandContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[10];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  v68 = a2[10];
  v69 = a1[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v59 = a1[2];
      v60 = a2[9];
      v62 = a1[7];
      v63 = a2[8];
      v61 = a1[8];
      v22 = a2[7];
      v23 = a1[6];
      v24 = a2[6];
      v66 = a2[5];
      v25 = a2[4];
      v26 = sub_1AC7A0D38();
      v14 = v25;
      v16 = v24;
      v7 = v23;
      v18 = v22;
      v4 = v59;
      v20 = v60;
      v10 = v61;
      v9 = v62;
      v19 = v63;
      v17 = v66;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v5 != v15)
    {
      v64 = v11;
      v67 = v17;
      v28 = v18;
      v29 = v7;
      v30 = v16;
      v31 = v8;
      v32 = v14;
      v33 = sub_1AC7A0D38();
      v14 = v32;
      v8 = v31;
      v16 = v30;
      v7 = v29;
      v18 = v28;
      v11 = v64;
      v17 = v67;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }

    if (v6 != v14 || v8 != v17)
    {
      v35 = v18;
      v36 = v7;
      v37 = v16;
      v38 = sub_1AC7A0D38();
      v16 = v37;
      v7 = v36;
      v18 = v35;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v16)
    {
      return 0;
    }

    v65 = v19;
    v39 = v18;
    v40 = v7;
    v41 = v16;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v42 = v41;
    v43 = v20;
    v44 = v42;
    v45 = OUTLINED_FUNCTION_53_6(v40);

    v20 = v43;
    v18 = v39;
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v65 = v19;
    if (v16)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    v46 = v18;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v47 = v46;
    v48 = v20;
    v49 = v47;
    v50 = OUTLINED_FUNCTION_53_6(v9);

    v20 = v48;
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v10)
  {
    if (!v65)
    {
      return 0;
    }

    v9 = v10;
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v51 = v20;
    v52 = v65;
    v53 = OUTLINED_FUNCTION_53_6(v10);

    v20 = v51;
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  if (v69)
  {
    if (!v20)
    {
      return 0;
    }

    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v54 = v20;
    v55 = OUTLINED_FUNCTION_53_6(v69);

    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (v68)
    {
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      v56 = v68;
      v57 = OUTLINED_FUNCTION_53_6(v11);

      if (v57)
      {
        return 1;
      }
    }
  }

  else if (!v68)
  {
    return 1;
  }

  return 0;
}

void VoiceCommandContext.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v4 = v1[5];
  v3 = v1[6];
  v6 = v1[7];
  v5 = v1[8];
  v12 = v1[9];
  v11 = v1[10];
  if (v1[1])
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_80_1();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80_1();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_83();
  sub_1AC7A0048();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_80_1();
LABEL_8:
  if (v3)
  {
    OUTLINED_FUNCTION_83();
    v7 = v3;
    OUTLINED_FUNCTION_71_4();

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    if (v6)
    {
LABEL_10:
      OUTLINED_FUNCTION_83();
      v8 = v6;
      OUTLINED_FUNCTION_71_4();

      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_80_1();
  if (v5)
  {
LABEL_11:
    OUTLINED_FUNCTION_83();
    v9 = v5;
    OUTLINED_FUNCTION_71_4();

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_19:
    OUTLINED_FUNCTION_80_1();
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_20:
    OUTLINED_FUNCTION_80_1();
    return;
  }

LABEL_18:
  OUTLINED_FUNCTION_80_1();
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_12:
  OUTLINED_FUNCTION_83();
  v10 = v12;
  OUTLINED_FUNCTION_71_4();

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_13:
  OUTLINED_FUNCTION_83();
  v13 = v11;
  sub_1AC7A0768();
}

uint64_t VoiceCommandContext.hashValue.getter()
{
  sub_1AC7A0E78();
  VoiceCommandContext.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DFAC8(uint64_t a1)
{
  sub_1AC7A0E78();
  VoiceCommandContext.hash(into:)(v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6DFB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6DFBB0, 0, 0);
}

uint64_t sub_1AC6DFBB0()
{
  OUTLINED_FUNCTION_38_7();
  while (1)
  {
    v6 = *(v1 + 104);
    if (!v0)
    {
      break;
    }

    v7 = *(v1 + 96);
    v8 = sub_1AC7A0288();
    OUTLINED_FUNCTION_25_10(v8);
    OUTLINED_FUNCTION_613();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_16_9(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v5);
    OUTLINED_FUNCTION_61_4();
    swift_unknownObjectRetain_n();

    v18 = *(v1 + 104);
    if (EnumTagSinglePayload == 1)
    {
      sub_1AC5C720C(*(v1 + 104), &qword_1EB56BE70, &qword_1AC7A8270);
      v5 = 28928;
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_63_4();
      (*(v19 + 8))(v18, v5);
      v5 = v7 | 0x7100;
    }

    v20 = *v3;
    if (*v3)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1AC7A01B8();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v3 = **(v1 + 72);
    OUTLINED_FUNCTION_99();
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1AC7AE830;
    *(v24 + 24) = v4;
    v25 = v23 | v21;
    if (v23 | v21)
    {
      v25 = v29;
      *v29 = 0;
      v29[1] = 0;
      *(v1 + 32) = v21;
      *(v1 + 40) = v23;
    }

    OUTLINED_FUNCTION_58_4(v25);
    swift_task_create();

    sub_1AC5C720C(v20, &qword_1EB56BE70, &qword_1AC7A8270);
    swift_unknownObjectRelease();
    v2 += 16;
    --v0;
  }

  OUTLINED_FUNCTION_44();

  return v26();
}

uint64_t sub_1AC6DFDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6DFE88, 0, 0);
}

uint64_t sub_1AC6DFE88()
{
  OUTLINED_FUNCTION_38_7();
  while (1)
  {
    v6 = *(v1 + 104);
    if (!v0)
    {
      break;
    }

    v7 = *(v1 + 96);
    v8 = sub_1AC7A0288();
    OUTLINED_FUNCTION_25_10(v8);
    OUTLINED_FUNCTION_613();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_16_9(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v5);
    OUTLINED_FUNCTION_61_4();
    swift_retain_n();

    v18 = *(v1 + 104);
    if (EnumTagSinglePayload == 1)
    {
      sub_1AC5C720C(*(v1 + 104), &qword_1EB56BE70, &qword_1AC7A8270);
      v5 = 28928;
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_63_4();
      (*(v19 + 8))(v18, v5);
      v5 = v7 | 0x7100;
    }

    v20 = *v3;
    if (*v3)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1AC7A01B8();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v3 = **(v1 + 72);
    OUTLINED_FUNCTION_99();
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1AC7AE7D8;
    *(v24 + 24) = v4;
    v25 = v23 | v21;
    if (v23 | v21)
    {
      v25 = v29;
      *v29 = 0;
      v29[1] = 0;
      *(v1 + 32) = v21;
      *(v1 + 40) = v23;
    }

    OUTLINED_FUNCTION_58_4(v25);
    swift_task_create();

    sub_1AC5C720C(v20, &qword_1EB56BE70, &qword_1AC7A8270);

    v2 += 16;
    --v0;
  }

  OUTLINED_FUNCTION_44();

  return v26();
}

uint64_t sub_1AC6E00B4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1AC6E01B0;

  return v9(v6 + 2);
}

uint64_t sub_1AC6E01B0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6E0294(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1AC6E0390;

  return v9(v6 + 2);
}

uint64_t sub_1AC6E0390()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

id sub_1AC6E0474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1AC79FF58();

  if (a4)
  {
    v9 = sub_1AC79FF58();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithContext:v8 tagName:v9 isLoggable:a5 & 1];

  return v10;
}

id sub_1AC6E0510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v17 = sub_1AC7A0148();

    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if (a2)
    {
LABEL_3:
      v18 = sub_1AC7A0148();

      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v18 = 0;
  if (a3)
  {
LABEL_4:
    v19 = sub_1AC7A0148();

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v20 = 0;
    if (a5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = sub_1AC7A0148();

  if (a5)
  {
LABEL_6:
    sub_1AC5CF764(0, &qword_1EB56D2A0, off_1E797ADD0);
    v21 = sub_1AC7A0148();

    goto LABEL_12;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  if (a7 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1AC79F858();
    sub_1AC604184(a6, a7);
  }

  if (a9 >> 60 != 15)
  {
    v23 = sub_1AC79F858();
    sub_1AC604184(a8, a9);
    if (a10)
    {
      goto LABEL_17;
    }

LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  v23 = 0;
  if (!a10)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_1AC5CF764(0, &qword_1EB56CA30, off_1E797ADE8);
  v24 = sub_1AC7A0148();

LABEL_20:
  v25 = [v27 initWithLeftContext:v17 rightContext:v18 selectedText:v19 contextualStrings:v20 contextualNamedEntities:v21 profileData:v22 jitProfileData:v23 enhancedContextualStrings:v24];

  return v25;
}

id sub_1AC6E0748(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = sub_1AC79FF58();

  if (a7)
  {
    v14 = sub_1AC79FF58();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithContent:v13 sourceFramework:a3 score:a4 category:a5 language:v14];

  return v15;
}

unint64_t sub_1AC6E0808()
{
  OUTLINED_FUNCTION_50_8();
  sub_1AC7A0048();
  sub_1AC7A0EC8();
  v0 = OUTLINED_FUNCTION_143();

  return sub_1AC6E0930(v0, v1, v2);
}

void sub_1AC6E0868()
{
  OUTLINED_FUNCTION_50_8();
  sub_1AC7A0048();
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_143();
  sub_1AC6E09E4();
}

unint64_t sub_1AC6E08C4(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC6F7B7C();
  v2 = sub_1AC7A0EC8();

  return sub_1AC6E0A90(a1, v2);
}

unint64_t sub_1AC6E0930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1AC7A0D38() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1AC6E09E4()
{
  OUTLINED_FUNCTION_78_0();
  v3 = ~(-1 << *(v1 + 32));
  for (i = v4 & v3; ((1 << i) & *(v1 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = (*(v1 + 48) + 16 * i);
    v7 = *v6 == v2 && v6[1] == v0;
    if (v7 || (sub_1AC7A0D38() & 1) != 0)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_66_6();
}

unint64_t sub_1AC6E0A90(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_1AC61B924(*(v2 + 48) + *(v6 + 72) * i, v8);
    v11 = sub_1AC6F77D4(v8, a1);
    sub_1AC6E34BC(v8);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1AC6E0BC4()
{
  OUTLINED_FUNCTION_85();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_64_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_85_0(v2);

  return v5();
}

uint64_t *sub_1AC6E0CA0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC6E196C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1AC6E0D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_8(a1, a2);
  sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D278, &qword_1AC7AE790);
  if ((OUTLINED_FUNCTION_23_8(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1AC6E0808();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    OUTLINED_FUNCTION_66_6();

    sub_1AC6E2FA4(v15, v16);
  }

  else
  {
    sub_1AC7042B8(v10, a2, a3, a1, *v3);
    OUTLINED_FUNCTION_66_6();
  }
}

uint64_t sub_1AC6E0E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_1AC6E2254(v12, a2, a3, v5, v4, v9);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1AC6E0F44()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_0_12();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
  OUTLINED_FUNCTION_34_8();
  if (sub_1AC7A0B18())
  {
    sub_1AC6E08C4(v0);
    OUTLINED_FUNCTION_5_11();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC61B924(v0, v1);
    v8 = OUTLINED_FUNCTION_62_5();
    sub_1AC704304(v8, v9, v10, v11);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6E1048()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_0_12();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C998, &unk_1AC7AE850);
  OUTLINED_FUNCTION_34_8();
  if (sub_1AC7A0B18())
  {
    sub_1AC6E08C4(v0);
    OUTLINED_FUNCTION_5_11();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC61B924(v0, v1);
    v8 = OUTLINED_FUNCTION_62_5();
    sub_1AC704304(v8, v9, v10, v11);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6E114C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_8(a1, a2);
  sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D280, &qword_1AC7AE798);
  if ((OUTLINED_FUNCTION_23_8(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_143();
  v13 = sub_1AC6E0808();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v15 + 56) + 32 * v10));
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_66_6();

    sub_1AC5C3968(v16, v17);
  }

  else
  {
    sub_1AC704380(v10, a2, a3, a1, v15);
    OUTLINED_FUNCTION_66_6();
  }
}

id sub_1AC6E1260()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_11_12(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_12();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1AC7A0DC8();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4A0, &qword_1AC7AE768);
  if (OUTLINED_FUNCTION_22_8(v13))
  {
    v14 = OUTLINED_FUNCTION_10_13();
    sub_1AC5D0E20(v14, v15, v16);
    OUTLINED_FUNCTION_5_11();
    if (!v18)
    {
      goto LABEL_14;
    }

    v11 = v17;
  }

  if (v12)
  {
    v19 = (*(*v2 + 56) + 16 * v11);
    *v19 = v1;
    v19[1] = v0;
    OUTLINED_FUNCTION_105();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_27_9();
    sub_1AC7043C4(v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_105();

    return sub_1AC5D0DD0(v29, v30, v31);
  }
}

void sub_1AC6E1340()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D288, &unk_1AC7AE7A0);
  OUTLINED_FUNCTION_34_8();
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1AC6E0808();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_105();
  }

  else
  {
    sub_1AC704404(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC6E14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = OUTLINED_FUNCTION_15_8(a1, a2);
  sub_1AC5D0E20(v14, v15, v16);
  OUTLINED_FUNCTION_0_12();
  if (v19)
  {
    __break(1u);
LABEL_14:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v20 = v17;
  v21 = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (OUTLINED_FUNCTION_22_8(v22))
  {
    v23 = OUTLINED_FUNCTION_32_8();
    sub_1AC5D0E20(v23, v24, v25);
    OUTLINED_FUNCTION_5_11();
    if (!v27)
    {
      goto LABEL_14;
    }

    v20 = v26;
  }

  v28 = *v8;
  if (v21)
  {
    *(*(v28 + 56) + 8 * v20) = a1;
    OUTLINED_FUNCTION_14();
  }

  else
  {
    a8(v20, a2, a3, a4, a1, v28);
    OUTLINED_FUNCTION_32_8();
    OUTLINED_FUNCTION_14();

    sub_1AC5D0DD0(v31, v32, v33);
  }
}

void sub_1AC6E1600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_12(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_12();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D270, &qword_1AC7AE788);
  if (OUTLINED_FUNCTION_22_8(v13))
  {
    v14 = OUTLINED_FUNCTION_10_13();
    sub_1AC5D0E20(v14, v15, v16);
    OUTLINED_FUNCTION_5_11();
    if (!v18)
    {
      goto LABEL_14;
    }

    v11 = v17;
  }

  if (v12)
  {
    v19 = (*(*v7 + 56) + 16 * v11);
    *v19 = v6;
    v19[1] = v5;
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_27_9();
    sub_1AC7043C4(v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_14();

    sub_1AC5D0DD0(v29, v30, v31);
  }
}

void sub_1AC6E16F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_8(a1, a2);
  sub_1AC6E0808();
  OUTLINED_FUNCTION_0_12();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D290, &unk_1AC7AFB60);
  if ((OUTLINED_FUNCTION_23_8(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1AC6E0808();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    *(*(v15 + 56) + 8 * v10) = a1;
    OUTLINED_FUNCTION_66_6();
  }

  else
  {
    sub_1AC7044A0(v10, a2, a3, a1, v15);
    OUTLINED_FUNCTION_66_6();
  }
}

uint64_t *sub_1AC6E1808(uint64_t a1, uint64_t *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_7();
      a2 = sub_1AC6E0CA0(v14, v15, v16, v17, v18);
      MEMORY[0x1B26EAB10](v13, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1AC613DA0(0, v5, v19 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_40_7();
  sub_1AC6E196C(v6, v7, v8, v9, v10);
  if (!v2)
  {
    return v11;
  }

  swift_willThrow();
  return a2;
}

void sub_1AC6E196C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = 0;
  v6 = a3 + 64;
  OUTLINED_FUNCTION_117_0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    OUTLINED_FUNCTION_59_5();
LABEL_9:
    v17 = v13 | (v5 << 6);
    v18 = (*(v7 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    if (*v18 != v15 || v20 != v14)
    {
      OUTLINED_FUNCTION_39();
      sub_1AC7A0D38();
      OUTLINED_FUNCTION_33_7();
      if ((v22 & 1) == 0 && (v19 != 0x6F4374686769725FLL || v20 != 0xED0000747865746ELL))
      {
        v24 = OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_67_6(v24, v25, 0x6F4374686769725FLL, 0x746Eu);
        OUTLINED_FUNCTION_33_7();
        if ((v26 & 1) == 0 && (v19 != 0x657463656C65735FLL || v20 != 0xED00007478655464))
        {
          v28 = OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_67_6(v28, v29, 0x657463656C65735FLL, 0x5464u);
          OUTLINED_FUNCTION_33_7();
          if ((v30 & 1) == 0)
          {
            *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
            if (__OFADD__(v36++, 1))
            {
              __break(1u);
LABEL_27:
              sub_1AC6E1B5C(a1, a2, v36, v7, a4, a5);
              return;
            }
          }
        }
      }
    }
  }

  v16 = v5;
  while (1)
  {
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      goto LABEL_27;
    }

    ++v16;
    if (*(v6 + 8 * v5))
    {
      OUTLINED_FUNCTION_57_5();
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1AC6E1B5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1AC7A0BC8();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v33 = v6;
  while (v12)
  {
    OUTLINED_FUNCTION_59_5();
LABEL_16:
    v17 = v15 | (v13 << 6);
    v18 = *(v6 + 56);
    v19 = (*(v6 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v18 + 8 * v17);
    sub_1AC7A0E78();

    sub_1AC7A0048();
    result = sub_1AC7A0EC8();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v11 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v11 + 56) + 8 * v26) = v22;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_31;
    }

    v6 = v33;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    ++v16;
    if (a1[v13])
    {
      OUTLINED_FUNCTION_57_5();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC6E1D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C5380;

  return sub_1AC6DFB04(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6E1E40(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6E00B4(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1AC6E1F08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC6DFDDC(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6E1FD0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6E0294(a1, a2, a3, a4, v10, v11);
}

void sub_1AC6E2098(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v22 = &type metadata for VoiceCommandContext;
  *&v21 = swift_allocObject();
  memcpy((v21 + 16), a1, 0x58uLL);
  v9 = *a5;
  sub_1AC6E0868();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1AC6E0868();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *a5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_1AC5C3968(&v21, v17);
  }

  else
  {
    v18 = __swift_mutable_project_boxed_opaque_existential_1(&v21, &type metadata for VoiceCommandContext);
    MEMORY[0x1EEE9AC00](v18);
    initializeWithCopy for VoiceCommandContext(v20, v19);
    memcpy(__dst, v20, sizeof(__dst));
    sub_1AC6E3000(v12, a2, a3, __dst, v16);
    __swift_destroy_boxed_opaque_existential_0(&v21);
  }
}

void sub_1AC6E2254(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v26 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v25);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a6);
  v12 = *a5;
  sub_1AC6E0868();
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D1F0, &qword_1AC7AE2F0);
  if ((sub_1AC7A0B18() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1AC6E0868();
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_0(v20);
    sub_1AC5C3968(&v25, v20);
  }

  else
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
    MEMORY[0x1EEE9AC00](v21);
    v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_1AC6E30C8(v15, a2, a3, v23, v19, a6);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }
}

unint64_t sub_1AC6E246C()
{
  result = qword_1EB56B0A8;
  if (!qword_1EB56B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0A8);
  }

  return result;
}

unint64_t sub_1AC6E24C4()
{
  result = qword_1EB56B0B8;
  if (!qword_1EB56B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B0B8);
  }

  return result;
}

unint64_t sub_1AC6E251C()
{
  result = qword_1EB56D218;
  if (!qword_1EB56D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D220, &qword_1AC7AE490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D218);
  }

  return result;
}

unint64_t sub_1AC6E2584()
{
  result = qword_1EB56D228;
  if (!qword_1EB56D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D228);
  }

  return result;
}

unint64_t sub_1AC6E25DC()
{
  result = qword_1EB56D230;
  if (!qword_1EB56D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D230);
  }

  return result;
}

unint64_t sub_1AC6E2634()
{
  result = qword_1EB56D238;
  if (!qword_1EB56D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D238);
  }

  return result;
}

void *sub_1AC6E26E8(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AC6E272C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1AC6E276C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AnalysisContext.EnhancedContextualString()
{
}

uint64_t initializeWithCopy for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for AnalysisContext.EnhancedContextualString(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t destroy for ContextualNamedEntity()
{
}

uint64_t initializeWithCopy for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  return a1;
}

uint64_t assignWithCopy for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ContextualNamedEntity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for ContextualNamedEntity(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ContextualNamedEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}