unint64_t sub_2723296F4()
{
  result = qword_280883000;
  if (!qword_280883000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883000);
  }

  return result;
}

unint64_t sub_27232974C()
{
  result = qword_280883008;
  if (!qword_280883008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883008);
  }

  return result;
}

unint64_t sub_2723297A4()
{
  result = qword_280883010;
  if (!qword_280883010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883010);
  }

  return result;
}

__n128 sub_2723297F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_272329814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27232985C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VASpeechBiasOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VASpeechBiasOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for VAInstrumentedKeywordResult(uint64_t a1)
{
  result = qword_280891900;
  if (!qword_280891900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272329B90(uint64_t a1)
{
  sub_272329C7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_272329C7C(uint64_t a1)
{
  if (!qword_280883018)
  {
    sub_272376E5C();
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280883018);
    }
  }
}

unint64_t sub_272329CF8()
{
  result = qword_280891A10[0];
  if (!qword_280891A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891A10);
  }

  return result;
}

unint64_t sub_272329D50()
{
  result = qword_280891B20;
  if (!qword_280891B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280891B20);
  }

  return result;
}

unint64_t sub_272329DA8()
{
  result = qword_280891B28[0];
  if (!qword_280891B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891B28);
  }

  return result;
}

uint64_t sub_272329DFC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272329E40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272329E90()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272329ED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272329F24()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272329F68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272329FB8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272329FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A04C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A0E0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A124(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A174()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A1B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A208()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A24C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A29C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A2E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27232A330()
{
  v1 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232A374(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_27232A3C4()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x130))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

double sub_27232A45C()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

id VAStrideConfiguration.__allocating_init(audioSampleRate:samplesPerEncoding:samplesPerEncodingStride:samplesPerPredictionWindow:encodingsPerVerification:featureExtractionModelInputSize:featureExtractionNumFeaturesPerSlice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v15 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v16 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = a1;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a2;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = a3;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a4;
  *&v14[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a5;
  swift_beginAccess();
  *&v14[v16] = a6;
  swift_beginAccess();
  *&v14[v15] = a7;
  v19.receiver = v14;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id VAStrideConfiguration.init(audioSampleRate:samplesPerEncoding:samplesPerEncodingStride:samplesPerPredictionWindow:encodingsPerVerification:featureExtractionModelInputSize:featureExtractionNumFeaturesPerSlice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v10 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v11 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = a1;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a2;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = a3;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a4;
  *&v7[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a5;
  swift_beginAccess();
  *&v7[v11] = a6;
  swift_beginAccess();
  *&v7[v10] = a7;
  v13.receiver = v7;
  v13.super_class = type metadata accessor for VAStrideConfiguration();
  return objc_msgSendSuper2(&v13, sel_init);
}

double sub_27232A768()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x100))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

double sub_27232A800()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  return v2 / (*((*v1 & *v0) + 0xA0))();
}

id static VAStrideConfiguration.forFlexibleA2A()()
{
  v0 = type metadata accessor for VAStrideConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v2 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 19200;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 3840;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = 19200;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v1[v3] = 176;
  swift_beginAccess();
  *&v1[v2] = 40;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static VAStrideConfiguration.forFixedA2T(modelConfig:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0xD0))();
  v4 = (*((*v2 & *a1) + 0xE8))();
  v5 = type metadata accessor for VAStrideConfiguration();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v7 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v8 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 400;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = v3;
  *&v6[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v6[v8] = v4;
  swift_beginAccess();
  *&v6[v7] = 40;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id static VAStrideConfiguration.forTasrConfig(tasrConfig:)()
{
  v0 = type metadata accessor for VAStrideConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v2 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v3 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = 400;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = 32000;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = 1;
  swift_beginAccess();
  *&v1[v3] = 176;
  swift_beginAccess();
  *&v1[v2] = 80;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27232ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAStrideConfiguration();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v10 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v11 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = 16000;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = a1;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = 160;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = a2;
  *&v9[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = a3;
  swift_beginAccess();
  *&v9[v11] = a4;
  swift_beginAccess();
  *&v9[v10] = 40;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

id VAStrideConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_27232AEC4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000024;
    v6 = 0xD00000000000001FLL;
    if (a1 == 8)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000024;
    if (a1 == 5)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D61536F69647561;
    v2 = 0xD000000000000018;
    v3 = 0xD00000000000001ALL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27232B028@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27232BD60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27232B050(uint64_t a1)
{
  v2 = sub_27232B590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27232B08C(uint64_t a1)
{
  v2 = sub_27232B590();

  return MEMORY[0x2821FE720](a1, v2);
}

id VAStrideConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAStrideConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27232B0FC(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883070, &qword_272385CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27232B590();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v9);
  v21[15] = 0;
  v11 = sub_2723785CC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0xB8))(v11);
    v21[14] = 1;
    v12 = sub_2723785CC();
    (*((*v10 & *v3) + 0xD0))(v12);
    v21[13] = 2;
    v13 = sub_2723785CC();
    (*((*v10 & *v3) + 0xE8))(v13);
    v21[12] = 3;
    v14 = sub_2723785CC();
    (*((*v10 & *v3) + 0x100))(v14);
    v21[11] = 4;
    v15 = sub_2723785CC();
    (*((*v10 & *v3) + 0x118))(v15);
    v21[10] = 5;
    v16 = sub_2723785CC();
    (*((*v10 & *v3) + 0x130))(v16);
    v21[9] = 6;
    v17 = sub_2723785CC();
    (*((*v10 & *v3) + 0x148))(v17);
    v21[8] = 7;
    v18 = sub_2723785CC();
    (*((*v10 & *v3) + 0x160))(v18);
    v21[7] = 8;
    v19 = sub_2723785CC();
    (*((*v10 & *v3) + 0x178))(v19);
    v21[6] = 9;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_27232B590()
{
  result = qword_280891BB0[0];
  if (!qword_280891BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891BB0);
  }

  return result;
}

void *VAStrideConfiguration.init(from:)(void *a1)
{
  v32 = sub_2721F065C(&qword_280883078, &qword_272385CE8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - v3;
  v29 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesPerHop] = 400;
  v5 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionSamplesStridePerHop] = 160;
  v6 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumFeaturesPerSlice] = 40;
  v7 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionNumHops] = 24;
  v8 = OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize;
  v41 = v1;
  *&v1[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_featureExtractionModelInputSize] = 176;
  v9 = a1[3];
  v34 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_27232B590();
  v31 = v4;
  v11 = v33;
  sub_2723787AC();
  if (v11)
  {
    sub_2722039C8(v34);
    type metadata accessor for VAStrideConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v29;
    v33 = v6;
    v28 = v7;
    v27 = v8;
    v13 = v30;
    v40 = 0;
    v14 = sub_2723784EC();
    v16 = v41;
    *&v41[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_audioSampleRate] = v14;
    v40 = 1;
    *&v16[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncoding] = sub_2723784EC();
    v40 = 2;
    *&v16[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerEncodingStride] = sub_2723784EC();
    v40 = 3;
    *&v16[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_encodingsPerVerification] = sub_2723784EC();
    v40 = 4;
    *&v16[OBJC_IVAR____TtC12VoiceActions21VAStrideConfiguration_samplesPerPredictionWindow] = sub_2723784EC();
    v40 = 5;
    v17 = sub_2723784EC();
    swift_beginAccess();
    *&v16[v12] = v17;
    v39 = 6;
    v18 = sub_2723784EC();
    swift_beginAccess();
    *&v16[v5] = v18;
    v38 = 7;
    v19 = sub_2723784EC();
    v20 = v33;
    swift_beginAccess();
    *&v16[v20] = v19;
    v37 = 8;
    v21 = sub_2723784EC();
    v22 = v28;
    swift_beginAccess();
    *&v16[v22] = v21;
    v36 = 9;
    v23 = sub_2723784EC();
    v24 = v27;
    v25 = v41;
    swift_beginAccess();
    *&v25[v24] = v23;
    v26 = type metadata accessor for VAStrideConfiguration();
    v35.receiver = v25;
    v35.super_class = v26;
    v10 = objc_msgSendSuper2(&v35, sel_init);
    (*(v13 + 8))(v31, v32);
    sub_2722039C8(v34);
  }

  return v10;
}

uint64_t sub_27232BA94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_27232BC5C()
{
  result = qword_280891DC0[0];
  if (!qword_280891DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891DC0);
  }

  return result;
}

unint64_t sub_27232BCB4()
{
  result = qword_280891ED0;
  if (!qword_280891ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280891ED0);
  }

  return result;
}

unint64_t sub_27232BD0C()
{
  result = qword_280891ED8[0];
  if (!qword_280891ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280891ED8);
  }

  return result;
}

uint64_t sub_27232BD60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61536F69647561 && a2 == 0xEF65746152656C70;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002723906B0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723906D0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723906F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238F360 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000272390710 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272390730 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272390760 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272390790 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002723907B0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void *sub_27232C0A4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  result[3] = a2;
  result[4] = v5;
  result[2] = a1;
  return result;
}

uint64_t sub_27232C0F0(uint64_t a1)
{
  v3 = type metadata accessor for VASingleEnrollmentData(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_272204F54(a1, v6);
  v7 = (*(*v1 + 136))(v15);
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_27227B890(0, v10[2] + 1, 1, v10);
    *v9 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_27227B890((v12 > 1), v13 + 1, 1, v10);
    *v9 = v10;
  }

  v10[2] = v13 + 1;
  sub_27227BA68(v6, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
  return v7(v15, 0);
}

uint64_t sub_27232C284()
{

  return swift_deallocClassInstance();
}

id sub_27232C2D0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration] = *(a1 + 32);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_27232C324(uint64_t a1, uint64_t a2)
{
  v112 = sub_27237728C();
  v5 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for VASingleEnrollmentData(0);
  v106 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = 0;
  v116 = 0xE000000000000000;
  v109 = 0xE000000000000000;
  v9 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v10 = (*MEMORY[0x277D85000] & *v2) + 112;
  v102 = *(v2 + OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration);
  v99 = v2;
  v101 = v9;
  v100 = v10;
  v103 = (v9)(a1);
  v11 = *(a2 + 64);
  v90 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v89 = (v12 + 63) >> 6;
  v98 = (v5 + 16);
  v97 = (v5 + 8);
  v88 = a2;

  v15 = 0;
  v96 = 0;
  v16 = MEMORY[0x277D84F98];
  v17 = -99999.0;
  *&v18 = 134218242;
  v94 = v18;
  while (1)
  {
    if (!v14)
    {
      do
      {
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_51;
        }

        if (v19 >= v89)
        {

          return v16;
        }

        ++v15;
      }

      while (!*(v90 + 8 * v19));
      v15 = v19;
      v14 = *(v90 + 8 * v19);
    }

    v93 = v14;
    v92 = v15;
    v20 = __clz(__rbit64(v14)) | (v15 << 6);
    v21 = (*(v88 + 48) + 16 * v20);
    v22 = *v21;
    v23 = *(*(v88 + 56) + 8 * v20);
    v24 = *(*v23 + 120);
    v113 = v21[1];

    v91 = v23;
    v26 = v24(v25);
    v107 = *(v26 + 16);
    v108 = v26;
    if (v107)
    {
      break;
    }

LABEL_4:
    v14 = (v93 - 1) & v93;

    v15 = v92;
  }

  v27 = *(v87 + 20);
  v104 = v108 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v105 = v27;
  swift_beginAccess();
  v28 = 0;
  v95 = v22;
  while (v28 < *(v108 + 16))
  {
    sub_272204F54(v104 + *(v106 + 72) * v28, v8);
    v29 = *&v8[v105];

    sub_272331740(v8, type metadata accessor for VASingleEnrollmentData);
    v30 = v101(v29, v102);

    sub_272305464(v103, v30);
    v32 = -v31;
    if (v16[2] && (, sub_27220038C(v22, v113), v34 = v33, , (v34 & 1) != 0))
    {
      if (!v16[2])
      {
        goto LABEL_53;
      }

      v35 = v28;
      v36 = v113;
      v37 = sub_27220038C(v22, v113);
      v38 = v22;
      v39 = v36;
      v40 = v37;
      LOBYTE(v36) = v41;

      if ((v36 & 1) == 0)
      {
        goto LABEL_54;
      }

      v42 = v16[7];
      if (*(v42 + 4 * v40) < v32)
      {
        v43 = v32;
      }

      else
      {
        v43 = *(v42 + 4 * v40);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v16;
      v46 = sub_27220038C(v38, v39);
      v47 = v16[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_55;
      }

      v50 = v45;
      if (v16[3] >= v49)
      {
        v22 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_272301090();
        }
      }

      else
      {
        sub_272300664(v49, isUniquelyReferenced_nonNull_native);
        v22 = v95;
        v51 = sub_27220038C(v95, v113);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_57;
        }

        v46 = v51;
      }

      v79 = v114;
      v110 = v114;
      if (v50)
      {
        *(v114[7] + 4 * v46) = v43;
      }

      else
      {
        v114[(v46 >> 6) + 8] |= 1 << v46;
        v80 = (v79[6] + 16 * v46);
        v81 = v113;
        *v80 = v22;
        v80[1] = v81;
        *(v79[7] + 4 * v46) = v43;
        v82 = v79[2];
        v58 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v58)
        {
          goto LABEL_56;
        }

        v79[2] = v83;
      }

      v28 = v35;
      if (v17 < v32)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v16;
      v54 = sub_27220038C(v22, v113);
      v56 = v16[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_50;
      }

      v60 = v55;
      if (v16[3] >= v59)
      {
        if ((v53 & 1) == 0)
        {
          v84 = v54;
          sub_272301090();
          v54 = v84;
        }
      }

      else
      {
        sub_272300664(v59, v53);
        v54 = sub_27220038C(v22, v113);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_57;
        }
      }

      v62 = v114;
      v110 = v114;
      if ((v60 & 1) == 0)
      {
        v114[(v54 >> 6) + 8] |= 1 << v54;
        v75 = (v62[6] + 16 * v54);
        v76 = v113;
        *v75 = v22;
        v75[1] = v76;
        *(v62[7] + 4 * v54) = v32;
        v77 = v62[2];
        v58 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v58)
        {
          goto LABEL_52;
        }

        v62[2] = v78;

        if (v17 >= v32)
        {
          goto LABEL_35;
        }

LABEL_34:
        v63 = v113;
        v115 = v22;
        v116 = v113;

        v17 = v32;
        v109 = v63;
        v96 = v22;
        goto LABEL_35;
      }

      *(v114[7] + 4 * v54) = v32;
      if (v17 < v32)
      {
        goto LABEL_34;
      }
    }

LABEL_35:
    v64 = sub_2722C389C();
    (*v98)(v111, v64, v112);
    v65 = sub_27237725C();
    v66 = sub_272377E7C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v114 = v68;
      *v67 = v94;
      *(v67 + 4) = v17;
      *(v67 + 12) = 2080;
      v69 = v109;

      v70 = sub_2721FFD04(v96, v69, &v114);

      *(v67 + 14) = v70;
      v71 = v28;
      v73 = v111;
      v72 = v112;
      v22 = v95;
      _os_log_impl(&dword_2721E4000, v65, v66, "With remap, lowest score: %f for %s", v67, 0x16u);
      sub_2722039C8(v68);
      MEMORY[0x2743C69C0](v68, -1, -1);
      MEMORY[0x2743C69C0](v67, -1, -1);

      v74 = v72;
      v28 = v71;
      (*v97)(v73, v74);
    }

    else
    {

      (*v97)(v111, v112);
    }

    v16 = v110;
    if (v107 == ++v28)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

id AVSVerifierModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AVSVerifierModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSVerifierModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_27232CD10@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v3;
  v4 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v4;
  v5 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v5;
  result = *(v1 + 48);
  v7 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_27232CD6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v3;
  v4 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v4;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v7;
  return result;
}

id sub_27232CDC8()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

void sub_27232CE0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_27232CE8C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

double sub_27232CED4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232CF0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t sub_27232D370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D3C4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 576);

  return v2(v3);
}

double sub_27232D420()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232D458(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

uint64_t sub_27232D608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result;
  return result;
}

uint64_t sub_27232D774(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 672);

  return v2(v3);
}

double sub_27232D7D0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232D808(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;
}

uint64_t VAAVSVerifierModel.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v40 = sub_27237728C();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v54 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = *(a1 + 88);
  v50 = *(a1 + 72);
  v51 = v14;
  v52 = *(a1 + 104);
  v53 = *(a1 + 120);
  v15 = *(a1 + 56);
  v48 = *(a1 + 40);
  v49 = v15;
  v16 = MEMORY[0x277D84F98];
  *(v2 + 160) = 0;
  *(v2 + 168) = v16;
  *(v2 + 176) = v16;
  *(v2 + 184) = xmmword_272385E90;
  *(v2 + 200) = 150;
  __asm { FMOV            V0.2S, #-15.0 }

  *(v2 + 208) = _D0;
  v22 = MEMORY[0x277D84F90];
  *(v2 + 216) = MEMORY[0x277D84F90];

  *(v2 + 240) = sub_27229D258(v22);
  type metadata accessor for VALog();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, 0xD000000000000017, 0x80000002723907F0, v9);
  *(v2 + 32) = v54;
  v23 = v51;
  *(v2 + 88) = v50;
  *(v2 + 104) = v23;
  *(v2 + 120) = v52;
  v24 = v49;
  *(v2 + 56) = v48;
  *(v2 + 16) = v10;
  *(v2 + 20) = v11;
  v41 = v12;
  *(v2 + 24) = v12;
  *(v2 + 48) = v13;
  *(v2 + 136) = v53;
  *(v2 + 72) = v24;
  v25 = type metadata accessor for AVSVerifierModel();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC12VoiceActions16AVSVerifierModel_resampleDuration] = v13;
  v47.receiver = v26;
  v47.super_class = v25;
  *(v2 + 144) = objc_msgSendSuper2(&v47, sel_init);
  swift_beginAccess();
  sub_27224251C(*(v2 + 56), *(v2 + 64), *(v2 + 80), *(v2 + 128), &v42, *(v2 + 72));
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  type metadata accessor for AVSEndpointer();
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v32 = v40;
  AVSEndpointer.__allocating_init(config:)(&v42);
  *(v2 + 152) = v33;
  v34 = sub_2722C389C();
  (*(v4 + 16))(v6, v34, v32);

  v35 = sub_27237725C();
  v36 = sub_272377E7C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    v38 = *(v2 + 72);

    *(v37 + 4) = v38;
    _os_log_impl(&dword_2721E4000, v35, v36, "AVS streaming endpointer has threshold %f", v37, 0xCu);
    MEMORY[0x2743C69C0](v37, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v32);
  *(v2 + 224) = v10;
  *(v2 + 228) = v10 * 1.5;
  *(v2 + 232) = v41;
  VASignpostInterval.end(_:)(0);
  sub_272331740(v9, type metadata accessor for VASignpostInterval);
  return sub_2722591B0();
}

uint64_t sub_27232DCB4()
{
}

uint64_t VAAVSVerifierModel.deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377EAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deInit VAAVSVerifierModel", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  v10 = MEMORY[0x277D84F90];
  if (v1[20])
  {
    v1[20] = MEMORY[0x277D84F90];
  }

  v1[20] = 0;
  swift_endAccess();

  swift_beginAccess();
  v11 = MEMORY[0x277D84F98];
  v1[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v1[22] = v11;

  swift_beginAccess();
  v1[27] = v10;

  swift_beginAccess();
  v1[30] = v11;

  v12 = VAVerifierModel.deinit();

  return v12;
}

uint64_t VAAVSVerifierModel.__deallocating_deinit()
{
  VAAVSVerifierModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_27232DFB8()
{
  v1 = *((*(*v0 + 352))() + 16);

  return v1;
}

uint64_t sub_27232E00C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for AVSEndpointer();
  v10[0] = v2;
  v10[1] = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = AVSEndpointer.__allocating_init(config:)(v10);
  v8 = *(*v1 + 312);

  return v8(v7);
}

void *sub_27232E0BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_26:
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = sub_2723783AC();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743C5370](i, a1);
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (i >= *(v16 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * i + 32);

        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v7 = *(*(v6 + 16) + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2723310B8(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2723310B8((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      v4[v9 + 32] = v7 > 0;
      if (v7 >= 1)
      {
        break;
      }

      if (v3 == v2)
      {
        return v15;
      }
    }

    v10 = *(v6 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_272241E04(0, v15[2] + 1, 1, v15);
    }

    v12 = v15[2];
    v11 = v15[3];
    if (v12 >= v11 >> 1)
    {
      v15 = sub_272241E04((v11 > 1), v12 + 1, 1, v15);
    }

    v15[2] = v12 + 1;
    v15[v12 + 4] = v10;

    sub_272207944(v13);
  }

  while (v3 != v2);
  return v15;
}

void sub_27232E2FC(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v165 = a2;
  v7 = 0xD00000000000001ELL;
  v164 = sub_27237728C();
  v8 = *(v164 - 8);
  v9 = MEMORY[0x28223BE20](v164);
  v11 = (&v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v134 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v134 - v16;
  v18 = *(*v2 + 352);
  v163 = *v2 + 352;
  v162 = v18;
  v19 = *((v18)(v15) + 16);

  if (!v19)
  {
    v61 = "load AVS verifier model";
    v7 = 0xD000000000000029;
    goto LABEL_21;
  }

  v159 = v11;
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2743C5370](0, a1);
    goto LABEL_5;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_5:
    type metadata accessor for EncoderPredictionAVS();
    v20 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v20)
    {
      v155 = v14;
      sub_27232F294(a1);
      v21 = (*(*v5 + 712))();
      v23 = v22;
      v25 = v24;

      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v25 + v26 + 31);

        if ((v27 & 1) != 0 && *(v21 + 16))
        {
          v29 = (*v5 + 304);
          v161 = *v29;
          v160 = v29;
          v30 = v161(v28);
          v31 = (*(*v30 + 440))(v23);
          v33 = v32;

          if (v31)
          {
            v34 = *(v33 + 16);
            if (v34)
            {
              v35 = *(v33 + 8 * v34 + 24);

              if ((v35 & 0x8000000000000000) == 0)
              {
                v37 = *(v23 + 16);
                if (v37 >= v35)
                {
                  if (v37 != v35)
                  {
                    sub_272241D34(v23, v23 + 32, 0, (2 * v35) | 1);
                    v39 = v38;

                    v23 = v39;
                  }

                  v40 = v161;
                  v41 = v161(v36);
                  v42 = (*(*v41 + 216))(v41);

                  v44 = v40(v43);
                  v45 = (*(*v44 + 240))(v44);

                  v46 = sub_2722436FC();
                  v47 = sub_272243704();
                  v48 = sub_272243714();
                  v49 = sub_27224371C(v23, v45, v46, v48, v42, v47);
                  if (!*(v49 + 2) || !*(v50 + 16))
                  {

                    goto LABEL_25;
                  }

                  v51 = sub_272243EC0(v49, v50, 80);
                  v157 = v52;

                  v53 = sub_2722C389C();
                  v54 = *(v8 + 16);
                  v149 = v53;
                  v150 = v8 + 16;
                  v148 = v54;
                  (v54)(v17);

                  v55 = sub_27237725C();
                  v56 = sub_272377E7C();
                  if (os_log_type_enabled(v55, v56))
                  {
                    v57 = swift_slowAlloc();
                    v158 = v55;
                    v58 = v57;
                    *v57 = 134217984;
                    *(v57 + 4) = v51[2];

                    v59 = v56;
                    v60 = v158;
                    _os_log_impl(&dword_2721E4000, v158, v59, "[n_segs] (clusterWindows+getMetaClusters): %ld", v58, 0xCu);
                    MEMORY[0x2743C69C0](v58, -1, -1);
                  }

                  else
                  {
                  }

                  v158 = v51;
                  v66 = *(v8 + 8);
                  v151 = v8 + 8;
                  v147 = v66;
                  v66(v17, v164);
                  isa = v157[2].isa;
                  if (isa)
                  {
                    v68 = v157[isa + 3].isa;

                    v70 = *v161(v69);
                    v71 = (*(v70 + 312))();

                    v72 = v68 + v71;
                    if (!__OFADD__(v68, v71))
                    {
                      v11 = v21;
                      v73 = *(v23 + 16);

                      if (v73 >= v72)
                      {
                        v76 = v72;
                      }

                      else
                      {
                        v76 = v73;
                      }

                      v77 = v158;
                      v78 = v158[2].isa;
                      if (v78)
                      {
                        v138 = v72;
                        v145 = v11;
                        LODWORD(v153) = 0;
                        v79 = 0;
                        v157 = v158 + 4;
                        v136 = (2 * v76) | 1;
                        v137 = v78 - 1;
                        v154 = MEMORY[0x277D84F90];
                        *&v75 = 134218754;
                        v140 = v75;
                        v156 = v78;
LABEL_35:
                        while (v79 < v77[2].isa)
                        {
                          v80 = v157[v79].isa;
                          v81 = v76 - v80;
                          if (__OFSUB__(v76, v80))
                          {
                            goto LABEL_81;
                          }

                          v82 = v161(v74);
                          v11 = (*(*v82 + 192))(v82);

                          if (v11 < v81)
                          {
                            v74 = (*(*v5 + 256))(v167, v74);
                            if (v81 < *(&v168 + 1))
                            {
                              v83 = v161(v74);
                              v84 = (*(*v83 + 288))(v83);

                              v85 = v80 - v84;
                              if (__OFSUB__(v80, v84))
                              {
                                goto LABEL_92;
                              }

                              v146 = v85 & ~(v85 >> 63);
                              if (v76 < v146)
                              {
                                goto LABEL_93;
                              }

                              v86 = v145[2];
                              if (v85 > v86 || v86 < v76)
                              {
                                goto LABEL_94;
                              }

                              if (v138 < 0)
                              {
                                goto LABEL_95;
                              }

                              if (v86 == v76 - v146)
                              {
                                v88 = v145;
                              }

                              else
                              {
                                sub_272202180(v145, (v145 + 4), v146, v136);
                                v88 = v126;
                              }

                              if (v153)
                              {
                              }

                              v89 = *(*v5 + 280);

                              v11 = v89(v90);
                              v91 = v162();
                              v92 = (*((*MEMORY[0x277D85000] & *v11) + 0x68))(v88, v91);
                              if (!v4)
                              {
                                v134 = (v79 + 1);
                                v143 = v92;

                                v135 = v88;

                                v93 = v143;
                                v94 = 0;
                                v95 = v143 + 64;
                                v96 = 1 << *(v143 + 32);
                                if (v96 < 64)
                                {
                                  v97 = ~(-1 << v96);
                                }

                                else
                                {
                                  v97 = -1;
                                }

                                v98 = v97 & *(v143 + 64);
                                v99 = (v96 + 63) >> 6;
                                v142 = v143 + 64;
                                v141 = v99;
                                while (v98)
                                {
                                  v100 = v94;
LABEL_63:
                                  v101 = __clz(__rbit64(v98)) | (v100 << 6);
                                  v102 = (*(v93 + 48) + 16 * v101);
                                  v104 = *v102;
                                  v103 = v102[1];
                                  v105 = *(*(v93 + 56) + 4 * v101);
                                  swift_bridgeObjectRetain_n();
                                  v106 = sub_272241A18();
                                  v107 = sub_272241A18();
                                  LODWORD(v152) = sub_2721F7EE4();
                                  v108 = sub_2721F7EE4();
                                  v109 = sub_27222CD4C();
                                  v110 = v152 & 1;
                                  v152 = v104;
                                  sub_27232409C(v104, v103, v146, v76, v110, v108 & 1, v109 & 1, 0, v167, v105, v106, v107, 0);
                                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                  v153 = v103;
                                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                  {
                                    v154 = sub_272205014(0, *(v154 + 2) + 1, 1, v154);
                                  }

                                  v113 = *(v154 + 2);
                                  v112 = *(v154 + 3);
                                  if (v113 >= v112 >> 1)
                                  {
                                    v154 = sub_272205014((v112 > 1), v113 + 1, 1, v154);
                                  }

                                  v98 &= v98 - 1;
                                  v114 = v154;
                                  *(v154 + 2) = v113 + 1;
                                  v115 = &v114[80 * v113];
                                  *(v115 + 2) = v167[0];
                                  v116 = v167[1];
                                  v117 = v167[2];
                                  v118 = v168;
                                  *(v115 + 5) = v167[3];
                                  *(v115 + 6) = v118;
                                  *(v115 + 3) = v116;
                                  *(v115 + 4) = v117;
                                  v148(v155, v149, v164);
                                  v11 = v153;

                                  v119 = sub_27237725C();
                                  v120 = sub_272377E7C();

                                  v144 = v120;
                                  v121 = v120;
                                  v122 = v119;
                                  if (os_log_type_enabled(v119, v121))
                                  {
                                    v123 = v11;
                                    v11 = swift_slowAlloc();
                                    v139 = swift_slowAlloc();
                                    v166 = v139;
                                    *v11 = v140;
                                    *(v11 + 4) = v146;
                                    *(v11 + 6) = 2048;
                                    *(v11 + 14) = v76;
                                    *(v11 + 11) = 2080;
                                    v152 = sub_2721FFD04(v152, v123, &v166);

                                    v11[3] = v152;
                                    *(v11 + 16) = 2048;
                                    *(v11 + 34) = v105;
                                    _os_log_impl(&dword_2721E4000, v122, v144, "\t[scores][%ld][%ld]: %s: %f", v11, 0x2Au);
                                    v124 = v139;
                                    sub_2722039C8(v139);
                                    MEMORY[0x2743C69C0](v124, -1, -1);
                                    MEMORY[0x2743C69C0](v11, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  v147(v155, v164);
                                  v94 = v100;
                                  v93 = v143;
                                  v95 = v142;
                                  v99 = v141;
                                }

                                while (1)
                                {
                                  v100 = v94 + 1;
                                  if (__OFADD__(v94, 1))
                                  {
                                    goto LABEL_86;
                                  }

                                  if (v100 >= v99)
                                  {

                                    LODWORD(v153) = 1;
                                    v74 = v135;
                                    v152 = v135;
                                    v125 = v137 == v79;
                                    v77 = v158;
                                    v79 = v134;
                                    if (!v125)
                                    {
                                      goto LABEL_35;
                                    }

                                    v65 = v165;
                                    goto LABEL_75;
                                  }

                                  v98 = *(v95 + 8 * v100);
                                  ++v94;
                                  if (v98)
                                  {
                                    goto LABEL_63;
                                  }
                                }
                              }

                              goto LABEL_82;
                            }
                          }

                          v79 = (v79 + 1);
                          v77 = v158;
                          if (v156 == v79)
                          {

                            v65 = v165;
                            if (v153)
                            {
                            }

LABEL_75:
                            v64 = v154;
                            goto LABEL_76;
                          }
                        }

                        goto LABEL_80;
                      }

LABEL_25:

                      v64 = MEMORY[0x277D84F90];
                      v65 = v165;
LABEL_76:
                      type metadata accessor for VAKeywordResult();
                      v127 = VAKeywordResult.__allocating_init(detections:)(v64);
                      sub_2722E45C4(v127, v65);
                      return;
                    }

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
                    return;
                  }

LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }
        }

        static VAVerifierModelOutput.none.getter(v165);
        return;
      }

      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v61 = "Invalid keyword, missing pron";
LABEL_21:
    v62 = v61 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v63 = v7;
    v63[1] = v62;
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:

  v128 = v159;
  v129 = v164;
  v148(v159, v149, v164);
  v130 = v128;
  v131 = sub_27237725C();
  v132 = sub_272377E8C();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_2721E4000, v131, v132, "Cannot generate prediction from AVS VerifierModel.", v133, 2u);
    MEMORY[0x2743C69C0](v133, -1, -1);
  }

  v147(v130, v129);
  static VAVerifierModelOutput.none.getter(v165);
}

uint64_t sub_27232F294(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_27237867C();
    type metadata accessor for EncoderPredictionAVS();
    if (swift_dynamicCastMetatype())
    {
      return v1;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v1;
    }

    v5 = 0;
    while (v5 < v4)
    {
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v6)
      {
        return v2 | 1;
      }

      ++v5;
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 == v4)
      {
        return v1;
      }
    }

    __break(1u);
  }

  type metadata accessor for EncoderPredictionAVS();

  v7 = sub_27237838C();

  return v7;
}

uint64_t VAAVSVerifierModel.makeRuntimeParameters()@<X0>(char **a1@<X8>)
{
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v7 = VARuntimeParameters.init()(a1);
  result = (*(*v1 + 664))(v7);
  v10 = 0;
  v12 = result + 64;
  v11 = *(result + 64);
  v49 = result;
  v13 = 1 << *(result + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v45 = (v4 + 8);
  v46 = (v4 + 16);
  v17 = MEMORY[0x277D84F90];
  *&v9 = 136315394;
  v43 = v9;
  v47 = v16;
  v48 = result + 64;
  v44 = v3;
  while (v15)
  {
    v18 = v10;
LABEL_11:
    v19 = __clz(__rbit64(v15)) | (v18 << 6);
    v20 = (*(v49 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(v49 + 56) + 4 * v19);
    v51 = *v20;
    v52 = v21;

    MEMORY[0x2743C4AD0](58, 0xE100000000000000);
    v24 = v51;
    v23 = v52;
    v25 = sub_272377D4C();
    v27 = v26;
    v51 = v24;
    v52 = v23;

    MEMORY[0x2743C4AD0](v25, v27);

    v29 = v51;
    v28 = v52;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2721FFBF8(0, *(v17 + 2) + 1, 1, v17);
    }

    v31 = *(v17 + 2);
    v30 = *(v17 + 3);
    if (v31 >= v30 >> 1)
    {
      v17 = sub_2721FFBF8((v30 > 1), v31 + 1, 1, v17);
    }

    v15 &= v15 - 1;
    *(v17 + 2) = v31 + 1;
    v50 = v17;
    v32 = &v17[16 * v31];
    *(v32 + 4) = v29;
    *(v32 + 5) = v28;
    v33 = sub_2722C389C();
    (*v46)(v6, v33, v3);

    v34 = sub_27237725C();
    v35 = v6;
    v36 = sub_272377E7C();

    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = v43;
      v39 = sub_2721FFD04(v29, v28, &v51);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2048;
      *(v37 + 14) = v22;
      _os_log_impl(&dword_2721E4000, v34, v36, "Command %s set to %f", v37, 0x16u);
      sub_2722039C8(v38);
      v40 = v38;
      v3 = v44;
      MEMORY[0x2743C69C0](v40, -1, -1);
      MEMORY[0x2743C69C0](v37, -1, -1);
    }

    else
    {
    }

    result = (*v45)(v35, v3);
    v10 = v18;
    v6 = v35;
    v16 = v47;
    v12 = v48;
    v17 = v50;
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v41 = v42;

      *v41 = v17;
      return result;
    }

    v15 = *(v12 + 8 * v18);
    ++v10;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27232F834(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  v60 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v57 - v8;
  v9 = (a1 + *(v7 + 24));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(*v1 + 352);

  v14 = (v12)(v13);
  v15 = *(v14 + 16);
  v61 = v10;
  if (v15 && (v16 = sub_27220038C(v10, v11), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v16);
  }

  else
  {

    type metadata accessor for AVSCommand();
    v18 = swift_allocObject();
    v20 = MEMORY[0x277D84F90];
    v18[3] = v11;
    v18[4] = v20;
    v18[2] = v10;
  }

  v21 = (*(*v2 + 280))(v19);
  v22 = *(v4 + 20);
  v62 = a1;
  v23 = *(a1 + v22);
  v24 = v12();
  v25 = (*((*MEMORY[0x277D85000] & *v21) + 0x60))(v23, v24);
  v27 = v26;

  v29 = *((*(*v18 + 120))(v28) + 16);

  if (v29 < (*(*v2 + 640))(v30) || !*(v25 + 16) || (, sub_27220038C(v61, v11), v32 = v31, , (v32 & 1) == 0))
  {

    goto LABEL_17;
  }

  if (*(v25 + 16))
  {

    v33 = sub_27220038C(v61, v11);
    if (v34)
    {
      v35 = v33;

      v36 = *(*(v25 + 56) + 4 * v35);

      v38 = (*(*v2 + 592))(v37);

      if (v36 < v38 || v27 == -99999.0)
      {

        v40 = v62;
        v41 = v58;
        goto LABEL_20;
      }

LABEL_17:
      v42 = v62;
      v64[0] = *(v62 + *(v4 + 40));
      LOBYTE(v63) = 1;
      if (static VASingleEnrollmentStatus.== infix(_:_:)(v64, &v63))
      {
        (*(*v18 + 152))(v42);
        v43 = *(*v2 + 368);

        v44 = v43(v64);
        v46 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *v46;
        *v46 = 0x8000000000000000;
        sub_272331454(v18, v61, v11, isUniquelyReferenced_nonNull_native);

        *v46 = v63;
        v44(v64, 0);
      }

      v40 = v42;
      v41 = v59;
LABEL_20:
      sub_272204F54(v40, v41);
      v48 = (*(*v2 + 584))(v64);
      v50 = v49;
      v51 = *v49;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_27227B890(0, v51[2] + 1, 1, v51);
        *v50 = v51;
      }

      v53 = v60;
      v55 = v51[2];
      v54 = v51[3];
      if (v55 >= v54 >> 1)
      {
        v51 = sub_27227B890((v54 > 1), v55 + 1, 1, v51);
        *v50 = v51;
      }

      v51[2] = v55 + 1;
      sub_27227BA68(v41, v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v55);
      v48(v64, 0);
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAAVSVerifierModel.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v176 = type metadata accessor for VASingleEnrollmentData(0);
  v3 = *(v176 - 8);
  v4 = MEMORY[0x28223BE20](v176);
  v160 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v159 = &v149 - v6;
  v171 = sub_27237728C();
  v7 = *(v171 - 8);
  v8 = MEMORY[0x28223BE20](v171);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v152 = &v149 - v12;
  MEMORY[0x28223BE20](v11);
  v179 = &v149 - v13;
  v14 = MEMORY[0x277D84F90];
  (*(*v1 + 336))(MEMORY[0x277D84F90]);
  v15 = MEMORY[0x277D84F98];
  (*(*v1 + 360))(MEMORY[0x277D84F98]);
  (*(*v1 + 576))(v14);
  v16 = *(*v1 + 672);
  v170 = v1;
  v17 = v16(v15);
  v18 = *(enrollments._rawValue + 2);
  v167 = v3;
  v180 = v7;
  if (v18)
  {
    v19 = enrollments._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = (v7 + 16);
    v21 = (v7 + 8);
    v181 = *(v3 + 72);
    v22 = v153;
    do
    {
      v17 = sub_27232F834(v19);
      if (v22)
      {
        v23 = sub_2722C389C();
        (*v20)(v10, v23, v171);
        v24 = sub_27237725C();
        v25 = sub_272377E8C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_2721E4000, v24, v25, "Error adding enrollment.", v26, 2u);
          v27 = v26;
          v3 = v167;
          MEMORY[0x2743C69C0](v27, -1, -1);
        }

        v17 = (*v21)(v10, v171);
        v22 = 0;
      }

      v19 += v181;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = v153;
  }

  v153 = v22;
  v28 = (*v170 + 352);
  v155 = *v28;
  v154 = v28;
  v29 = v155(v17);
  v31 = 0;
  v33 = v29 + 64;
  v32 = *(v29 + 64);
  v156 = v29;
  v34 = 1 << *(v29 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  v174 = (v180 + 16);
  v173 = (v180 + 8);
  *&v30 = 136315650;
  v149 = v30;
  *&v30 = 134217984;
  v164 = v30;
  v38 = MEMORY[0x277D84F90];
  v151 = v29 + 64;
  v150 = v37;
  while (1)
  {
    v39 = v171;
    if (!v36)
    {
      break;
    }

LABEL_17:
    v41 = v36;
    v42 = __clz(__rbit64(v36)) | (v31 << 6);
    v43 = (*(v156 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = *(*(v156 + 56) + 8 * v42);
    swift_bridgeObjectRetain_n();
    v163 = v46;

    v48 = v155(v47);
    if (!*(v48 + 16))
    {
      goto LABEL_94;
    }

    v161 = v45;
    v49 = sub_27220038C(v45, v44);
    v50 = v44;
    v51 = v49;
    v53 = v52;
    v162 = v50;

    if ((v53 & 1) == 0)
    {
      goto LABEL_95;
    }

    v54 = *(*(v48 + 56) + 8 * v51);

    v56 = (*(*v54 + 120))(v55);

    v57 = *(v56 + 16);
    v168 = v56;
    v158 = v31;
    if (v57)
    {
      v58 = sub_272377B5C();
      *(v58 + 16) = v57;
      v169 = v58;
      bzero((v58 + 32), 4 * v57);
      v59 = *(v56 + 16);
    }

    else
    {
      v59 = 0;
      v169 = v38;
    }

    v60 = 0;
    v157 = (v41 - 1) & v41;
    v181 = v38;
    v177 = v38;
    v61 = v168;
    v175 = v59;
LABEL_23:
    v62 = v60;
    while (v59 != v62)
    {
      v64 = v62;
      if (v62 >= v59)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (__OFADD__(v62, 1))
      {
        goto LABEL_86;
      }

      if (v62 >= *(v61 + 16))
      {
        goto LABEL_87;
      }

      v172 = v62 + 1;
      v65 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v178 = *(v3 + 72);
      v66 = *(v176 + 20);
      v180 = v61 + v65 + v178 * v62;
      v67 = *(*(v180 + v66) + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v181 = sub_27220897C(0, *(v181 + 2) + 1, 1, v181);
      }

      v69 = *(v181 + 2);
      v68 = *(v181 + 3);
      if (v69 >= v68 >> 1)
      {
        v181 = sub_27220897C((v68 > 1), v69 + 1, 1, v181);
      }

      v70 = v181;
      *(v181 + 2) = v69 + 1;
      *&v70[8 * v69 + 32] = v67;
      v71 = sub_2722C389C();
      (*v174)(v179, v71, v39);

      v72 = sub_27237725C();
      v73 = sub_272377E7C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = v61;
        *v74 = v164;
        if (v64 >= *(v61 + 16))
        {
          goto LABEL_90;
        }

        v76 = v74;
        *(v74 + 4) = *(*(v180 + v66) + 16);

        _os_log_impl(&dword_2721E4000, v72, v73, "Command length %ld", v76, 0xCu);
        MEMORY[0x2743C69C0](v76, -1, -1);

        v61 = v75;
      }

      else
      {
      }

      (*v173)(v179, v39);
      v63 = *(v61 + 16);
      v62 = v64 + 1;
      v59 = v175;
      if (v63)
      {
        v165 = v169 + 4 * v62;
        v77 = v64;
        v78 = v61 + v65;
        v166 = v64;
        do
        {
          if (v64)
          {
            if (v77 >= *(v61 + 16))
            {
              goto LABEL_88;
            }

            v79 = *(v180 + v66);
            v80 = *(*v170 + 256);

            v80(&v183, v81);
            sub_272243D3C(v79, v184);
            v83 = v82;

            v84 = *(v78 + *(v176 + 20));

            v80(&v183, v85);
            sub_272243D3C(v84, v184);
            v87 = v86;

            sub_272305464(v83, v87);
            v89 = v88;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v177 = sub_2721FF8B4(0, *(v177 + 2) + 1, 1, v177);
            }

            v91 = *(v177 + 2);
            v90 = *(v177 + 3);
            v3 = v167;
            v39 = v171;
            v61 = v168;
            if (v91 >= v90 >> 1)
            {
              v177 = sub_2721FF8B4((v90 > 1), v91 + 1, 1, v177);
            }

            v92 = v177;
            *(v177 + 2) = v91 + 1;
            *&v92[4 * v91 + 32] = -v89;
            v77 = v166;
            if (v166 >= *(v169 + 16))
            {
              goto LABEL_89;
            }

            *(v165 + 28) = *(v165 + 28) - v89;
          }

          v78 += v178;
          --v64;
          --v63;
        }

        while (v63);
        v59 = v175;
        v60 = v172;
        goto LABEL_23;
      }
    }

    v93 = *(v181 + 2);
    v94 = v170;
    if (!v93)
    {
      goto LABEL_92;
    }

    v95 = 0;
    v96 = 0;
    v97 = v169;
    do
    {
      v98 = *&v181[8 * v95 + 32];
      v99 = __OFADD__(v96, v98);
      v96 += v98;
      if (v99)
      {
        goto LABEL_84;
      }

      ++v95;
    }

    while (v93 != v95);
    v100 = sub_2722C9638(v169);
    if ((v100 & 0x100000000) != 0)
    {
      goto LABEL_96;
    }

    v101 = *(v97 + 16);
    if (!v101)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v102 = 0;
    v103 = v96 / v93;
    while (*(v97 + 4 * v102 + 32) != *&v100)
    {
      if (v101 == ++v102)
      {
        goto LABEL_83;
      }
    }

    v104 = (*(*v94 + 400))() * *&v100;
    v105 = (*(*v94 + 496))();
    v106 = *v94;
    if (v105 >= v103)
    {
      v112 = *(v106 + 520);
      if (v104 < v112())
      {
        v104 = v112();
      }

      v113 = (*v94 + 544);
      v114 = *v113;
      if ((*v113)() < v104)
      {
        v111 = v114();
        goto LABEL_67;
      }
    }

    else
    {
      v107 = *(v106 + 424);
      if (v104 < v107())
      {
        v104 = v107();
      }

      v108 = (*v94 + 448);
      v109 = *v108;
      if ((*v108)() < v104)
      {
        v110 = v109();
LABEL_67:
        v104 = v111;
      }
    }

    if ((~LODWORD(v104) & 0x7F800000) == 0 && (LODWORD(v104) & 0x7FFFFF) != 0)
    {
      v104 = (*(*v94 + 472))(v110);
    }

    v116 = sub_2722C389C();
    v117 = v152;
    (*v174)(v152, v116, v171);
    v118 = v162;

    v119 = sub_27237725C();
    v120 = sub_272377E7C();

    LODWORD(v180) = v120;
    v121 = v120;
    v122 = v119;
    if (os_log_type_enabled(v119, v121))
    {
      v123 = swift_slowAlloc();
      v175 = v103;
      v124 = v123;
      v178 = swift_slowAlloc();
      v183 = v178;
      *v124 = v149;

      v125 = v161;
      v126 = sub_2721FFD04(v161, v118, &v183);

      *(v124 + 4) = v126;
      *(v124 + 12) = 2048;
      *(v124 + 14) = v175;
      *(v124 + 22) = 2048;
      *(v124 + 24) = v104;
      v127 = v122;
      _os_log_impl(&dword_2721E4000, v122, v180, "Mean command length for %s was %ld; set to %f", v124, 0x20u);
      v128 = v178;
      sub_2722039C8(v178);
      MEMORY[0x2743C69C0](v128, -1, -1);
      MEMORY[0x2743C69C0](v124, -1, -1);

      (*v173)(v117, v171);
    }

    else
    {

      (*v173)(v117, v171);
      v125 = v161;
    }

    v129 = *(*v94 + 680);

    v130 = v129(&v183);
    v132 = v131;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = *v132;
    *v132 = 0x8000000000000000;
    sub_272300A84(v125, v118, isUniquelyReferenced_nonNull_native, v104);

    *v132 = v182;

    v130(&v183, 0);
    type metadata accessor for AVSCommand();
    v134 = swift_allocObject();
    v134[4] = MEMORY[0x277D84F90];
    v135 = (v134 + 4);
    v134[2] = v125;
    v134[3] = v118;

    if (v102 >= *(v168 + 16))
    {
      goto LABEL_93;
    }

    v136 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v137 = *(v3 + 72);
    v138 = v159;
    sub_272204F54(v168 + v136 + v137 * v102, v159);

    sub_272204F54(v138, v160);
    swift_beginAccess();
    v139 = *v135;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *v135 = v139;
    if ((v140 & 1) == 0)
    {
      v139 = sub_27227B890(0, v139[2] + 1, 1, v139);
      *v135 = v139;
    }

    v38 = MEMORY[0x277D84F90];
    v142 = v139[2];
    v141 = v139[3];
    if (v142 >= v141 >> 1)
    {
      v139 = sub_27227B890((v141 > 1), v142 + 1, 1, v139);
    }

    v139[2] = v142 + 1;
    sub_27227BA68(v160, v139 + v136 + v142 * v137);
    v134[4] = v139;
    swift_endAccess();
    sub_272331740(v159, type metadata accessor for VASingleEnrollmentData);
    v143 = *(*v94 + 392);
    v144 = v162;

    v145 = v143(&v183);
    v147 = v146;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v182 = *v147;
    *v147 = 0x8000000000000000;
    sub_272331454(v134, v161, v144, v148);

    *v147 = v182;
    v145(&v183, 0);

    v33 = v151;
    v31 = v158;
    v37 = v150;
    v36 = v157;
  }

  while (1)
  {
    v40 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      return;
    }

    v36 = *(v33 + 8 * v40);
    ++v31;
    if (v36)
    {
      v31 = v40;
      goto LABEL_17;
    }
  }

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
}

char *sub_2723310B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2721F065C(&qword_280881F40, &unk_2723860C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2723311AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280883088, &qword_2723860B8);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_272331454(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2723311AC(v16, a4 & 1);
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2723786BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2723315D0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_2723315D0()
{
  v1 = v0;
  sub_2721F065C(&qword_280883088, &qword_2723860B8);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_272331740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2723317D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_272331818(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_272331C38()
{
  v0 = sub_272291FE0(&unk_28818F940);
  sub_272203A70(&unk_28818F960);
  return v0;
}

id sub_272331C74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_272331E48()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272331F9C(void *a1)
{
  swift_allocObject();
  v2 = sub_272333178(a1);

  return v2;
}

void sub_272331FE4()
{
  type metadata accessor for VABundleUtil();
  static VABundleUtil.bundePathFallback(resource:type:)(0xD000000000000014, 0x80000002723860B0, 0x636C65646F6D6C6DLL, 0xE800000000000000);
  if (v0)
  {
    sub_272376CAC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_272332068(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_272332228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_272332338(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2723323F8, 0, 0);
}

uint64_t sub_2723323F8()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_272332528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2723325E0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2723326A8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2723326A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2723327F4, 0, 0);
  }
}

uint64_t sub_2723327F4(uint64_t a1)
{
  v2 = *(v1 + 24);
  type metadata accessor for aa_encoder_125141826();
  *(swift_allocObject() + 16) = v2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_272332868(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2723328F4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_encoder_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2723329CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2723329F0, 0, 0);
}

uint64_t sub_2723329F0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_272332A90;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_272332A90(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272332BDC, 0, 0);
  }
}

uint64_t sub_272332BDC()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_encoder_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272332C50(void *a1)
{
  type metadata accessor for aa_encoder_125141826Input();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272332CE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v11(v8, v10, v4);
  sub_272292148();
  v12 = sub_272377E5C();
  (*(v5 + 8))(v10, v4);
  type metadata accessor for aa_encoder_125141826Input();
  *(swift_allocObject() + 16) = v12;
  v13 = (*(*v2 + 136))();

  return v13;
}

void sub_272332EB4(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_encoder_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_272333178(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_2723332D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27233330C(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for aa_encoder_125141826();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t sub_272333404(void *a1)
{
  v2 = swift_allocObject();
  sub_272333454(a1);
  return v2;
}

uint64_t sub_272333454(void *a1)
{
  v3 = v1;
  *(v1 + 72) = 0x7475706E69;
  *(v1 + 80) = 0xE500000000000000;
  strcpy((v1 + 88), "keyword_mask");
  *(v1 + 101) = 0;
  *(v1 + 102) = -5120;
  *(v1 + 104) = 0x6974636964657270;
  *(v1 + 112) = 0xEB00000000736E6FLL;
  *(v1 + 120) = 0x7374657366666FLL;
  *(v1 + 128) = 0xE700000000000000;
  *(v1 + 136) = 0x736874646977;
  *(v1 + 144) = 0xE600000000000000;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *a1) + 0xA0))();
  if (!v6)
  {
    sub_2722032B4();
    swift_allocError();
    *v15 = 0xD000000000000020;
    v15[1] = 0x8000000272390B40;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v7 = v6;
  v8 = (*((*v5 & *a1) + 0xD0))();
  if (!v8)
  {
    sub_2722032B4();
    swift_allocError();
    *v16 = 0xD000000000000031;
    v16[1] = 0x8000000272390B70;
    swift_willThrow();

    goto LABEL_7;
  }

  v141 = v8;
  *(v1 + 16) = a1;
  type metadata accessor for VAEspressoUtilsV2();
  v9 = *((*v5 & *v7) + 0xA0);
  v10 = a1;
  v11 = v9();
  v13 = v12;
  v14 = sub_2721F7EE4();
  sub_2723195D0(v11, v13, v14 & 1, v140);
  if (!v2)
  {

    v21 = v140[1];
    *(v3 + 24) = v140[0];
    *(v3 + 40) = v21;
    *(v3 + 56) = v140[2];
    v22 = MEMORY[0x277D85000];
    v139 = v7;
    v23 = *((*((*MEMORY[0x277D85000] & *v7) + 0xB8))(v20) + 16);

    v137 = *((*v22 & *v10) + 0x88);
    v25 = (v137)(v24);
    v26 = (*((*v22 & *v25) + 0x160))();

    v27 = v141;
    v28 = (*((*v22 & *v141) + 0x138))();
    if (v28)
    {
      if (v26 != 0x8000000000000000 || v28 != -1)
      {
        v30 = *(v3 + 40);
        if (*(v30 + 16))
        {
          v132 = v28;
          v135 = v26;
          v136 = v23;
          v138 = v10;
          v31 = *(v3 + 72);
          v32 = *(v3 + 80);

          v33 = sub_27220038C(v31, v32);
          v35 = v34;

          if (v35)
          {
            v36 = *(*(v30 + 56) + 8 * v33);

            sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_27237AF60;
            *(v37 + 32) = 1;
            v38 = v36;
            v39 = v137();
            v40 = (*((*v22 & *v39) + 0x148))();

            *(v37 + 40) = v40;
            *(v37 + 48) = (*((*v22 & *v139) + 0xE8))();
            *(v37 + 56) = 1;
            v41 = *(*v38 + 200);
            v42 = v41();
            LOBYTE(v40) = sub_27228E488(v42, v37);

            if ((v40 & 1) == 0)
            {
              sub_27237820C();

              v72 = v41;
              v73 = MEMORY[0x2743C4C60](v37, MEMORY[0x277D83B88]);
              v75 = v74;

              MEMORY[0x2743C4AD0](v73, v75);

              v76 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
              (v72)(v76);
              v77 = MEMORY[0x2743C4C60]();
              v79 = v78;

              MEMORY[0x2743C4AD0](v77, v79);

              sub_2722032B4();
              swift_allocError();
              *v80 = 0xD00000000000001FLL;
              v80[1] = 0x8000000272390BD0;
              swift_willThrow();

              goto LABEL_39;
            }

            v43 = *(v3 + 48);
            if (*(v43 + 16))
            {
              v44 = *(v3 + 104);
              v45 = *(v3 + 112);

              v46 = sub_27220038C(v44, v45);
              v48 = v47;

              if (v48)
              {
                v49 = *(*(v43 + 56) + 8 * v46);

                v50 = swift_allocObject();
                *(v50 + 16) = xmmword_27237AF60;
                *(v50 + 32) = 1;
                *(v50 + 40) = v136 + 1;
                v134 = v135 / v132;
                *(v50 + 48) = v134;
                *(v50 + 56) = 1;
                v133 = *(*v49 + 200);
                v51 = v133();
                v52 = sub_27228E488(v51, v50);

                if (v52)
                {

                  v53 = sub_272377B5C();
                  v54 = v53;
                  *(v53 + 16) = v136 + 1;
                  *(v53 + 32) = 0;
                  if (v136)
                  {
                    bzero((v53 + 36), 4 * v136);
                  }

                  v55 = sub_27220392C(v54, v134);

                  *(v3 + 152) = v55;
                  v56 = *(v3 + 48);
                  v57 = v141;
                  if (*(v56 + 16))
                  {
                    v58 = *(v3 + 120);
                    v59 = *(v3 + 128);

                    v60 = sub_27220038C(v58, v59);
                    v62 = v61;

                    if (v62)
                    {
                      v63 = *(*(v56 + 56) + 8 * v60);

                      v64 = swift_allocObject();
                      *(v64 + 16) = xmmword_27237AF60;
                      *(v64 + 32) = 1;
                      *(v64 + 40) = v136;
                      *(v64 + 48) = v134;
                      *(v64 + 56) = 1;
                      v65 = *(*v63 + 200);
                      v66 = v65();
                      v67 = sub_27228E488(v66, v64);

                      if (v67)
                      {

                        if (v136)
                        {
                          v68 = sub_272377B5C();
                          *(v68 + 16) = v136;
                          bzero((v68 + 32), 4 * v136);
                        }

                        else
                        {
                          v68 = MEMORY[0x277D84F90];
                        }

                        v10 = v138;
                        v107 = v141;
                        v108 = sub_27220392C(v68, v134);

                        *(v3 + 160) = v108;
                        v109 = *(v3 + 48);
                        if (*(v109 + 16))
                        {
                          v110 = *(v3 + 136);
                          v111 = *(v3 + 144);

                          v112 = sub_27220038C(v110, v111);
                          v114 = v113;

                          if (v114)
                          {
                            v115 = *(*(v109 + 56) + 8 * v112);

                            v116 = swift_allocObject();
                            *(v116 + 16) = xmmword_27237AF60;
                            *(v116 + 32) = 1;
                            *(v116 + 40) = v136;
                            *(v116 + 48) = v134;
                            *(v116 + 56) = 1;
                            v117 = *(*v115 + 200);
                            v118 = v117();
                            LOBYTE(v115) = sub_27228E488(v118, v116);

                            if (v115)
                            {

                              if (v136)
                              {
                                v119 = sub_272377B5C();
                                *(v119 + 16) = v136;
                                bzero((v119 + 32), 4 * v136);
LABEL_58:
                                v131 = sub_27220392C(v119, v134);

                                *(v3 + 168) = v131;
                                return v3;
                              }

LABEL_57:
                              v119 = MEMORY[0x277D84F90];
                              goto LABEL_58;
                            }

                            sub_27237820C();
                            MEMORY[0x2743C4AD0](0xD00000000000002BLL, 0x8000000272390C30);
                            v123 = MEMORY[0x2743C4C60](v116, MEMORY[0x277D83B88]);
                            v125 = v124;

                            MEMORY[0x2743C4AD0](v123, v125);

                            v126 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                            (v117)(v126);
                            v127 = MEMORY[0x2743C4C60]();
                            v129 = v128;

                            MEMORY[0x2743C4AD0](v127, v129);

                            sub_2722032B4();
                            swift_allocError();
                            *v130 = 0;
                            v130[1] = 0xE000000000000000;
                            swift_willThrow();

                            v17 = 1;
                            v18 = 1;
                            goto LABEL_40;
                          }
                        }

                        sub_27237820C();

                        v120 = *(v3 + 136);
                        v121 = *(v3 + 144);

                        MEMORY[0x2743C4AD0](v120, v121);

                        sub_2722032B4();
                        swift_allocError();
                        *v122 = 0xD000000000000015;
                        v122[1] = 0x8000000272390BF0;
                        swift_willThrow();

                        v17 = 1;
                        v18 = 1;
                        goto LABEL_41;
                      }

                      sub_27237820C();

                      v97 = *(v3 + 120);
                      v98 = *(v3 + 128);

                      MEMORY[0x2743C4AD0](v97, v98);

                      MEMORY[0x2743C4AD0](0x746365707865203ALL, 0xEB00000000206465);
                      v99 = MEMORY[0x2743C4C60](v64, MEMORY[0x277D83B88]);
                      v101 = v100;

                      MEMORY[0x2743C4AD0](v99, v101);

                      v102 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                      (v65)(v102);
                      v103 = MEMORY[0x2743C4C60]();
                      v105 = v104;

                      MEMORY[0x2743C4AD0](v103, v105);

                      sub_2722032B4();
                      swift_allocError();
                      *v106 = 0xD00000000000001ALL;
                      v106[1] = 0x8000000272390C10;
                      swift_willThrow();

                      v18 = 0;
                      v17 = 1;
LABEL_40:
                      v10 = v138;
                      goto LABEL_41;
                    }
                  }

                  sub_27237820C();

                  v94 = *(v3 + 120);
                  v95 = *(v3 + 128);

                  MEMORY[0x2743C4AD0](v94, v95);

                  sub_2722032B4();
                  swift_allocError();
                  *v96 = 0xD000000000000015;
                  v96[1] = 0x8000000272390BF0;
                  swift_willThrow();

                  v18 = 0;
                  v17 = 1;
                  goto LABEL_41;
                }

                sub_27237820C();

                v84 = *(v3 + 104);
                v85 = *(v3 + 112);

                MEMORY[0x2743C4AD0](v84, v85);

                MEMORY[0x2743C4AD0](0x746365707865203ALL, 0xEB00000000206465);
                v86 = MEMORY[0x2743C4C60](v50, MEMORY[0x277D83B88]);
                v88 = v87;

                MEMORY[0x2743C4AD0](v86, v88);

                v89 = MEMORY[0x2743C4AD0](0x20746F67202CLL, 0xE600000000000000);
                (v133)(v89);
                v90 = MEMORY[0x2743C4C60]();
                v92 = v91;

                MEMORY[0x2743C4AD0](v90, v92);

                sub_2722032B4();
                swift_allocError();
                *v93 = 0xD00000000000001ALL;
                v93[1] = 0x8000000272390C10;
                swift_willThrow();

LABEL_39:

                v17 = 0;
                v18 = 0;
                goto LABEL_40;
              }
            }

            sub_27237820C();

            v81 = *(v3 + 104);
            v82 = *(v3 + 112);

            MEMORY[0x2743C4AD0](v81, v82);

            sub_2722032B4();
            swift_allocError();
            *v83 = 0xD000000000000015;
            v83[1] = 0x8000000272390BF0;
            swift_willThrow();

            goto LABEL_39;
          }

          v27 = v141;
        }

        sub_27237820C();

        v69 = *(v3 + 72);
        v70 = *(v3 + 80);

        MEMORY[0x2743C4AD0](v69, v70);

        sub_2722032B4();
        swift_allocError();
        *v71 = 0xD000000000000014;
        v71[1] = 0x8000000272390BB0;
        swift_willThrow();

        v17 = 0;
        v18 = 0;
LABEL_41:

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_8:
  v17 = 0;
  v18 = 0;
LABEL_9:

  if (v17)
  {
  }

  if (v18)
  {
  }

  type metadata accessor for VAKWSModel();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_272334678()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_2723346C8(uint64_t a1, uint64_t a2)
{
  sub_272256424(a1);
  v6 = v5;
  v7 = sub_272319394(v2[9], v2[10], MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  if (!v3)
  {
    (*(*v7 + 624))(v6);

    v8 = sub_272319394(v2[11], v2[12], MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    (*(*v8 + 624))(a2);

    sub_272275B0C();
    v9 = sub_2723194B0(v2[13], v2[14], MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v11 = (*(*v9 + 752))(v9);

    v6 = sub_2722565E8(v11);

    v12 = sub_2723194B0(v2[15], v2[16], MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v13 = (*(*v12 + 752))(v12);

    sub_2722565E8(v13);

    v14 = sub_2723194B0(v2[17], v2[18], MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v15 = (*(*v14 + 752))(v14);

    sub_2722565E8(v15);
  }

  return v6;
}

uint64_t sub_2723349A0()
{

  return v0;
}

uint64_t sub_272334A48()
{
  sub_2723349A0();

  return swift_deallocClassInstance();
}

uint64_t sub_272334ADC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_272334B00, v1, 0);
}

uint64_t sub_272334B00()
{
  (*(**(v0 + 16) + 104))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272334BA4()
{
  v1 = (*(**(v0 + 16) + 96))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_272334D90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_2808821C8, &qword_272386260);
}

uint64_t sub_272334DF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  sub_272334E58(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272334E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808821C8, &qword_272386260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_272334F28()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_272334F70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272335028()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27233506C(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27233511C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272335160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272335210()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272335254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272335304@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for VARuntimeParametersFactoryDummy();
  result = sub_2722043D8();
  a1[3] = v2;
  a1[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
  *a1 = result;
  return result;
}

id sub_272335390(uint64_t a1, void *a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_requestInfo) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_listeningTask) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_strategyLayer) = 0;
  v7 = v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_cachedKeywordBiasData;
  *(v3 + v8) = sub_27233ED70(MEMORY[0x277D84F90]);
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechInProgress) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numberOfChunksAfterEndOfSpeech) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_speechStartTime) = 0;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_numFramesForAveraging) = 3;
  v9 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock;
  *(v3 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock) = 0;
  v10 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
  type metadata accessor for ThreadSafeBoolActor();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  *(v3 + v10) = v11;
  sub_27221629C(a3, v16);
  swift_beginAccess();
  sub_272334E58(v16, v7);
  swift_endAccess();
  v12 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = *(v3 + v9);
  *(v3 + v9) = v12;

  v14 = VAKeywordSpotter.init(delegate:configuration:)(a1, a2);
  sub_2722039C8(a3);
  return v14;
}

uint64_t sub_272335508()
{

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory, &qword_2808821C8, &qword_272386260);
}

id VAKeywordSpotterBase.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377EAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deinit VAKeywordSpotterBase", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_listeningTask;
  swift_beginAccess();
  *&v1[v10] = 0;

  v11 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_strategyLayer;
  swift_beginAccess();
  *&v1[v11] = 0;

  v12 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_requestInfo;
  swift_beginAccess();
  *&v1[v12] = 0;

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v13 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_runtimeParamsFactory;
  swift_beginAccess();
  sub_272334E58(v19, &v1[v13]);
  swift_endAccess();
  v14 = *&v1[OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock];
  *&v1[OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock] = 0;

  v15 = type metadata accessor for VAKeywordSpotterBase();
  v18.receiver = v1;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

id static VAKeywordSpotterBase.getDefaultAudioFormat()()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (!result)
  {
    result = sub_27237837C();
    __break(1u);
  }

  return result;
}

uint64_t sub_272335974()
{
  v1[5] = v0;
  v2 = sub_27237728C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272335A70, 0, 0);
}

uint64_t sub_272335A70()
{
  v1 = v0[5];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x120);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 288) & 0xFFFFFFFFFFFFLL | 0x3D45000000000000;
  v0[14] = v2;
  v0[15] = v3;
  if (v2())
  {
    v4 = v0[5];

    v5 = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
    v0[16] = OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool;
    v6 = *(v4 + v5);
    v0[17] = v6;
    v7 = *(*v6 + 128);

    v22 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_272335D38;

    return v22();
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = sub_2722C389C();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_27237725C();
    v15 = sub_272377E8C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "Called stop() when keyword spotter was not running", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_272335D38(char a1)
{
  *(*v1 + 25) = a1;

  return MEMORY[0x2822009F8](sub_272335E58, 0, 0);
}

uint64_t sub_272335E58()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = sub_2722C389C();
  *(v0 + 152) = v3;
  v4 = *(v2 + 16);
  *(v0 + 160) = v4;
  *(v0 + 168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = *(v0 + 48);
  if (v1 == 1)
  {
    v4(*(v0 + 104), v3, v5);
    v6 = sub_27237725C();
    v7 = sub_272377EAC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v6, v7, "Stop(): Ignoring when already in progress", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v4(*(v0 + 96), v3, v5);
    v15 = sub_27237725C();
    v16 = sub_272377EAC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Stop(): starting", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    v18 = *(v0 + 128);
    v19 = *(v0 + 96);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);

    v23 = *(v21 + 8);
    *(v0 + 176) = v23;
    v23(v19, v20);
    v24 = *(v22 + v18);
    *(v0 + 184) = v24;
    v25 = *(*v24 + 120);

    v27 = (v25 + *v25);
    v26 = swift_task_alloc();
    *(v0 + 192) = v26;
    *v26 = v0;
    v26[1] = sub_272336188;

    return v27(1);
  }
}

uint64_t sub_272336188()
{

  return MEMORY[0x2822009F8](sub_2723362A0, 0, 0);
}

uint64_t sub_2723362A0()
{
  v1 = (*(v0 + 112))();
  *(v0 + 200) = v1;
  if (v1)
  {
    v14 = (*(*v1 + 360) + **(*v1 + 360));
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_2723365F8;

    return v14();
  }

  else
  {
    v4 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x138))();
    *(v0 + 216) = v4;
    if (v4)
    {
      v5 = v4;
      *(v0 + 224) = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_task_alloc();
      *(v0 + 232) = v6;
      v7 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      *(v0 + 240) = v7;
      *v6 = v0;
      v6[1] = sub_27233695C;
      v8 = MEMORY[0x277D839B0];
      v9 = MEMORY[0x277D84950];

      return MEMORY[0x282200440](v0 + 16, v5, v8, v7, v9);
    }

    else
    {
      v10 = *(*(v0 + 40) + *(v0 + 128));
      *(v0 + 256) = v10;
      v11 = *(*v10 + 120);

      v13 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 264) = v12;
      *v12 = v0;
      v12[1] = sub_272336F78;

      return v13(0);
    }
  }
}

uint64_t sub_2723365F8()
{

  return MEMORY[0x2822009F8](sub_272336710, 0, 0);
}

uint64_t sub_272336710()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x138))();
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 224) = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    v4 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *(v0 + 240) = v4;
    *v3 = v0;
    v3[1] = sub_27233695C;
    v5 = MEMORY[0x277D839B0];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 16, v2, v5, v4, v6);
  }

  else
  {
    v7 = *(*(v0 + 40) + *(v0 + 128));
    *(v0 + 256) = v7;
    v8 = *(*v7 + 120);

    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    *v9 = v0;
    v9[1] = sub_272336F78;

    return v11(0);
  }
}

uint64_t sub_27233695C()
{

  return MEMORY[0x2822009F8](sub_272336A58, 0, 0);
}

uint64_t sub_272336A58()
{
  v1 = *(v0 + 16);
  *(v0 + 248) = v1;
  if ((*(v0 + 24) & 1) == 0)
  {
    (*(v0 + 160))(*(v0 + 88), *(v0 + 152), *(v0 + 48));
    v22 = sub_27237725C();
    v23 = sub_272377EAC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2721E4000, v22, v23, "Stop(): listening task completed", v24, 2u);
      MEMORY[0x2743C69C0](v24, -1, -1);

      sub_27233F36C(v1, 0);
    }

    else
    {
    }

    v25 = *(v0 + 224);
    (*(v0 + 176))(*(v0 + 88), *(v0 + 48));
    sub_2723373EC(v25);

    v26 = *(*(v0 + 40) + *(v0 + 128));
    *(v0 + 256) = v26;
    v27 = *(*v26 + 120);

    v33 = (v27 + *v27);
    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    *v28 = v0;
    v28[1] = sub_272336F78;
    v21 = v33;
    goto LABEL_10;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  *(v0 + 32) = v1;
  v6 = v1;
  swift_willThrowTypedImpl();
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();
  sub_27233F36C(v1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v8, v9, "Error stopping spotter: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 80);
  v16 = *(v0 + 48);

  v14(v15, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_threadSafeBool);
    *(v0 + 272) = v18;
    v19 = Strong;

    v34 = (*(*v18 + 120) + **(*v18 + 120));
    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = sub_2723371E4;
    v21 = v34;
LABEL_10:

    return v21(0);
  }

  v30 = *(v0 + 248);
  v31 = *(v0 + 224);
  swift_willThrow();
  sub_27233F36C(v30, 1);
  sub_2723373EC(v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_272336F78()
{

  return MEMORY[0x2822009F8](sub_272337090, 0, 0);
}

uint64_t sub_272337090()
{
  (*(v0 + 160))(*(v0 + 72), *(v0 + 152), *(v0 + 48));
  v1 = sub_27237725C();
  v2 = sub_272377EAC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v1, v2, "Stop(): done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2723371E4()
{

  return MEMORY[0x2822009F8](sub_2723372FC, 0, 0);
}

uint64_t sub_2723372FC(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[28];
  swift_willThrow();
  sub_27233F36C(v2, 1);
  sub_2723373EC(v3);

  v4 = v1[1];

  return v4();
}

void sub_2723373EC(uint64_t a1)
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_2722C389C();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_27237725C();
    v9 = sub_272377EAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Stop(): set requestInfo to nil after stopping spotter", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v6) + 0x128))(0);
    if ((*((*v11 & *v6) + 0x138))(v12))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    (*((*v11 & *v6) + 0x140))(0);
  }
}

void sub_272337680(void *a1, uint64_t a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x120))(v11))
  {

    v14 = [a1 format];
    sub_27233F16C(v14);

    if (!v3)
    {
      [*(v2 + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock) lock];
      v15 = sub_272377C3C();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v16;
      v17[5] = a1;
      v17[6] = a2;
      v18 = a1;
      sub_27222A1F0(0, 0, v13, &unk_272386280, v17);
    }
  }

  else
  {
    v19 = sub_2722C389C();
    (*(v7 + 16))(v9, v19, v6);
    v20 = sub_27237725C();
    v21 = sub_272377E8C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Called addAudio() when keyword spotter was not running", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_27233798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_27237728C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272337A50, 0, 0);
}

uint64_t sub_272337A50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x218);
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_272337BF0;
    v5 = v0[6];
    v4 = v0[7];

    return v8(v5, v4);
  }

  else
  {
    sub_272337F2C(v0[5]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_272337BF0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_272337D78;
  }

  else
  {

    v3 = sub_272337D0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272337D0C()
{
  sub_272337F2C(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272337D78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 104);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error adding audio: %@", v11, 0xCu);
    sub_2721F40F0(v12, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_272337F2C(*(v0 + 40));

  v15 = *(v0 + 8);

  return v15();
}

void sub_272337F2C(uint64_t a1)
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VAKeywordSpotterBase_lock);
    [v7 unlock];
  }

  else
  {
    v8 = sub_2722C389C();
    (*(v2 + 16))(v4, v8, v1);
    v9 = sub_27237725C();
    v10 = sub_272377E8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "Spotter was deallocated during addAudio task", v11, 2u);
      MEMORY[0x2743C69C0](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_2723380D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_27237728C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272338198, 0, 0);
}

uint64_t sub_272338198()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x120))())
  {
    v2 = *(v0 + 16);

    v3 = [v2 format];
    sub_27233F16C(v3);

    v16 = *((*v1 & **(v0 + 32)) + 0x218);
    v20 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 64) = v17;
    *v17 = v0;
    v17[1] = sub_272338460;
    v18 = *(v0 + 24);
    v19 = *(v0 + 16);

    return v20(v19, v18);
  }

  else
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = sub_2722C389C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Called addAudioAsync() when keyword spotter was not running", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_272338460()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272338578(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_27237728C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233863C, 0, 0);
}

uint64_t sub_27233863C()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x120))();
  *(v0 + 72) = v1;
  if (v1)
  {
    v6 = (*(*v1 + 368) + **(*v1 + 368));
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_272338828;

    return v6();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x8000000272390DF0;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_272338828(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_272338928, 0, 0);
}

uint64_t sub_272338928(uint64_t a1, uint64_t a2, Swift::OpaquePointer *a3)
{
  if (*(v3 + 112) == 1)
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
    v6 = *(v3 + 48);
    v7 = sub_2722C389C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Ignoring audio since stop is pending", v14, 2u);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v11, v12);

    v18 = *(v3 + 8);
    goto LABEL_8;
  }

  v15.super.super.isa = *(v3 + 24);
  *(v3 + 16) = MEMORY[0x277D84F90];
  v15.super._impl = (v3 + 16);
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v15, a3);
  v16 = *(v3 + 16);
  *(v3 + 88) = v16;
  if (v17)
  {

    v18 = *(v3 + 8);
LABEL_8:

    return v18();
  }

  v22 = (*(**(v3 + 72) + 376) + **(**(v3 + 72) + 376));
  v20 = swift_task_alloc();
  *(v3 + 96) = v20;
  *v20 = v3;
  v20[1] = sub_272338BD4;
  v21 = *(v3 + 32);

  return v22(v16, v21);
}

uint64_t sub_272338BD4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_272338D5C;
  }

  else
  {

    v2 = sub_272338CF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272338CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272338D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_272338DD4(void *a1)
{
  v3 = v2;
  v5 = sub_272376E5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x60))(v7);
  if (result)
  {
    v12 = result;
    if ([result respondsToSelector_])
    {
      v13 = *((*v10 & *v1) + 0x120);
      v14 = swift_unknownObjectRetain();
      v15 = v13(v14);
      if (v15)
      {
        v16 = v15;
        v17 = (*(*v15 + 424))();
        if (v3)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          v19 = *(*v16 + 144);
          v24 = v17;
          v20 = v18;
          v19();
          v24 = v20;
          v21 = sub_2723777FC();
          v22 = sub_272376E1C();
          if (a1)
          {
            a1 = sub_272377AEC();
          }

          [v12 keywordSpotterDidStopWithSummaryWithJson:v21 uuid:v22 perfLogs:a1];

          swift_unknownObjectRelease_n();

          return (*(v6 + 8))(v9, v5);
        }
      }

      else
      {
        return swift_unknownObjectRelease_n();
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_272339068(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v6 frameCapacity:a1];
    if (v8)
    {
      v9 = v8;
      [v8 setFrameLength_];
      v10 = [v9 int16ChannelData];
      if (v10)
      {
        v11 = a1 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = 0;
        do
        {
          *(*v10 + v12) = 0;
          v12 += 2;
        }

        while (2 * a1 != v12);
      }
    }

    else
    {
      v9 = 0x8000000272389140;
      sub_2722032B4();
      swift_allocError();
      *v18 = 0xD000000000000019;
      v18[1] = 0x8000000272389140;
      swift_willThrow();
    }
  }

  else
  {
    v13 = sub_2722C3774();
    (*(v3 + 16))(v5, v13, v2);
    v14 = sub_27237725C();
    v15 = sub_272377E8C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "Failed to create audio format", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v9 = 0x8000000272389120;
    sub_2722032B4();
    swift_allocError();
    *v17 = 0xD00000000000001DLL;
    v17[1] = 0x8000000272389120;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_272339310(void *a1, float a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 frameLength];
    v7 = v6;
    __C = 32767.0;
    __B = -32768.0;
    v13 = a2;
    if (v6)
    {
      v8 = sub_272377B5C();
      *(v8 + 16) = v7;
      bzero((v8 + 32), 4 * v7);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    vDSP_vflt16(*v5, 1, (v8 + 32), 1, v7);

    v11 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    MEMORY[0x2743C6C10](v8 + 32, 1, &v13, v11 + 32, 1, v7);

    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2721FF8B4(0, *(v11 + 2), 0, v11);
    }

    vDSP_vclip(v11 + 8, 1, &__B, &__C, v12 + 8, 1, v7);

    vDSP_vfixr16(v12 + 8, 1, *v5, 1, v7);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    v9[1] = 0x8000000272390E10;
    return swift_willThrow();
  }
}

int64_t sub_27233951C(uint64_t a1, float a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x277D85000];
  v14 = (*MEMORY[0x277D85000] & *v2) + 432;
  v15 = *((*MEMORY[0x277D85000] & *v2) + 0x1B0);
  result = v15(v10);
  if (result < 1)
  {
    v43 = v6;
    v18 = *(a1 + 16);
    if (v18)
    {
      v41 = v5;
      v42 = v14;
      v19 = 0;
      v20 = a1 + 32;
      while (1)
      {
        v21 = __OFADD__(v19, 3) ? 0x7FFFFFFFFFFFFFFFLL : v19 + 3;
        if (v19 < 0)
        {
          break;
        }

        if (v19 + 1 >= v18)
        {
          goto LABEL_28;
        }

        if (v19 + 2 >= v18)
        {
          goto LABEL_29;
        }

        v22 = (((*(v20 + 4 * v19) + 0.0) + *(v20 + 4 * (v19 + 1))) + *(v20 + 4 * (v19 + 2))) / 3.0;
        result = (*((*v13 & *v2) + 0x198))();
        if (result)
        {
          if (v22 > a2)
          {
            (*((*v13 & *v2) + 0x1B8))(1);
            type metadata accessor for VARequestContext(0);
            v30 = mach_absolute_time();
            v31 = (*((*v13 & *v2) + 0x1C8))();
            v32 = v30 >= v31;
            result = v30 - v31;
            if (v32)
            {
              v33 = sub_2722310BC(result);
              v34 = sub_2722C389C();
              v35 = v43;
              v36 = v41;
              (*(v43 + 16))(v12, v34, v41);
              v37 = sub_27237725C();
              v38 = sub_272377E7C();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 134218496;
                *(v39 + 4) = v33;
                *(v39 + 12) = 2048;
                *(v39 + 14) = v22;
                *(v39 + 22) = 2048;
                *(v39 + 24) = a2;
                _os_log_impl(&dword_2721E4000, v37, v38, "Speech stopped in %f secs, silence probability %f > %f, wait for one more chunk", v39, 0x20u);
                MEMORY[0x2743C69C0](v39, -1, -1);
              }

              result = (*(v35 + 8))(v12, v36);
              v17 = 0;
              return v17 | ((v15(result) > 0) << 16);
            }

LABEL_30:
            __break(1u);
            return result;
          }
        }

        else if (v22 < a2)
        {
          (*((*v13 & *v2) + 0x1A0))(1);
          v23 = mach_absolute_time();
          (*((*v13 & *v2) + 0x1D0))(v23);
          v24 = sub_2722C389C();
          v25 = v43;
          v26 = v41;
          (*(v43 + 16))(v9, v24, v41);
          v27 = sub_27237725C();
          v28 = sub_272377E7C();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 134218240;
            *(v29 + 4) = v22;
            *(v29 + 12) = 2048;
            *(v29 + 14) = a2;
            _os_log_impl(&dword_2721E4000, v27, v28, "Speech started, silence probability %f < %f", v29, 0x16u);
            MEMORY[0x2743C69C0](v29, -1, -1);
          }

          result = (*(v25 + 8))(v9, v26);
          v17 = 1;
          return v17 | ((v15(result) > 0) << 16);
        }

        v19 = v21;
        if (v21 >= v18)
        {
          v17 = 0;
          return v17 | ((v15(result) > 0) << 16);
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v17 = 0;
  }

  else
  {
    (*((*v13 & *v2) + 0x1A0))(0);
    result = (*((*v13 & *v2) + 0x1B8))(0);
    v17 = 256;
  }

  return v17 | ((v15(result) > 0) << 16);
}

void sub_272339AD0(uint64_t a1)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VARuntimeParameters(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v9);
  if (!v13)
  {
    sub_2722032B4();
    swift_allocError();
    *v29 = 0x75716552206C694ELL;
    v29[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v14 = v13;
  v49 = v2;
  v15 = (*((*v12 & *v1) + 0x150))();
  if (!v15)
  {
    sub_2722032B4();
    swift_allocError();
    *v30 = 0xD000000000000011;
    v30[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_10:

    return;
  }

  v16 = v15;
  v17 = (*((*v12 & *v1) + 0x78))();
  if (!v17)
  {
    sub_2722032B4();
    swift_allocError();
    *v31 = 0xD000000000000011;
    v31[1] = 0x8000000272388910;
    swift_willThrow();

    goto LABEL_10;
  }

  v47 = v17;
  v48 = v16;
  v46 = v5;
  type metadata accessor for VAInstrumentedKeywordResult(0);
  v18 = (*(*a1 + 104))();
  v19 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v18);
  v20 = *(*a1 + 128);

  v22 = v20(v21);
  v23 = *(*v19 + 136);
  v44 = *v19 + 136;
  v45 = v23;
  v24 = (v23)(v22);
  v25 = (*(*a1 + 152))(v24);
  v26 = (*(*v19 + 160))(v25);
  (*(*v14 + 312))(v26);
  v27 = sub_27234F188();
  v28 = sub_27226ABB0(v11, type metadata accessor for VARuntimeParameters);
  if ((v27 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v20(v28))
  {

LABEL_23:
    v40 = v49;
    v41 = (*(*v14 + 432))(v19);
    if (!v40)
    {
      (*(*v14 + 144))(v41);
      (*(*v48 + 80))(v19, v7);
      (*(v46 + 8))(v7, v4);
    }

    return;
  }

  v32 = (*(*v14 + 392))();
  v33 = *(v32 + 16);
  if (!v33)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_21:
    v45(v36);
    goto LABEL_22;
  }

  v50 = MEMORY[0x277D84F90];
  v43 = v32;
  sub_272215F8C(0, v33, 0);
  v34 = v43;
  v35 = 32;
  v36 = v50;
  while (1)
  {
    v37 = *(v34 + v35);
    if ((LODWORD(v37) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v37 <= -32769.0)
    {
      goto LABEL_27;
    }

    if (v37 >= 32768.0)
    {
      goto LABEL_28;
    }

    v50 = v36;
    v39 = *(v36 + 16);
    v38 = *(v36 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_272215F8C((v38 > 1), v39 + 1, 1);
      v34 = v43;
      v36 = v50;
    }

    *(v36 + 16) = v39 + 1;
    *(v36 + 2 * v39 + 32) = v37;
    v35 += 4;
    if (!--v33)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_27233A15C(uint64_t a1, uint64_t a2)
{
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      v5 = sub_2723777FC();
      [v4 keywordSpotterDidUpdateScoresWithVerboseLog_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_27233A25C(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v107 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v107 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v107 - v14;
  (*(*a1 + 208))(&v123, v13);
  v16 = v124;
  if (v124)
  {
    v108 = v12;
    v109 = v15;
    v117 = v6;
    v118 = v3;
    v119 = v2;
    v17 = v125;
    v116 = v123;
    v18 = v130;
    v113 = v129;
    LODWORD(v115) = v128;
    LODWORD(v112) = v127;
    LODWORD(v111) = v126;
    v114 = type metadata accessor for VAKeywordSpottedEvent();
    v19 = *(*a1 + 152);

    v110 = v19(v20);
    v21 = (*(*a1 + 400))();
    v22 = (*(*a1 + 128))();
    v23 = (*(*a1 + 472))();
    v25 = v24;
    v26 = *(*a1 + 544);

    v28 = v26(v27);
    LOBYTE(v26) = v29;
    v30 = (*(*a1 + 496))();
    v31 = (*(*a1 + 568))();
    v33 = sub_272345314(v116, v16, v110, v111 & 1, v112 & 1, v115 & 1, v22, v23, v17, v21, v25, v113, v18, v28, v26 & 1, v30, v31, v32);
    sub_2721F40F0(&v123, &qword_2808819E0, &qword_27237D890);
    if (v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech + 8])
    {
      v34 = 0.0;
    }

    else
    {
      v34 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech];
    }

    v35 = v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore] == 0;
    v36 = 0x3E6863656570733CLL;
    if (v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore])
    {
      v37 = 0x3E6C69733CLL;
    }

    else
    {
      v37 = 0x3E6863656570733CLL;
    }

    v114 = v37;
    if (v35)
    {
      v38 = 0xE800000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter];
    if (v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter])
    {
      v36 = 0x3E6C69733CLL;
    }

    *&v115 = v36;
    if (v39)
    {
      v40 = 0xE500000000000000;
    }

    else
    {
      v40 = 0xE800000000000000;
    }

    v41 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
    v42 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8];
    v43 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword + 8];
    if (v43)
    {
      v44 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword];
      v121 = *&v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
      v122 = v42;

      MEMORY[0x2743C4AD0](124, 0xE100000000000000);
      MEMORY[0x2743C4AD0](v44, v43);

      v41 = v121;
      v42 = v122;
    }

    else
    {
    }

    if ((v33[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_speechDuring] & 1) == 0)
    {
      v121 = 2763306;
      v122 = 0xE300000000000000;
      MEMORY[0x2743C4AD0](v41, v42);

      MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
      v41 = v121;
      v42 = v122;
    }

    v49 = sub_2722C389C();
    v51 = v118 + 16;
    v50 = *(v118 + 16);
    v113 = v50;
    v116 = v33;
    if (v34 <= 0.0)
    {
      v63 = v108;
      v50(v108, v49, v119);
      v64 = v33;

      v65 = sub_27237725C();
      v66 = sub_272377E6C();

      LODWORD(v112) = v66;
      v67 = v66;
      v68 = v65;
      if (os_log_type_enabled(v65, v67))
      {
        v110 = v40;
        v111 = v51;
        v69 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v121 = v109;
        *v69 = 136316162;
        v70 = v64;
        if (*&v64[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8])
        {
          v71 = *&v64[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
          v72 = *&v64[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8];
        }

        else
        {
          v71 = 1701736302;
          v72 = 0xE400000000000000;
        }

        v92 = v116;

        v93 = sub_2721FFD04(v71, v72, &v121);

        *(v69 + 4) = v93;
        *(v69 + 12) = 2080;
        v94 = sub_2721FFD04(v114, v38, &v121);

        *(v69 + 14) = v94;
        *(v69 + 22) = 2080;
        v95 = sub_2721FFD04(v41, v42, &v121);

        *(v69 + 24) = v95;
        *(v69 + 32) = 2080;
        v96 = sub_2721FFD04(v115, v110, &v121);

        *(v69 + 34) = v96;
        *(v69 + 42) = 2080;
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_27237AF80;
        v98 = *&v70[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score];
        v99 = MEMORY[0x277D83B08];
        *(v97 + 56) = MEMORY[0x277D83A90];
        *(v97 + 64) = v99;
        *(v97 + 32) = v98;
        v100 = sub_27237786C();
        v102 = sub_2721FFD04(v100, v101, &v121);

        *(v69 + 44) = v102;
        _os_log_impl(&dword_2721E4000, v68, v112, "Result: [secondpass: %s] %s%s%s:%s", v69, 0x34u);
        v103 = v109;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v103, -1, -1);
        MEMORY[0x2743C69C0](v69, -1, -1);

        v73 = (*(v118 + 8))(v108, v119);
        goto LABEL_38;
      }

      v73 = (*(v118 + 8))(v63, v119);
    }

    else
    {
      v108 = v41;
      v52 = v109;
      v53 = v119;
      v50(v109, v49, v119);
      v54 = v33;

      v55 = sub_27237725C();
      v56 = v40;
      v57 = sub_272377E6C();

      LODWORD(v110) = v57;
      v112 = v55;
      if (os_log_type_enabled(v55, v57))
      {
        v58 = v56;
        v111 = v51;
        v59 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v121 = v107;
        *v59 = 136316418;
        v60 = v108;
        if (*&v54[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8])
        {
          v61 = *&v54[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
          v62 = *&v54[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult + 8];
        }

        else
        {
          v61 = 1701736302;
          v62 = 0xE400000000000000;
        }

        v74 = sub_2721FFD04(v61, v62, &v121);

        *(v59 + 4) = v74;
        *(v59 + 12) = 2080;
        v75 = sub_2721FFD04(v114, v38, &v121);

        *(v59 + 14) = v75;
        *(v59 + 22) = 2080;
        v76 = sub_2721FFD04(v60, v42, &v121);

        *(v59 + 24) = v76;
        *(v59 + 32) = 2080;
        v77 = sub_2721FFD04(v115, v58, &v121);

        *(v59 + 34) = v77;
        *(v59 + 42) = 2080;
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v78 = swift_allocObject();
        v115 = xmmword_27237AF80;
        *(v78 + 16) = xmmword_27237AF80;
        v79 = *&v54[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score];
        v80 = MEMORY[0x277D83B08];
        *(v78 + 56) = MEMORY[0x277D83A90];
        *(v78 + 64) = v80;
        *(v78 + 32) = v79;
        v81 = sub_27237786C();
        v83 = sub_2721FFD04(v81, v82, &v121);

        *(v59 + 44) = v83;
        *(v59 + 52) = 2080;
        v84 = swift_allocObject();
        v85 = MEMORY[0x277D839F8];
        *(v84 + 16) = v115;
        v86 = MEMORY[0x277D83A80];
        *(v84 + 56) = v85;
        *(v84 + 64) = v86;
        *(v84 + 32) = v34;
        v87 = sub_27237786C();
        v89 = sub_2721FFD04(v87, v88, &v121);

        *(v59 + 54) = v89;
        v90 = v112;
        _os_log_impl(&dword_2721E4000, v112, v110, "Result: [secondpass: %s] %s%s%s:%s %s secs after end of speech", v59, 0x3Eu);
        v91 = v107;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v91, -1, -1);
        MEMORY[0x2743C69C0](v59, -1, -1);

        v73 = (*(v118 + 8))(v109, v119);
      }

      else
      {

        v73 = (*(v118 + 8))(v52, v53);
      }
    }

    v92 = v116;
LABEL_38:
    v104 = MEMORY[0x277D85000];
    v105 = (*((*MEMORY[0x277D85000] & *v120) + 0x60))(v73);
    if (v105)
    {
      [v105 keywordSpotterDidDetectKeywordWithEvent_];
      v105 = swift_unknownObjectRelease();
    }

    v106 = (*((*v104 & *v120) + 0x120))(v105);
    if (v106)
    {
      (*(*v106 + 408))(a1);
    }

    return;
  }

  v45 = sub_2722C389C();
  (*(v3 + 16))(v9, v45, v2);
  v46 = sub_27237725C();
  v47 = sub_272377E8C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2721E4000, v46, v47, "Did not actually have a keyword in keywordSpotterShouldTriggerKeyword", v48, 2u);
    MEMORY[0x2743C69C0](v48, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
}

uint64_t sub_27233B140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2721F065C(&qword_2808830E8, &unk_2723862A0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for VASpeechBiasData(0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_272376DFC();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233B2BC, 0, 0);
}

uint64_t sub_27233B2BC()
{
  *(v0 + 48) = *(v0 + 64);
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v23 = *(v0 + 136);
  v3 = *(v0 + 80);
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v4 = sub_2723777CC();
  v6 = v5;
  *(v0 + 168) = v4;
  *(v0 + 176) = v5;
  sub_272376DEC();
  sub_272376DAC();
  v7 = *(v2 + 8);
  *(v0 + 184) = v7;
  *(v0 + 192) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = v7(v1, v23);
  v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x180))(v8);
  if (*(v9 + 16) && (v10 = sub_27220038C(v4, v6), (v11 & 1) != 0))
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    sub_27233F4E8(*(v9 + 56) + *(*(v0 + 104) + 72) * v10, v13, type metadata accessor for VASpeechBiasData);

    sub_27233F6BC(v13, v12, type metadata accessor for VASpeechBiasData);
    if (sub_272376DBC())
    {
      v7(*(v0 + 160), *(v0 + 136));

      sub_27233F6BC(*(v0 + 128), *(v0 + 56), type metadata accessor for VASpeechBiasData);

      v14 = *(v0 + 8);

      return v14();
    }

    sub_27226ABB0(*(v0 + 128), type metadata accessor for VASpeechBiasData);
  }

  else
  {
  }

  v16 = *(v0 + 72);
  type metadata accessor for VASpeechAPI();
  v17 = type metadata accessor for VARuntimeParameters(0);
  v18 = *(v17 + 108);
  *(v0 + 216) = *(v16 + 88);
  v19 = *(v16 + *(v17 + 120));
  v20 = swift_task_alloc();
  *(v0 + 200) = v20;
  *v20 = v0;
  v20[1] = sub_27233B614;
  v21 = *(v0 + 112);
  v22 = *(v0 + 64);

  return static VASpeechAPI.createBiasData(_:_:_:customLMWeight:)(v21, v22, v16 + v18, (v0 + 216), v19);
}

uint64_t sub_27233B614()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_27233B8F0;
  }

  else
  {
    v2 = sub_27233B730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27233B730()
{
  v12 = v0[23];
  v2 = v0[21];
  v1 = v0[22];
  v11 = v0[20];
  v3 = v0[17];
  v4 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  sub_27233F4E8(v0[14], v6, type metadata accessor for VASpeechBiasData);
  (*(v4 + 56))(v6, 0, 1, v5);
  v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x190))(v0 + 2);
  sub_27233B9A8(v6, v2, v1);
  v8(v0 + 2, 0);
  v12(v11, v3);
  sub_27233F6BC(v0[14], v0[7], type metadata accessor for VASpeechBiasData);

  v9 = v0[1];

  return v9();
}

uint64_t sub_27233B8F0()
{
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27233B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2721F065C(&qword_2808830E8, &unk_2723862A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for VASpeechBiasData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2721F40F0(a1, &qword_2808830E8, &unk_2723862A0);
    sub_27233E230(a2, a3, v9);

    return sub_2721F40F0(v9, &qword_2808830E8, &unk_2723862A0);
  }

  else
  {
    sub_27233F6BC(a1, v12, type metadata accessor for VASpeechBiasData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_27233E900(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_27233BB7C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v44 = a2;
  v45 = a1;
  v5 = type metadata accessor for VARuntimeParameters(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v42 = &v37 - v10;
  v12 = swift_allocObject();
  v41 = v12;
  *(v12 + 16) = 0;
  v43 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  v37 = v13 + 16;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  v14 = dispatch_semaphore_create(0);
  v15 = sub_272377C3C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v40 = type metadata accessor for VARuntimeParameters;
  sub_27233F4E8(a3, v8, type metadata accessor for VARuntimeParameters);
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v14;
  v21 = v20 + v16;
  v22 = v41;
  sub_27233F6BC(v8, v21, v40);
  *(v20 + v17) = v44;
  v23 = v45;
  *(v20 + v18) = v45;
  v24 = v46;
  *(v20 + v39) = v46;
  *(v20 + v19) = v13;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v25 = v14;

  v26 = v23;
  v27 = v24;

  sub_27222A1F0(0, 0, v42, &unk_2723862B8, v20);

  sub_272377F5C();
  v28 = v43;
  swift_beginAccess();
  v29 = *v28;
  if (v29)
  {
    goto LABEL_2;
  }

  v31 = v38;
  swift_beginAccess();
  v29 = *(v13 + 32);
  if (!v29)
  {
    sub_2722032B4();
    swift_allocError();
    *v36 = 0xD000000000000041;
    v36[1] = 0x8000000272390E40;
LABEL_2:
    swift_willThrow();
    v30 = v29;

    return;
  }

  v32 = *(v13 + 48);
  v33 = *(v13 + 40);
  v35 = *(v13 + 16);
  v34 = *(v13 + 24);

  *v31 = v35;
  *(v31 + 8) = v34;
  *(v31 + 16) = v29;
  *(v31 + 24) = v33;
  *(v31 + 32) = v32 & 1;
}

uint64_t sub_27233BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  type metadata accessor for VASpeechBiasData(0);
  v8[20] = swift_task_alloc();
  v9 = sub_272376EBC();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_27237728C();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233C0B4, 0, 0);
}

uint64_t sub_27233C0B4()
{
  v41 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 112);
  v5 = *(v4 + 88);
  v6 = sub_2722C389C();
  *(v0 + 232) = v6;
  v7 = *(v3 + 16);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);

  v8 = sub_27237725C();
  v9 = sub_272377E6C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  if (v10)
  {
    v14 = *(v0 + 120);
    v35 = v4;
    v15 = swift_slowAlloc();
    v34 = v11;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315906;
    v17 = MEMORY[0x2743C4C60](v14, MEMORY[0x277D837D0]);
    v19 = sub_2721FFD04(v17, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    v38 = v5;
    *(v15 + 14) = VASpeechBiasOptions.useJITGrammar.getter() & 1;
    *(v15 + 18) = 1024;
    v39 = v5;
    *(v15 + 20) = VASpeechBiasOptions.useContactLM.getter() & 1;
    *(v15 + 24) = 1024;
    v40 = v5;
    *(v15 + 26) = VASpeechBiasOptions.useCustomLM.getter() & 1;
    _os_log_impl(&dword_2721E4000, v8, v9, "Checker: look for %s, Jit %{BOOL}d, contact %{BOOL}d, custom %{BOOL}d", v15, 0x1Eu);
    sub_2722039C8(v16);
    MEMORY[0x2743C69C0](v16, -1, -1);
    v20 = v15;
    v4 = v35;
    MEMORY[0x2743C69C0](v20, -1, -1);

    v21 = *(v13 + 8);
    v21(v34, v12);
  }

  else
  {

    v21 = *(v13 + 8);
    v21(v11, v12);
  }

  *(v0 + 256) = v21;
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = *(v0 + 136);
  v26 = *(v0 + 112);
  *(v0 + 49) = *(v26 + 89);
  v27 = type metadata accessor for VARuntimeParameters(0);
  (*(v23 + 16))(v22, v26 + *(v27 + 108), v24);
  *(v0 + 50) = *(v4 + 88);
  v28 = *((*MEMORY[0x277D85000] & *v25) + 0x258);
  v36 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 264) = v29;
  *v29 = v0;
  v29[1] = sub_27233C40C;
  v30 = *(v0 + 160);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);

  return v36(v30, v31, v32);
}

uint64_t sub_27233C40C()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {
    (*(*(v2 + 176) + 8))(*(v2 + 184), *(v2 + 168));

    return MEMORY[0x2822009F8](sub_27233CA64, 0, 0);
  }

  else
  {
    type metadata accessor for VASpeechAPI();
    v3 = swift_task_alloc();
    *(v2 + 280) = v3;
    *v3 = v2;
    v3[1] = sub_27233C5C8;
    v4 = *(v2 + 184);
    v5 = *(v2 + 160);
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);

    return static VASpeechAPI.recognize(_:_:_:_:_:_:_:_:)(v2 + 16, v6, (v2 + 49), v7, v4, (v2 + 50), v5, 0, 1.0);
  }
}

uint64_t sub_27233C5C8()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 288) = v0;

  sub_27226ABB0(v5, type metadata accessor for VASpeechBiasData);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = sub_27233CC74;
  }

  else
  {
    v6 = sub_27233C770;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_27233C770()
{
  v36 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  LODWORD(v5) = *(v0 + 48);
  (*(v0 + 240))(*(v0 + 216), *(v0 + 232), *(v0 + 192));

  v6 = sub_27237725C();
  v7 = sub_272377E6C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 256);
  v10 = *(v0 + 216);
  v34 = *(v0 + 192);
  if (v8)
  {
    v33 = v5;
    v5 = swift_slowAlloc();
    v31 = v9;
    v11 = v4;
    v12 = swift_slowAlloc();
    v35 = v12;
    *v5 = 136315650;
    v30 = v10;
    if (v1)
    {
      v13 = v2;
    }

    else
    {
      v13 = 7104878;
    }

    v32 = v2;
    if (v1)
    {
      v14 = v1;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_2721FFD04(v13, v14, &v35);

    *(v5 + 4) = v15;
    *(v5 + 12) = 2048;
    v16 = v11;
    if (v33)
    {
      v16 = 0.0;
    }

    *(v5 + 14) = v16;
    *(v5 + 22) = 2080;

    v18 = MEMORY[0x2743C4C60](v17, MEMORY[0x277D837D0]);
    v20 = v19;

    v21 = sub_2721FFD04(v18, v20, &v35);

    *(v5 + 24) = v21;
    v2 = v32;
    _os_log_impl(&dword_2721E4000, v6, v7, "SecondPass: %s conf: %f, nBest: %s", v5, 0x20u);
    swift_arrayDestroy();
    v22 = v12;
    v4 = v11;
    MEMORY[0x2743C69C0](v22, -1, -1);
    v23 = v5;
    LOBYTE(v5) = v33;
    MEMORY[0x2743C69C0](v23, -1, -1);

    v31(v30, v34);
  }

  else
  {

    v9(v10, v34);
  }

  v24 = *(v0 + 144);
  swift_beginAccess();
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  v27 = *(v24 + 32);
  *(v24 + 16) = v2;
  *(v24 + 24) = v1;
  *(v24 + 32) = v3;
  *(v24 + 40) = v4;
  *(v24 + 48) = v5;
  sub_27233FBDC(v25, v26, v27);
  sub_272377F6C();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_27233CA64()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 152);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = v1;
  v8 = v1;

  v2(v4, v3, v5);
  v9 = v1;
  v10 = sub_27237725C();
  v11 = sub_272377E8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2721E4000, v10, v11, "VASpeechAPI error: %@", v12, 0xCu);
    sub_2721F40F0(v13, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v13, -1, -1);
    MEMORY[0x2743C69C0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 256))(*(v0 + 208), *(v0 + 192));
  sub_272377F6C();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_27233CC74()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 152);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = v1;
  v8 = v1;

  v2(v4, v3, v5);
  v9 = v1;
  v10 = sub_27237725C();
  v11 = sub_272377E8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2721E4000, v10, v11, "VASpeechAPI error: %@", v12, 0xCu);
    sub_2721F40F0(v13, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v13, -1, -1);
    MEMORY[0x2743C69C0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 256))(*(v0 + 208), *(v0 + 192));
  sub_272377F6C();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_27233CE84(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_27237728C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for VASpeechBiasData(0);
  v1[6] = swift_task_alloc();
  v3 = sub_27237768C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27233D034, 0, 0);
}

uint64_t sub_27233D034()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  *(v0 + 104) = mach_absolute_time();
  type metadata accessor for VASpeechAPI();
  VATaskHintCommand.speechTaskHint()(v1);
  v3 = *(type metadata accessor for VARuntimeParameters(0) + 108);
  *(v0 + 256) = 0;
  VASpeechBiasData.init()();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_27233D144;
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = MEMORY[0x277D84F90];

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v5, v6, v8, v2 + v3, (v0 + 256), v7);
}

uint64_t sub_27233D144(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v6 = v4[8];
    v5 = v4[9];
    v7 = v4[7];
    sub_27226ABB0(v4[6], type metadata accessor for VASpeechBiasData);
    (*(v6 + 8))(v5, v7);
    v8 = sub_27233DE8C;
  }

  else
  {
    v10 = v4[11];
    v9 = v4[12];
    v12 = v4[9];
    v11 = v4[10];
    v13 = v4[7];
    v14 = v4[8];
    sub_27226ABB0(v4[6], type metadata accessor for VASpeechBiasData);
    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);

    v8 = sub_27233D30C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_27233D30C()
{
  v1 = v0[15];
  v0[17] = sub_27237750C();
  v0[18] = sub_2723774EC();
  v0[19] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = xmmword_27237AF80;
  v3 = sub_27233F87C();
  v0[21] = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v6 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_27233D42C;

  return v6(v2);
}

uint64_t sub_27233D42C(char a1)
{
  *(*v1 + 257) = a1;

  return MEMORY[0x2822009F8](sub_27233D568, 0, 0);
}

uint64_t sub_27233D568()
{
  if (*(v0 + 257) == 1)
  {

    sub_27233DFDC(*(v0 + 104));

    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = sub_2722C389C();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_27237725C();
    v8 = sub_272377E8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2721E4000, v7, v8, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v9, 2u);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    v10 = *(v0 + 168);
    v11 = *(v0 + 120);
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 24);

    (*(v13 + 8))(v12, v14);
    *(v0 + 184) = sub_2723774EC();
    v15 = swift_allocObject();
    *(v0 + 192) = v15;
    *(v15 + 16) = xmmword_27237AF80;
    *(v15 + 32) = v11;
    *(v15 + 40) = v10;
    v17 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    *v16 = v0;
    v16[1] = sub_27233D7D4;

    return v17(v15, 0x7463416563696F56, 0xEC000000736E6F69);
  }
}

uint64_t sub_27233D7D4(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_27233D910, 0, 0);
}

uint64_t sub_27233D910(uint64_t a1)
{
  if (v1[26])
  {
    v2 = swift_task_alloc();
    v1[27] = v2;
    *v2 = v1;
    v2[1] = sub_27233DA88;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v1[21];
    v4 = v1[15];
    v1[29] = sub_2723774EC();
    v5 = swift_allocObject();
    v1[30] = v5;
    *(v5 + 16) = xmmword_27237AF80;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    v8 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v6 = swift_task_alloc();
    v1[31] = v6;
    *v6 = v1;
    v6[1] = sub_27233DCA4;

    return v8(v5);
  }
}

uint64_t sub_27233DA88()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_27233DF2C;
  }

  else
  {

    v3 = sub_27233DBA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27233DBA4(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[15];
  v1[29] = sub_2723774EC();
  v4 = swift_allocObject();
  v1[30] = v4;
  *(v4 + 16) = xmmword_27237AF80;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v5 = swift_task_alloc();
  v1[31] = v5;
  *v5 = v1;
  v5[1] = sub_27233DCA4;

  return v7(v4);
}

uint64_t sub_27233DCA4(char a1)
{
  *(*v1 + 258) = a1;

  return MEMORY[0x2822009F8](sub_27233DDE0, 0, 0);
}

uint64_t sub_27233DDE0()
{

  v1 = *(v0 + 258);
  sub_27233DFDC(*(v0 + 104));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_27233DE8C()
{
  sub_27233DFDC(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_27233DF2C()
{
  v1 = v0[26];

  sub_27233DFDC(v0[13]);

  v2 = v0[1];

  return v2(0);
}

unint64_t sub_27233DFDC(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VARequestContext(0);
  v6 = mach_absolute_time();
  v7 = v6 >= a1;
  result = v6 - a1;
  if (v7)
  {
    v9 = sub_2722310BC(result);
    v10 = sub_2722C389C();
    (*(v3 + 16))(v5, v10, v2);
    v11 = sub_27237725C();
    v12 = sub_272377E7C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_2721E4000, v11, v12, "Took %f seconds for prepareSpeechAPI()", v13, 0xCu);
      MEMORY[0x2743C69C0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_27233E214@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27233E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_27220038C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27233EB10();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for VASpeechBiasData(0);
    v19 = *(v12 - 8);
    sub_27233F6BC(v11 + *(v19 + 72) * v8, a3, type metadata accessor for VASpeechBiasData);
    sub_27233E714(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for VASpeechBiasData(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_27233E39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VASpeechBiasData(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2721F065C(&qword_2808830F0, &qword_272386368);
  v40 = v4;
  result = sub_2723783DC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_27233F6BC(v28, v41, type metadata accessor for VASpeechBiasData);
      }

      else
      {
        sub_27233F4E8(v28, v41, type metadata accessor for VASpeechBiasData);
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_27233F6BC(v41, *(v9 + 56) + v27 * v17, type metadata accessor for VASpeechBiasData);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_27233E714(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    while (1)
    {
      sub_27237874C();

      sub_27237790C();
      v9 = sub_27237878C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for VASpeechBiasData(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_27233E900(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_27220038C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_27233EB10();
      goto LABEL_7;
    }

    sub_27233E39C(v15, a4 & 1);
    v21 = sub_27220038C(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_2723786BC();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for VASpeechBiasData(0) - 8) + 72) * v12;

    sub_27233FC20(a1, v20);
    return;
  }

LABEL_13:
  sub_27233EA64(v12, a2, a3, a1, v18);
}

uint64_t sub_27233EA64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VASpeechBiasData(0);
  result = sub_27233F6BC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VASpeechBiasData);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_27233EB10()
{
  v1 = v0;
  v2 = type metadata accessor for VASpeechBiasData(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_2808830F0, &qword_272386368);
  v4 = *v0;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_27233F4E8(v21 + v27, v32, type metadata accessor for VASpeechBiasData);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_27233F6BC(v26, *(v28 + 56) + v27, type metadata accessor for VASpeechBiasData);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

unint64_t sub_27233ED70(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_2808830F8, &unk_272386370);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2721F065C(&qword_2808830F0, &qword_272386368);
    v7 = sub_2723783EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v9, v5, &qword_2808830F8, &unk_272386370);
      v11 = *v5;
      v12 = v5[1];
      result = sub_27220038C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for VASpeechBiasData(0);
      result = sub_27233F6BC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for VASpeechBiasData);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL _s12VoiceActions20VAKeywordSpotterBaseC22isSupportedAudioFormatySbSo07AVAudioI0CFZ_0(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isInterleaved])
  {
    v6 = sub_2722C389C();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_27237725C();
    v8 = sub_272377E8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2721E4000, v7, v8, "Audio format is interleaved, which is not the canonical format used by VoiceActions, but shouldn't matter for single channel.", v9, 2u);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  [a1 sampleRate];
  return v10 == 16000.0 && [a1 channelCount] == 1 && objc_msgSend(a1, sel_commonFormat) == 3;
}

uint64_t sub_27233F16C(void *a1)
{
  result = _s12VoiceActions20VAKeywordSpotterBaseC22isSupportedAudioFormatySbSo07AVAudioI0CFZ_0(a1);
  if ((result & 1) == 0)
  {
    sub_27237820C();
    MEMORY[0x2743C4AD0](0xD00000000000003FLL, 0x8000000272391000);
    v3 = [a1 description];
    v4 = sub_27237782C();
    v6 = v5;

    MEMORY[0x2743C4AD0](v4, v6);

    MEMORY[0x2743C4AD0](0x466E6F6D6D6F6320, 0xEE003D74616D726FLL);
    [a1 commonFormat];
    type metadata accessor for AVAudioCommonFormat();
    sub_27237836C();
    MEMORY[0x2743C4AD0](0x7265746E49736920, 0xEF3D64657661656CLL);
    v7 = [a1 isInterleaved];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    MEMORY[0x2743C4AD0](v9, v10);

    sub_2722032B4();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_27233F334()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27233F36C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_27233F378()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27233F3C0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_27233798C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_27233F468()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27233F4A0()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_27233F4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27233F550()
{
  v1 = (type metadata accessor for VARuntimeParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v6 = v1[29];
  v7 = sub_272376EBC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_27233F6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27233F724()
{
  v2 = *(type metadata accessor for VARuntimeParameters(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_272211DBC;

  return sub_27233BF40(v10, v11, v12, v6, v0 + v3, v7, v8, v9);
}

unint64_t sub_27233F87C()
{
  result = qword_280882000;
  if (!qword_280882000)
  {
    sub_2723773AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882000);
  }

  return result;
}

uint64_t dispatch thunk of VAKeywordSpotterBase.addAudioAsyncNoChecks(buffer:hostTime:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x218);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_272211DBC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of VAKeywordSpotterBase.prepareSpeechAPI(runtimeParameters:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x268);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722D6BA4;

  return v7(a1);
}

void sub_27233FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_27233FC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASpeechBiasData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AVAudioCommonFormat()
{
  if (!qword_280883100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280883100);
    }
  }
}

void (*sub_27233FCF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECC60;
}

uint64_t sub_27233FE4C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return a2(v3 + v6, a3);
}

uint64_t sub_27233FEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27233FF38(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_27233FF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_27234006C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2723400B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27234016C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated;
  v11 = sub_27237832C();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  swift_beginAccess();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v9 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_27237833C();
  (*(v6 + 32))(v9 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock, v8, v5);
  *(v9 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections) = MEMORY[0x277D84F90];
  v12 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(a3);
  return v12;
}

uint64_t sub_272340334(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = v71 - v11;
  v12 = type metadata accessor for VARuntimeParameters(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 208))(&v90, v13);
  v16 = v91;
  if (!v91)
  {
    v43 = sub_2722C389C();
    v7[2](v10, v43, v6);
    v44 = sub_27237725C();
    v45 = sub_272377E7C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v7;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2721E4000, v44, v45, "Did not find a detection in StrategyLayerAVS:handleKeywordResult", v47, 2u);
      MEMORY[0x2743C69C0](v47, -1, -1);

      return (v46[1])(v10, v6);
    }

    else
    {

      return (v7[1])(v10, v6);
    }
  }

  v17 = v90;
  v18 = v92;

  v19 = sub_2721F40F0(&v90, &qword_2808819E0, &qword_27237D890);
  (*(*v1 + 176))(v19);
  v20 = VARuntimeParameters.keywordsToThresholds.getter();
  sub_272216BD8(v15);
  if (!v20[2])
  {

    goto LABEL_32;
  }

  v21 = sub_27220038C(v17, v16);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_32:

    sub_2722032B4();
    swift_allocError();
    *v48 = 0xD00000000000002ELL;
    v48[1] = 0x8000000272391040;
    return swift_willThrow();
  }

  v24 = *(v20[7] + 4 * v21);

  if (v24 >= v18)
  {
    return result;
  }

  result = sub_272340D30();
  if (result)
  {
    return result;
  }

  v76 = v6;
  v26 = (*(*v4 + 240))(&v85);
  v28 = v27;

  MEMORY[0x2743C4C30](v29);
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_272377B2C();
  }

  sub_272377B7C();
  v30 = (v26)(&v85, 0);
  v31 = *(*v4 + 224);
  v32 = *v4 + 224;
  v33 = v31(v30);
  v34 = v33 >> 62 ? sub_2723783AC() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v34 < 1)
  {
    return result;
  }

  v77 = sub_27232C2C4();
  v35 = *v77;
  v74 = v31;
  v73 = v32;
  v36 = (v31)();
  v37 = v36;
  v26 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    v38 = sub_2723783AC();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v7;
  v71[1] = v3;
  if (!v38)
  {
    v39 = 0;
    goto LABEL_36;
  }

  v3 = 0;
  v72 = 0;
  v7 = &v85;
  while (2)
  {
    v39 = v3;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x2743C5370](v39, v37);
        v3 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v39 >= *(v26 + 16))
        {
          goto LABEL_49;
        }

        v40 = *(v37 + 8 * v39 + 32);

        v3 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      (*(*v40 + 208))(&v80);
      v85 = v80;
      v86 = v81;
      v87 = v82;
      v88 = v83;
      v89 = v84;
      if (!*(&v80 + 1))
      {
        break;
      }

      v41 = *&v86;

      sub_2721F40F0(&v85, &qword_2808819E0, &qword_27237D890);
      if (v35 < v41)
      {
        goto LABEL_27;
      }

LABEL_22:
      ++v39;
      if (v3 == v38)
      {
        v39 = v72;
        goto LABEL_36;
      }
    }

    v42 = *v77;

    if (v35 >= v42)
    {
      goto LABEL_22;
    }

LABEL_27:
    v72 = v39;
    if (v3 != v38)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v50 = v74(v49);
  if ((v50 & 0xC000000000000001) == 0)
  {
    v51 = v76;
    v52 = v75;
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v39 < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v50 + 8 * v39 + 32);

      goto LABEL_40;
    }

    __break(1u);
LABEL_56:

    __break(1u);
    goto LABEL_57;
  }

  v53 = MEMORY[0x2743C5370](v39, v50);
  v51 = v76;
  v52 = v75;
LABEL_40:

  v54 = sub_2722C389C();
  v55 = v78;
  v52[2](v78, v54, v51);

  v56 = sub_27237725C();
  v57 = sub_272377E7C();
  if (!os_log_type_enabled(v56, v57))
  {

    (v52[1])(v55, v51);
    goto LABEL_45;
  }

  LODWORD(v77) = v57;
  v58 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  v79 = v74;
  *v58 = 136315650;
  v59 = *(*v53 + 208);
  v59(&v85);
  v60 = *(&v85 + 1);
  if (!*(&v85 + 1))
  {
    goto LABEL_56;
  }

  v61 = v85;

  sub_2721F40F0(&v85, &qword_2808819E0, &qword_27237D890);
  v62 = sub_2721FFD04(v61, v60, &v79);

  *(v58 + 4) = v62;
  *(v58 + 12) = 2048;
  (v59)(&v80, v63);
  if (*(&v80 + 1))
  {
    v64 = *&v81;

    sub_2721F40F0(&v80, &qword_2808819E0, &qword_27237D890);
    *(v58 + 14) = v64;
    *(v58 + 22) = 2048;
    *(v58 + 24) = v24;
    _os_log_impl(&dword_2721E4000, v56, v77, "FINAL AVS KEYWORD DETECTED ((^D&^)): %s with score %f, using threshold %f", v58, 0x20u);
    v65 = v74;
    sub_2722039C8(v74);
    MEMORY[0x2743C69C0](v65, -1, -1);
    MEMORY[0x2743C69C0](v58, -1, -1);

    (v75[1])(v78, v76);
LABEL_45:
    v66 = (*(*v4 + 232))(MEMORY[0x277D84F90]);
    if ((*(*v4 + 152))(v66))
    {
      v68 = v67;
      ObjectType = swift_getObjectType();
      (*(v68 + 16))(v53, ObjectType, v68);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v70 = 0xD00000000000001ELL;
      v70[1] = 0x8000000272391070;
      swift_willThrow();
    }
  }

  else
  {
LABEL_57:

    __break(1u);
  }

  return result;
}

uint64_t sub_272340D30()
{
  v1 = v0;
  v2 = sub_27237832C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for VARuntimeParameters(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 176))(v16);
  v19 = *(v18 + 2);
  v33 = *(v18 + 3);
  v20 = v18[32];
  v21 = sub_272216BD8(v18);
  if ((v20 & 1) == 0)
  {
    v30 = v19;
    v31 = v5;
    v32 = v9;
    v22 = *(*v1 + 200);
    v22(v21);
    v23 = *(v3 + 48);
    v24 = v23(v14, 1, v2);
    sub_2721F40F0(v14, &qword_280882B68, &unk_2723863E0);
    if (v24 != 1)
    {
      v25 = v31;
      v26 = sub_27237830C();
      v22(v26);
      result = v23(v12, 1, v2);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v28 = *(v3 + 8);
      v28(v25, v2);
      v28(v12, v2);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    v29 = v32;
    sub_27237830C();
    (*(v3 + 56))(v29, 0, 1, v2);
    (*(*v1 + 208))(v29);
  }

  return 0;
}

uint64_t sub_2723410C8()
{
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated, &qword_280882B68, &unk_2723863E0);
  v1 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_272341178()
{
  v0 = VAStrategyLayer.deinit();

  sub_272216300(v1 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated, &qword_280882B68, &unk_2723863E0);
  v2 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock;
  v3 = sub_27237834C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_27234128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v11);
  type metadata accessor for VAStrategyAVS(0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_lastActivated;
  v14 = sub_27237832C();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  swift_beginAccess();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(v11, v12 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_params);
  sub_27237833C();
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_clock, v8, v5);
  *(v12 + OBJC_IVAR____TtC12VoiceActions13VAStrategyAVS_detections) = MEMORY[0x277D84F90];
  v15 = sub_2722591B0();
  sub_272216BD8(v11);
  return v15;
}

uint64_t type metadata accessor for VAStrategyAVS(uint64_t a1)
{
  result = qword_280892160;
  if (!qword_280892160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27234154C(uint64_t a1)
{
  type metadata accessor for VARuntimeParameters(319);
  if (v1 <= 0x3F)
  {
    sub_2723022B8(319);
    if (v2 <= 0x3F)
    {
      sub_27237834C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t normalizeFP32Array(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_2722005AC((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5 + 32) = v6 / 32767.0;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t normalizeEmbedding(_:)(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  LODWORD(__C[0]) = 2143289344;
  vDSP_svesq((a1 + 32), 1, __C, v2);
  v3 = *__C;
  __C[0] = a1;
  __C[3] = __C;
  v6 = sqrtf(v3);
  return sub_272305630(v2, sub_272343418);
}

uint64_t EncoderPredictionAVS.__allocating_init(embeddings:speech:normalize:)(uint64_t a1, uint64_t a2, char a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  result = swift_allocObject();
  if (a3)
  {
    v7 = *(a1 + 16);
    LODWORD(__C[0]) = 2143289344;
    v8 = result;
    vDSP_svesq((a1 + 32), 1, __C, v7);
    __C[0] = a1;
    v9 = MEMORY[0x28223BE20](*(a1 + 16));
    v10 = sub_272305630(v9, sub_27234366C);

    result = v8;
    a1 = v10;
  }

  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EncoderPredictionAVS.init(embeddings:speech:normalize:)(uint64_t a1, uint64_t a2, char a3)
{
  __C[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(a1 + 16);
    LODWORD(__C[0]) = 2143289344;
    v6 = a1;
    vDSP_svesq((a1 + 32), 1, __C, v5);
    __C[0] = v6;
    v7 = MEMORY[0x28223BE20](*(v6 + 16));
    v8 = sub_272305630(v7, sub_27234366C);

    a1 = v8;
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t EncoderPredictionAVS.deinit()
{

  return v0;
}

uint64_t EncoderPredictionAVS.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_272341B58(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t VAAVSAudioEncoderModel.init(computeUnits:)(char *a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v61 - v7;
  v9 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  type metadata accessor for VALog();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  v73 = v12;
  sub_27237836C();
  v71 = v11;
  static VALog.begin(_:_:)("VoiceActions with AVS", 21, 2u, v74, v75, v11);

  type metadata accessor for VAStrideConfiguration();
  v13 = static VAStrideConfiguration.forFlexibleAVS()();
  v14 = MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *v13) + 0xA0);
  *(v2 + 88) = v15();
  *(v2 + 96) = (*((*v14 & *v13) + 0xB8))();
  v16 = *((*v14 & *v13) + 0xD0);
  *(v2 + 104) = v16();
  v17 = v15();
  result = v16();
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v17 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_34;
  }

  *(v2 + 128) = v17 / result;
  *(v2 + 112) = (*((*v14 & *v13) + 0x1A8))();
  v19 = *((*v14 & *v13) + 0x100);
  *(v2 + 120) = v19();
  v20 = v19();
  result = v16();
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v20 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_35;
  }

  *(v2 + 136) = v20 / result;
  type metadata accessor for VAEspressoUtilsV2();
  v21 = sub_2721F7EE4();
  v22 = v72;
  sub_2723195D0(0xD00000000000001ELL, 0x8000000272391120, v21 & 1, &v76);
  if (v22)
  {
    sub_272272F68(v71);

LABEL_29:

    type metadata accessor for VAAVSAudioEncoderModel();
    return swift_deallocPartialClassInstance();
  }

  v65 = 0;
  v23 = sub_2722C389C();
  v24 = v69;
  v25 = *(v69 + 16);
  v63 = v23;
  v64 = v69 + 16;
  v62 = v25;
  (v25)(v8);
  v80[0] = v76;
  v26 = v77;
  v79 = *(&v77 + 1);
  v81 = v77;
  v27 = v8;
  v28 = *(&v78 + 1);
  sub_272203A14(v80, &v74);
  sub_27228E4E4(&v81, &v74);
  sub_27228E4E4(&v79, &v74);

  v67 = v27;
  v29 = sub_27237725C();
  v30 = sub_272377E7C();
  v31 = os_log_type_enabled(v29, v30);
  v72 = v28;
  v66 = *(&v26 + 1);
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = *(v26 + 16);
    *(v32 + 12) = 2048;
    *(v32 + 14) = *(*(&v26 + 1) + 16);
    sub_272203A70(v80);
    sub_27228E554(&v81);
    sub_27228E554(&v79);

    _os_log_impl(&dword_2721E4000, v29, v30, "AVS model is loaded with %ld inputs and %ld outputs", v32, 0x16u);
    v33 = v32;
    v24 = v69;
    MEMORY[0x2743C69C0](v33, -1, -1);
  }

  else
  {
    sub_272203A70(v80);
    sub_27228E554(&v81);
    sub_27228E554(&v79);
  }

  v36 = *(v24 + 8);
  v34 = v24 + 8;
  v35 = v36;
  v36(v67, v70);
  if (*(v26 + 16) != 1)
  {
    goto LABEL_27;
  }

  sub_27220038C(0xD000000000000011, 0x8000000272391180);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v26 + 16))
  {
    goto LABEL_27;
  }

  v38 = sub_27220038C(0xD000000000000011, 0x8000000272391180);
  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

  v69 = v34;
  v40 = *(**(*(v26 + 56) + 8 * v38) + 200);

  v42 = v40(v41);

  if (*(v42 + 16) < 2uLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v43 = *(v42 + 40);

  if (v43 != 64)
  {
LABEL_27:
    sub_2722032B4();
    swift_allocError();
    *v59 = 0xD00000000000001BLL;
    v59[1] = 0x8000000272391160;
    swift_willThrow();

    sub_272203A70(v80);
    sub_27228E554(&v81);
    sub_27228E554(&v79);

LABEL_28:

    sub_272272F68(v71);
    goto LABEL_29;
  }

  v44 = v66;
  if (*(v66 + 16) != 3)
  {
    goto LABEL_31;
  }

  sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367);
  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (!*(v44 + 16))
  {
    goto LABEL_31;
  }

  v46 = sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  v48 = *(**(*(v44 + 56) + 8 * v46) + 200);

  v50 = v48(v49);

  if (*(v50 + 16) < 2uLL)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v51 = *(v50 + 40);

  if (v51 != 320)
  {
LABEL_31:
    sub_2722032B4();
    swift_allocError();
    *v60 = 0xD00000000000001CLL;
    v60[1] = 0x80000002723911A0;
    swift_willThrow();

    sub_272203A70(v80);
    sub_27228E554(&v81);
    sub_27228E554(&v79);

    goto LABEL_28;
  }

  v52 = v77;
  *(v2 + 16) = v76;
  *(v2 + 32) = v52;
  *(v2 + 48) = v78;
  type metadata accessor for VAAVSFeatureExtract();
  sub_272203A14(v80, &v74);
  sub_27228E4E4(&v81, &v74);
  sub_27228E4E4(&v79, &v74);

  *(v2 + 64) = VAAVSFeatureExtract.__allocating_init()();
  *(v2 + 72) = -1;
  v53 = v68;
  v54 = v70;
  v62(v68, v63, v70);
  v55 = sub_27237725C();
  v56 = sub_272377E7C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = 64;
    _os_log_impl(&dword_2721E4000, v55, v56, "VAFeatureExtract created with %ld filters", v57, 0xCu);
    MEMORY[0x2743C69C0](v57, -1, -1);
  }

  v35(v53, v54);
  v58 = v71;
  VASignpostInterval.end(_:)(0);

  sub_272203A70(v80);
  sub_27228E554(&v81);
  sub_27228E554(&v79);

  sub_272272F68(v58);
  return sub_2722591B0();
}

uint64_t sub_2723425F8()
{
  type metadata accessor for VACircularMatrixBuffer();
  v1 = sub_272302780(41, 64);
  result = (*(*v0 + 240))(v1);
  v0[9] = 0;
  return result;
}

uint64_t sub_27234266C(uint64_t a1)
{
  v3 = v2;
  __C[2] = *MEMORY[0x277D85DE8];
  v5 = (*(*v1 + 232))();
  if (!v5)
  {
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD000000000000039;
    v18[1] = 0x80000002723911C0;
    swift_willThrow();
    return v3;
  }

  v6 = v5;
  if ((*(v1 + 72) & 0x8000000000000000) != 0)
  {
    sub_2722032B4();
    swift_allocError();
    *v19 = 0xD000000000000021;
    v19[1] = 0x8000000272391220;
LABEL_10:
    swift_willThrow();

    return v3;
  }

  v7 = *(a1 + 16);
  v8 = (*v1 + 296);
  v9 = *v8;
  if (v7 != (*v8)())
  {
    sub_27237820C();

    v20 = sub_27237862C();
    MEMORY[0x2743C4AD0](v20);

    v21 = MEMORY[0x2743C4AD0](0x746365707845203BLL, 0xEB00000000206465);
    (v9)(v21);
    v22 = sub_27237862C();
    MEMORY[0x2743C4AD0](v22);

    v3 = 0x8000000272391200;
    sub_272318EA8();
    swift_allocError();
    *v23 = 0xD000000000000018;
    v23[1] = 0x8000000272391200;
    goto LABEL_10;
  }

  normalizeFP32Array(_:)(a1);
  v10 = *(v1 + 72);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  *(v1 + 72) = v12;
  v13 = (*((*MEMORY[0x277D85000] & **(v1 + 64)) + 0x170))();

  (*(*v6 + 168))(v13);

  v15 = (*(*v6 + 176))(v14);
  v16 = (*(*v1 + 288))(v15);
  if (v2)
  {
  }

  else
  {
    v25 = v17;
    v26 = v16;

    type metadata accessor for EncoderPredictionAVS();
    v3 = swift_allocObject();
    v27 = *(v26 + 16);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v26 + 32), 1, __C, v27);
    __C[0] = v26;
    v28 = MEMORY[0x28223BE20](*(v26 + 16));
    v29 = sub_272305630(v28, sub_27234366C);

    *(v3 + 16) = v29;
    *(v3 + 24) = v25;
  }

  return v3;
}

uint64_t sub_272342AD0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v15 = a1;
  sub_272377BAC();
  v4 = sub_272377BAC();
  WitnessTable = swift_getWitnessTable();
  if (sub_272377E2C())
  {

    return v3;
  }

  v14 = v3;
  v15 = sub_2723776FC();
  result = sub_272377E1C();
  if (v13[5])
  {
    v7 = sub_272377B8C();

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        v8 = 0;
        v9 = MEMORY[0x277D84AC0];
        do
        {
          v10 = v8 + 1;
          v14 = v3;
          MEMORY[0x28223BE20](result);
          v13[2] = a2;
          v13[3] = v11;
          v14 = sub_2722BB104(sub_2723434C8, v13, v4, a2, MEMORY[0x277D84A98], WitnessTable, v9, v12);
          result = sub_272377B9C();
          v8 = v10;
        }

        while (v7 != v10);
      }

      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_272342C6C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = *(*(result + 32) + 16);
  v4 = v1 * v3;
  if ((v1 * v3) >> 64 != (v1 * v3) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_272377B5C();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 4 * v4);
    result = v5;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }
  }

  v6 = 0;
  v7 = 0;
  while (2)
  {
    v8 = v7 + 1;
    v9 = v2;
    v10 = v1;
    do
    {
      if (v7 >= *(*v9 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v6 >= *(result + 16))
      {
        goto LABEL_17;
      }

      *(result + 4 * v6++ + 32) = *(*v9 + 4 * v7 + 32);
      v9 += 8;
      --v10;
    }

    while (v10);
    ++v7;
    if (v8 != v3)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_272342D78()
{
  v2 = v1;
  v3 = (*(*v0 + 280))();
  if (!*(v0[4] + 16) || (sub_27220038C(0xD000000000000011, 0x8000000272391180), (v4 & 1) == 0) || (sub_2721F065C(&qword_2808824C0, &qword_272380780), (v5 = swift_dynamicCastClass()) == 0))
  {

    sub_2722032B4();
    swift_allocError();
    *v16 = 0xD000000000000027;
    v16[1] = 0x8000000272391250;
    swift_willThrow();
    return v3;
  }

  v6 = *(*v5 + 624);

  v6(v3);

  sub_272275B0C();
  if (v2)
  {
LABEL_15:

    return v3;
  }

  v7 = v0[5];
  if (!*(v7 + 16) || (sub_27220038C(0x6E69646465626D65, 0xEC000000745F7367), (v8 & 1) == 0) || (sub_2721F065C(&qword_2808824C8, qword_272380788), (v9 = swift_dynamicCastClass()) == 0))
  {
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD000000000000023;
    v18[1] = 0x8000000272391280;
    swift_willThrow();
    goto LABEL_15;
  }

  v10 = *(*v9 + 720);

  v3 = v10(v11);
  if (!*(v7 + 16) || (sub_27220038C(0x5F65636E656C6973, 0xE900000000000074), (v12 & 1) == 0) || (v13 = swift_dynamicCastClass()) == 0)
  {

    sub_2722032B4();
    swift_allocError();
    *v19 = 0xD000000000000020;
    v19[1] = 0x80000002723912B0;
    swift_willThrow();

    goto LABEL_15;
  }

  v14 = *(*v13 + 720);

  v14(v15);

  return v3;
}

uint64_t sub_2723430D0()
{
}

uint64_t VAAVSAudioEncoderModel.deinit()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2722C389C();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27237725C();
  v6 = sub_272377EAC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "deInit VAAVSAudioEncoderModel", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = VAAudioEncoderModel.deinit();

  return v8;
}

uint64_t VAAVSAudioEncoderModel.__deallocating_deinit()
{
  VAAVSAudioEncoderModel.deinit();

  return swift_deallocClassInstance();
}

void sub_2723433C0(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 16) == v3)
  {
    v4 = a3;
    if (*a2)
    {
      vDSP_vsdiv((a1 + 32), 1, &v4, *a2, 1, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_272343478(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_2723433C0(v5, a1, v4);
  *a2 = *(v5 + 16);
}

uint64_t sub_27234371C()
{
  v0 = sub_272291FE0(&unk_28818FB38);
  swift_arrayDestroy();
  return v0;
}

id sub_272343764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

uint64_t sub_2723439CC()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272343B20(void *a1)
{
  swift_allocObject();
  v2 = sub_272344F08(a1);

  return v2;
}

void sub_272343B68()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272343C3C(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_272343DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_272343F0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272343FCC, 0, 0);
}

uint64_t sub_272343FCC()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2723440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2723441B4(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27234427C;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_27234427C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2723443C8, 0, 0);
  }
}

uint64_t sub_2723443C8()
{
  v1 = *(v0 + 24);
  type metadata accessor for quant_verifier_aa_fp32();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27234443C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2723444C8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for quant_verifier_aa_fp32Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2723445A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2723445C4, 0, 0);
}

uint64_t sub_2723445C4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_272344664;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_272344664(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2723447B0, 0, 0);
  }
}

uint64_t sub_2723447B0()
{
  v1 = *(v0 + 48);
  type metadata accessor for quant_verifier_aa_fp32Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}