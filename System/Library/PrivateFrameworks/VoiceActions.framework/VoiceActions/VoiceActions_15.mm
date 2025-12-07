uint64_t sub_272344824(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for quant_verifier_aa_fp32Input();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2723448E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v30 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v37 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  v34 = &v30 - v18;
  v20(&v30 - v18, v31, v4);
  v20(v17, v32, v4);
  v20(v14, v33, v4);
  v20(v11, v35, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v20(v8, v19, v4);
  sub_272292148();
  v35 = sub_272377E5C();
  v20(v8, v37, v4);
  v33 = sub_272377E5C();
  v21 = v30;
  v20(v8, v30, v4);
  v32 = sub_272377E5C();
  v20(v8, v11, v4);
  v22 = sub_272377E5C();
  v23 = *(v5 + 8);
  v23(v11, v4);
  v23(v21, v4);
  v23(v37, v4);
  v23(v34, v4);
  type metadata accessor for quant_verifier_aa_fp32Input();
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v32;
  v27 = v33;
  v24[2] = v35;
  v24[3] = v27;
  v24[4] = v26;
  v24[5] = v22;
  v28 = (*(*v25 + 136))();

  return v28;
}

void sub_272344C44(unint64_t a1, uint64_t a2)
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
        type metadata accessor for quant_verifier_aa_fp32Output();
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

uint64_t sub_272344F08(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
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

uint64_t sub_272345054()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27234508C(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for quant_verifier_aa_fp32();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t VAKeywordSpottedEvent.keyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword);

  return v1;
}

uint64_t VAKeywordSpottedEvent.secondPassResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult);

  return v1;
}

uint64_t VAKeywordSpottedEvent.generatedKeyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword);

  return v1;
}

uint64_t VAKeywordSpottedEvent.secondPassKeywordMatched.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched);

  return v1;
}

id sub_272345314(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, float a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  v27 = objc_allocWithZone(v18);
  v28 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
  *v28 = a1;
  v28[1] = a2;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_score] = a9;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_hostTime] = a3;
  v29 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_intervalFromEndOfSpeech];
  *v29 = a10;
  *(v29 + 8) = 0;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceBefore] = a4;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_silenceAfter] = a5;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_speechDuring] = a6;
  *&v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_audioBytes] = a7;
  v30 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassResult];
  *v30 = a8;
  v30[1] = a11;
  v31 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_generatedKeyword];
  *v31 = a12;
  v31[1] = a13;
  v32 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassDuration];
  *v32 = a14;
  v32[8] = a15 & 1;
  v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_mismatch] = a16;
  v33 = &v27[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched];
  *v33 = a17;
  v33[1] = a18;
  v37.receiver = v27;
  v37.super_class = v18;
  return objc_msgSendSuper2(&v37, sel_init);
}

id VAKeywordSpottedEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAKeywordSpottedEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAKeywordSpottedEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_27234563C(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t sub_2723456D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  swift_beginAccess();
  return sub_27233FEA8(v1 + v3, a1);
}

uint64_t sub_272345728(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  swift_beginAccess();
  sub_27233FF9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2723457E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  v11 = sub_27237832C();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  swift_beginAccess();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v9 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_27237833C();
  (*(v6 + 32))(v9 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock, v8, v5);
  v12 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(a3);
  return v12;
}

uint64_t sub_27234599C(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_27237832C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v35 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v34 = v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = v1 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params;
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params + 13) == 1)
  {
    v12 = (*(*v1 + 144))(v12);
    if (v12)
    {
      v17 = v16;
      v33 = v4;
      ObjectType = swift_getObjectType();
      v37 = 0x203A746C75736552;
      v38 = 0xE800000000000000;
      v18 = (*(*v36 + 224))();
      MEMORY[0x2743C4AD0](v18);

      (*(v17 + 8))(v37, v38, ObjectType, v17);

      v4 = v33;
      v12 = swift_unknownObjectRelease();
    }
  }

  if (*(v15 + 32) == 1)
  {
    goto LABEL_9;
  }

  v33 = v6;
  v19 = *(v15 + 16);
  v31[2] = *(v15 + 24);
  ObjectType = *(*v1 + 168);
  ObjectType(v12);
  v20 = *(v4 + 6);
  v21 = v20(v14, 1, v3);
  sub_272345DF8(v14);
  if (v21 == 1)
  {
    goto LABEL_8;
  }

  v31[1] = v19;
  v22 = v33;
  v23 = sub_27237830C();
  v24 = v34;
  ObjectType(v23);
  result = v20(v24, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  sub_27237831C();
  v26 = *(v4 + 1);
  v26(v22, v3);
  v26(v24, v3);
  result = sub_27237881C();
  if (result)
  {
LABEL_8:
    v27 = v35;
    sub_27237830C();
    (*(v4 + 7))(v27, 0, 1, v3);
    v12 = (*(*v2 + 176))(v27);
LABEL_9:
    result = (*(*v2 + 144))(v12);
    if (result)
    {
      v29 = v28;
      v30 = swift_getObjectType();
      (*(v29 + 16))(v36, v30, v29);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_272345DF8(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272345E90()
{
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v1 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v2 = sub_27237834C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t VAStrategyLayerPassthrough.deinit()
{
  v0 = VAStrategyLayer.deinit();
  sub_272216300(v0 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v1 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VAStrategyLayerPassthrough.__deallocating_deinit()
{
  v0 = VAStrategyLayer.deinit();

  sub_272216300(v1 + 16);
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  sub_272345DF8(v0 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated);
  v2 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock;
  v3 = sub_27237834C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_272346088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27237834C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v11);
  type metadata accessor for VAStrategyLayerPassthrough(0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_lastActivated;
  v14 = sub_27237832C();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  swift_beginAccess();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(v11, v12 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_params);
  swift_unknownObjectRetain();
  sub_27237833C();
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC12VoiceActions26VAStrategyLayerPassthrough_clock, v8, v5);
  v15 = sub_2722591B0();
  swift_unknownObjectRelease();
  sub_272216BD8(v11);
  return v15;
}

uint64_t type metadata accessor for VAStrategyLayerPassthrough(uint64_t a1)
{
  result = qword_280892170;
  if (!qword_280892170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272346344(uint64_t a1)
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

uint64_t sub_2723464CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

void sub_272346528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_27234657C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2723465C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

void sub_27234661C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_272346670()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723466B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346704@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

void sub_272346760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2723467B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723467F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346848()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27234688C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2723468DC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272346920(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346970()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723469B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346A04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

void sub_272346A68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_272346ABC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272346B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346B98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_timerTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272346C50()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272346C94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_272346D18(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_loopStartTime] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_timerTask] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_waitTimeForFirstPartial] = 4;
  *&v1[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VATimingInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_272346E10()
{
  result = mach_absolute_time();
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime) = result;
  return result;
}

void sub_272346E34()
{
  v1 = mach_absolute_time();
  v2 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_partialAsFinalResultTime;
  swift_beginAccess();
  *(v0 + v2) = v1;
}

uint64_t sub_272346E88(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime;
  if (!*(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v31 = a1;
    v14 = MEMORY[0x277D85000];
    v15 = *((*MEMORY[0x277D85000] & *v4) + 0x1A8);
    v32 = (*MEMORY[0x277D85000] & *v4) + 424;
    if (v15(v10))
    {
      v30 = v15;

      v16 = sub_2722C389C();
      (*(v9 + 16))(v12, v16, v8);

      v17 = sub_27237725C();
      v18 = sub_272377E7C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v29 = v5;
        v5 = v19;
        v20 = swift_slowAlloc();
        v33[0] = v20;
        *v5 = 136315138;
        *(v5 + 4) = sub_2721FFD04(v31, a2, v33);
        _os_log_impl(&dword_2721E4000, v17, v18, "Got first partial %s after speech stopped, cancel timer", v5, 0xCu);
        sub_2722039C8(v20);
        v21 = v20;
        v14 = MEMORY[0x277D85000];
        MEMORY[0x2743C69C0](v21, -1, -1);
        v22 = v5;
        LOBYTE(v5) = v29;
        MEMORY[0x2743C69C0](v22, -1, -1);
      }

      v23 = (*(v9 + 8))(v12, v8);
      if (v30(v23))
      {
        sub_2721F065C(&qword_280881A38, &unk_27237CA20);
        sub_272377CBC();
      }

      (*((*v14 & *v4) + 0x1B0))(0);
    }

    *(v4 + v13) = mach_absolute_time();
  }

  v24 = mach_absolute_time();
  if (v5)
  {
    v25 = (v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime);
    swift_beginAccess();
  }

  else
  {
    v25 = (v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime);
  }

  *v25 = v24;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v4) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v27 = *(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v27)
    {
      result = [*(v4 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v27 timingLogs_];
      }
    }
  }

  return result;
}

void sub_272347278(uint64_t a1)
{
  v3 = mach_absolute_time();
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v5 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  *(v1 + v5) = a1;
}

void sub_2723472F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272347340(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v11 = sub_2722C389C();
    (*(v8 + 16))(v10, v11, v7);
    v12 = v1;
    v13 = sub_27237725C();
    v14 = sub_272377E7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a1;
      v16 = v15;
      *v15 = 134217984;
      *(v15 + 4) = (*((*MEMORY[0x277D85000] & *v12) + 0x1C0))();

      _os_log_impl(&dword_2721E4000, v13, v14, "Speech stopped time before any partials, start %llu sec timer", v16, 0xCu);
      v17 = v16;
      a1 = v25;
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    v18 = sub_272377C3C();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    v21 = sub_27221CA6C(0, 0, v6, &unk_2723866C8, v20);
    (*((*MEMORY[0x277D85000] & *v12) + 0x1B0))(v21);
  }

  v22 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v2 + v22) = a1;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v24 = *(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v24)
    {
      result = [*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v24 timingLogs_];
      }
    }
  }

  return result;
}

uint64_t sub_272347764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_27237728C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272347830, 0, 0);
}

uint64_t sub_272347830()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x1C0);
    v3 = ((*MEMORY[0x277D85000] & *Strong) + 448) & 0xFFFFFFFFFFFFLL | 0x748D000000000000;
    v0[11] = v2;
    v0[12] = v3;
    v4 = v2();
    if (is_mul_ok(v4, 0x3B9ACA00uLL))
    {
      v5 = 1000000000 * v4;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_272347998;
      v4 = v5;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200480](v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_272347998()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_272347DB4;
  }

  else
  {
    v2 = sub_272347AAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272347AAC()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 80) + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  v3 = sub_2722C389C();
  v4 = *(v1 + 16);
  if (v2)
  {
    v4(*(v0 + 64), v3, *(v0 + 48));
    v5 = sub_27237725C();
    v6 = sub_272377E7C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v5, v6, "Got partial after speech end", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = *(v0 + 80);
    v4(*(v0 + 72), v3, *(v0 + 48));
    v14 = v13;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 88);
      v18 = *(v0 + 80);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v17();

      _os_log_impl(&dword_2721E4000, v15, v16, "No partials %llu sec after speech end, so send timing info", v19, 0xCu);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 80);
    v21 = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    if ((*((*MEMORY[0x277D85000] & *v20) + 0x1A8))(v21))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v22 = *(v0 + 80);
    v23 = *&v22[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate];
    if (v23)
    {
      v24 = [v23 respondsToSelector_];
      v25 = *(v0 + 80);
      if (v24)
      {
        [v23 timingLogs_];
      }
    }

    else
    {
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_272347DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272347E44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v11 = sub_2722C389C();
    (*(v8 + 16))(v10, v11, v7);
    v12 = sub_27237725C();
    v13 = sub_272377E7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2721E4000, v12, v13, "Speech stopped frame before any partials, start 5 sec timer", v14, 2u);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v15 = sub_272377C3C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v18 = sub_27221CA6C(0, 0, v6, &unk_2723866D8, v17);
    (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))(v18);
  }

  v19 = mach_absolute_time();
  v20 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v2 + v20) = v19;
  v21 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  *(v2 + v21) = a1;
  result = sub_272348D94();
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (result)
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v23 = *(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate);
    if (v23)
    {
      result = [*(v2 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate) respondsToSelector_];
      if (result)
      {
        return [v23 timingLogs_];
      }
    }
  }

  return result;
}

uint64_t sub_272348214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_27237728C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2723482E0, 0, 0);
}

uint64_t sub_2723482E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x1C0);
    v3 = ((*MEMORY[0x277D85000] & *Strong) + 448) & 0xFFFFFFFFFFFFLL | 0x748D000000000000;
    v0[11] = v2;
    v0[12] = v3;
    v4 = v2();
    if (is_mul_ok(v4, 0x3B9ACA00uLL))
    {
      v5 = 1000000000 * v4;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_272348448;
      v4 = v5;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200480](v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_272348448()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_27234A6EC;
  }

  else
  {
    v2 = sub_27234855C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27234855C()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 80) + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  v3 = sub_2722C389C();
  v4 = *(v1 + 16);
  if (v2)
  {
    v4(*(v0 + 64), v3, *(v0 + 48));
    v5 = sub_27237725C();
    v6 = sub_272377E7C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v5, v6, "Got partial after speech end", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = *(v0 + 80);
    v4(*(v0 + 72), v3, *(v0 + 48));
    v14 = v13;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 88);
      v18 = *(v0 + 80);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v17();

      _os_log_impl(&dword_2721E4000, v15, v16, "No partials %llu sec after speech end, done", v19, 0xCu);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 80);
    v21 = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    if ((*((*MEMORY[0x277D85000] & *v20) + 0x1A8))(v21))
    {
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();
    }

    v22 = *(v0 + 80);
    v23 = *&v22[OBJC_IVAR____TtC12VoiceActions12VATimingInfo_delegate];
    if (v23)
    {
      v24 = [v23 respondsToSelector_];
      v25 = *(v0 + 80);
      if (v24)
      {
        [v23 timingLogs_];
      }
    }

    else
    {
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

void sub_272348864()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v3 = v2();
  v4 = *((*v1 & *v0) + 0xB8);
  if (v4() < v3)
  {
    type metadata accessor for VARequestContext(0);
    v5 = v2();
    v6 = v4();
    v7 = v5 >= v6;
    v8 = v5 - v6;
    if (v7)
    {
      sub_2722310BC(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_272348940()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  if (v2())
  {
    v3 = v2();
    v4 = *((*v1 & *v0) + 0xD0);
    v5 = v4();
    type metadata accessor for VARequestContext(0);
    if (v5 >= v3)
    {
      v10 = v4();
      v11 = v2();
      v8 = v10 >= v11;
      v12 = v10 - v11;
      if (v8)
      {
        sub_2722310BC(v12);
        return;
      }
    }

    else
    {
      v6 = v2();
      v7 = v4();
      v8 = v6 >= v7;
      v9 = v6 - v7;
      if (v8)
      {
        sub_2722310BC(v9);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_272348A74()
{
  v1 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime;
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime);
  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
    if (v3() < v2)
    {
      type metadata accessor for VARequestContext(0);
      v4 = *(v0 + v1);
      v5 = v3();
      v6 = v4 >= v5;
      v7 = v4 - v5;
      if (v6)
      {
        sub_2722310BC(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_272348B24()
{
  type metadata accessor for VARequestContext(0);
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  v3 = (*((*v1 & *v0) + 0xB8))();
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    sub_2722310BC(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_272348BCC()
{
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v1 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
    v2 = v1();
    v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime;
    v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime);
    type metadata accessor for VARequestContext(0);
    v5 = v1();
    if (v4 >= v2)
    {
      v7 = v4 >= v5;
      v9 = v4 - v5;
      if (v7)
      {
        sub_2722310BC(v9);
        return;
      }
    }

    else
    {
      v6 = *(v0 + v3);
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v7)
      {
        sub_2722310BC(v8);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_272348CB4()
{
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
  {
    v1 = MEMORY[0x277D85000];
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x178);
    if (v2())
    {
      type metadata accessor for VARequestContext(0);
      v3 = (*((*v1 & *v0) + 0xE8))();
      v4 = v2();
      v5 = v3 >= v4;
      v6 = v3 - v4;
      if (v5)
      {
        sub_2722310BC(v6);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_272348D94()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  if ((v10)(v6) && (*((*v9 & *v0) + 0xD0))())
  {
    return 1;
  }

  if (v10())
  {
    v12 = sub_2722C389C();
    (*(v2 + 16))(v8, v12, v1);
    v13 = sub_27237725C();
    v14 = sub_272377E7C();
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_8:

      (*(v2 + 8))(v8, v1);
      return 0;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2721E4000, v13, v14, "Waiting for speech end after final", v15, 2u);
LABEL_7:
    MEMORY[0x2743C69C0](v15, -1, -1);
    goto LABEL_8;
  }

  result = (*((*v9 & *v0) + 0xD0))();
  if (result)
  {
    if (!*(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime))
    {
      return 0;
    }

    v16 = sub_2722C389C();
    (*(v2 + 16))(v5, v16, v1);
    v13 = sub_27237725C();
    v17 = sub_272377E7C();
    if (!os_log_type_enabled(v13, v17))
    {
      v8 = v5;
      goto LABEL_8;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2721E4000, v13, v17, "Waiting for final after speech end", v15, 2u);
    v8 = v5;
    goto LABEL_7;
  }

  return result;
}

void sub_272349064()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1A8))())
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();
  }

  (*((*v1 & *v0) + 0x1B0))(0);
  v2 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartTime;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechStartFrame;
  swift_beginAccess();
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndTime;
  swift_beginAccess();
  *(v0 + v4) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_speechEndFrame;
  swift_beginAccess();
  *(v0 + v5) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_firstTokenTime) = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions12VATimingInfo_finalResultTime;
  swift_beginAccess();
  *(v0 + v6) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_lastPartialTime) = 0;
  *(v0 + OBJC_IVAR____TtC12VoiceActions12VATimingInfo_keywordTime) = 0;
}

unint64_t sub_27234920C()
{
  sub_2721F065C(&qword_2808831D8, &qword_2723866E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AF70;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000272391690;
  v2 = MEMORY[0x277D85000];
  *(inited + 48) = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002723916B0;
  *(inited + 72) = (*((*v2 & *v0) + 0x228))();
  *(inited + 80) = 0x6420686365657073;
  *(inited + 88) = 0xEF6E6F6974617275;
  *(inited + 96) = (*((*v2 & *v0) + 0x240))();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000002723916D0;
  *(inited + 120) = (*((*v2 & *v0) + 0x248))();
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000002723916F0;
  *(inited + 144) = (*((*v2 & *v0) + 0x250))();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000272391710;
  *(inited + 168) = (*((*v2 & *v0) + 0x230))();
  v3 = sub_27234A0C0(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_2808831E0, &qword_2723866E8);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_2723494EC()
{
  v1 = v0;
  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_27237AF70;
  sub_27237820C();
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237AF80;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  v8 = sub_27237786C();
  v10 = v9;

  MEMORY[0x2743C4AD0](0xD000000000000022, 0x8000000272391730);
  *(v2 + 32) = v8;
  *(v2 + 40) = v10;
  sub_27237820C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_27237AF80;
  v12 = (*((*v4 & *v1) + 0x230))();
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v12;
  v13 = sub_27237786C();
  v15 = v14;

  MEMORY[0x2743C4AD0](0xD00000000000001ALL, 0x8000000272391760);
  *(v2 + 48) = v13;
  *(v2 + 56) = v15;
  sub_27237820C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_27237AF80;
  v17 = (*((*v4 & *v1) + 0x248))();
  *(v16 + 56) = v6;
  *(v16 + 64) = v7;
  *(v16 + 32) = v17;
  v18 = sub_27237786C();
  v20 = v19;

  MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x8000000272391780);
  *(v2 + 64) = v18;
  *(v2 + 72) = v20;
  sub_27237820C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_27237AF80;
  v22 = (*((*v4 & *v1) + 0x228))();
  *(v21 + 56) = v6;
  *(v21 + 64) = v7;
  *(v21 + 32) = v22;
  v23 = sub_27237786C();
  v25 = v24;

  MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x80000002723917A0);
  *(v2 + 80) = v23;
  *(v2 + 88) = v25;
  sub_27237820C();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_27237AF80;
  v27 = (*((*v4 & *v1) + 0x240))();
  *(v26 + 56) = v6;
  *(v26 + 64) = v7;
  *(v26 + 32) = v27;
  v28 = sub_27237786C();
  v30 = v29;

  MEMORY[0x2743C4AD0](0xD000000000000016, 0x80000002723917C0);
  *(v2 + 96) = v28;
  *(v2 + 104) = v30;
  sub_27237820C();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_27237AF80;
  v32 = (*((*v4 & *v1) + 0x250))();
  *(v31 + 56) = v6;
  *(v31 + 64) = v7;
  *(v31 + 32) = v32;
  v33 = sub_27237786C();
  v35 = v34;

  MEMORY[0x2743C4AD0](0xD000000000000020, 0x80000002723917E0);
  *(v2 + 112) = v33;
  *(v2 + 120) = v35;
  return v2;
}

uint64_t sub_272349AE4()
{
  sub_27237820C();
  v1 = MEMORY[0x2743C4AD0](0xD00000000000001CLL, 0x8000000272391810);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x238))(v1);
  sub_272377D2C();
  v3 = MEMORY[0x2743C4AD0](0xD00000000000001BLL, 0x8000000272391830);
  (*((*v2 & *v0) + 0x230))(v3);
  sub_272377D2C();
  v4 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x8000000272391850);
  (*((*v2 & *v0) + 0x228))(v4);
  sub_272377D2C();
  v5 = MEMORY[0x2743C4AD0](0xD000000000000017, 0x8000000272391870);
  (*((*v2 & *v0) + 0x240))(v5);
  sub_272377D2C();
  v6 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x8000000272391890);
  (*((*v2 & *v0) + 0x248))(v6);
  sub_272377D2C();
  v7 = MEMORY[0x2743C4AD0](0xD000000000000018, 0x80000002723918B0);
  (*((*v2 & *v0) + 0x250))(v7);
  sub_272377D2C();
  return 0;
}

id VATimingInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VATimingInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VATimingInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272349F1C()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272349F58()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272211DBC;

  return sub_272347764(v3, v4, v5, v2);
}

uint64_t sub_272349FEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27234A02C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_272348214(v3, v4, v5, v2);
}

unint64_t sub_27234A0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808831E8, &unk_272386718);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t VAA2AVerifierModelV2.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = MEMORY[0x277D84F90];
  v3[3] = MEMORY[0x277D84F90];
  v3[4] = v9;
  v3[5] = v9;
  v3[6] = v9;
  type metadata accessor for VALog();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v18 = v8;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v16, v17, v7);

  v10 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v11 = v10;
  if (v8)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v10 setComputeUnits_];
  type metadata accessor for quant_verifier_aa_fp32();
  v13 = v11;
  v14 = sub_272343C3C(v13);
  if (v2)
  {

    sub_272299680(v7, type metadata accessor for VASignpostInterval);

    type metadata accessor for VAA2AVerifierModelV2();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v14;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v7, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

uint64_t sub_27234A9C8(uint64_t a1)
{
  v2 = v1;
  v50 = type metadata accessor for VASingleEnrollmentData(0);
  v4 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  v9 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v10 = sub_27220392C(&unk_28818FC48, v9);
  (*(*v1 + 264))(v10);
  (*(*v1 + 216))(MEMORY[0x277D84F90]);
  v39[2] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v12 = result;
  v47 = *(result + 16);
  if (v47)
  {
    v13 = 0;
    v14 = *(*v1 + 232);
    v45 = *v1 + 232;
    v46 = v14;
    v43 = v1;
    v44 = result + 32;
    v42 = result;
    while (v13 < *(v12 + 16))
    {
      v48 = v13;
      v15 = (v44 + 16 * v13);
      v17 = *v15;
      v16 = v15[1];

      result = v46(v18);
      v19 = result;
      v20 = *(result + 16);
      if (v20)
      {
        v21 = 0;
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v23 = *(v4 + 72);
          sub_272204F54(v19 + v22 + v23 * v21, v8);
          v24 = &v8[*(v50 + 24)];
          v25 = *v24 == v17 && *(v24 + 1) == v16;
          if (v25 || (sub_27237865C() & 1) != 0)
          {
            break;
          }

          ++v21;
          result = sub_272299680(v8, type metadata accessor for VASingleEnrollmentData);
          if (v20 == v21)
          {
            goto LABEL_3;
          }
        }

        sub_272204F54(v8, v41);
        v2 = v43;
        v26 = (*(*v43 + 224))(v49);
        v28 = v27;
        v29 = *v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        v40 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_27227B890(0, v29[2] + 1, 1, v29);
          *v28 = v29;
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_27227B890((v31 > 1), v32 + 1, 1, v29);
          *v28 = v29;
        }

        v33 = v41;
        v12 = v42;
        v29[2] = v32 + 1;
        sub_27227BA68(v33, v29 + v22 + v32 * v23);
        v40(v49, 0);
        result = sub_272299680(v8, type metadata accessor for VASingleEnrollmentData);
      }

      else
      {
LABEL_3:

        v12 = v42;
        v2 = v43;
      }

      v13 = v48 + 1;
      if (v48 + 1 == v47)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:

    v34 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v36 = *((*(*v2 + 208))(v35) + 16);

    if (v34 == v36)
    {
      return (*(*v2 + 304))(v37);
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v38 = 0xD00000000000003CLL;
      v38[1] = 0x80000002723919F0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_27234AE64()
{
  v2 = v0;
  v3 = type metadata accessor for VASingleEnrollmentData(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 192))(MEMORY[0x277D84F90]);
  result = (*(*v0 + 208))(v7);
  v9 = result;
  v16 = *(result + 16);
  if (!v16)
  {
  }

  v10 = 0;
  while (v10 < *(v9 + 16))
  {
    sub_272204F54(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6);
    (*(*v2 + 296))(v6);
    sub_272299680(v6, type metadata accessor for VASingleEnrollmentData);
    if (!v1)
    {
      v11 = (*(*v2 + 200))(v15);
      v13 = v12;
      MEMORY[0x2743C4C30]();
      if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14[1] = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_272377B2C();
      }

      ++v10;
      sub_272377B7C();
      result = v11(v15, 0);
      if (v16 != v10)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27234B0D0(unint64_t a1, char a2)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = v10;
    if (sub_2723783AC())
    {
      v18 = sub_2723783AC();
      v10 = v17;
      if (v18 >= 2)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

LABEL_20:
    type metadata accessor for VAResultGeneratorInput();
    return VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(0, 0, 0);
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_20;
  }

  if (v13 >= 2)
  {
LABEL_4:
    v14 = 0x80000002723886D0;
    sub_2722032B4();
    swift_allocError();
    v16 = 0xD00000000000001FLL;
LABEL_22:
    *v15 = v16;
    v15[1] = v14;
    return swift_willThrow();
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = v10;
    MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v4 = v10;
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v14 = 0x80000002723886B0;
    sub_2722032B4();
    swift_allocError();
    v16 = 0xD000000000000018;
    goto LABEL_22;
  }

  if ((*(v19 + 16) & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = v19;
  v10 = (*(*v2 + 184))();
  if (!(v10 >> 62))
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v37[1] = v10;
  v31 = sub_2723783AC();

  if (!v31)
  {
LABEL_31:
    v32 = sub_2722C389C();
    (*(v9 + 16))(v12, v32, v4);
    v33 = sub_27237725C();
    v34 = sub_272377E8C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2721E4000, v33, v34, "No enrollments set for this model", v35, 2u);
      MEMORY[0x2743C69C0](v35, -1, -1);
    }

    (*(v9 + 8))(v12, v4);
LABEL_34:
    type metadata accessor for VAResultGeneratorInput();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_35;
  }

LABEL_17:
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 40))
    {
      v28 = *(*v2 + 328);

      v22 = v28(v29);

      if (!v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v30 = 0xD00000000000001ELL;
      v30[1] = 0x800000027238B8F0;
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  v22 = (*(*v2 + 256))(v21);
LABEL_19:
  type metadata accessor for VAResultGeneratorInput();
  v23 = *(v5 + 32);

  v24 = 1;
  v25 = v22;
  v26 = v23;
LABEL_35:
  v36 = VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(v24, v25, v26);
  swift_unknownObjectRelease();
  return v36;
}

uint64_t sub_27234B540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for VASingleEnrollmentData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 312))(a1, a2);
  if (v4)
  {
    return result;
  }

  v13 = result;
  v46 = 0;
  if ((*(result + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(a3);
  }

  v45 = a3;
  v14 = *((*(*v3 + 208))() + 16);

  v51 = v14;
  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_22:
    type metadata accessor for VAKeywordResult();
    v43 = VAKeywordResult.__allocating_init(detections:)(v16);
    sub_2722E45C4(v43, v45);
  }

  v47 = v11;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v49 = v13;
  v50 = v3;
  v48 = v9;
  while (1)
  {
    v17 = *(v13 + 24);
    if (!v17)
    {
      break;
    }

    if (v15 >= *(v17 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    v18 = *(v17 + 8 * v15 + 32);
    v19 = *(v18 + 16);
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = *(v18 + 32);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v18 + 36);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    result = (*(*v3 + 232))(result);
    if (v15 >= *(result + 16))
    {
      goto LABEL_27;
    }

    v25 = v47;
    sub_272204F54(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v47);

    v26 = v8;
    v27 = (v25 + *(v8 + 24));
    v28 = *v27;
    v29 = v27[1];

    sub_272299680(v25, type metadata accessor for VASingleEnrollmentData);
    v30 = sub_272241A18();
    v31 = sub_272241A18();
    v32 = sub_272324094();
    v33 = sub_272324094();
    v34 = sub_2721F7EE4();
    v35 = sub_2721F7EE4();
    v36 = sub_27222CD4C();
    sub_27232409C(v28, v29, v32, v33, v34 & 1, v35 & 1, v36 & 1, 0, v52, v20, v30, v31, 0);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272205014(0, *(v16 + 16) + 1, 1, v16);
      v16 = result;
    }

    v38 = *(v16 + 16);
    v37 = *(v16 + 24);
    v8 = v26;
    v13 = v49;
    v3 = v50;
    v9 = v48;
    if (v38 >= v37 >> 1)
    {
      result = sub_272205014((v37 > 1), v38 + 1, 1, v16);
      v16 = result;
    }

    ++v15;
    *(v16 + 16) = v38 + 1;
    v39 = (v16 + 80 * v38);
    v39[2] = v52[0];
    v40 = v52[1];
    v41 = v52[2];
    v42 = v52[4];
    v39[5] = v52[3];
    v39[6] = v42;
    v39[3] = v40;
    v39[4] = v41;
    if (v15 == v51)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27234B900(uint64_t a1)
{
  v4 = v1;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v6 + 32) = sub_272377FAC();
  v7 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v8 = sub_272257FA4(v6, 65568);
  if (!v2)
  {
    v9 = v8;
    v10 = sub_272377FAC();
    [v9 setObject:v10 atIndexedSubscript:0];

    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_27237E510;
    *(v12 + 32) = sub_272377FAC();
    v13 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v49 = v11;
    v14 = sub_272257FA4(v12, 65568);
    v15 = sub_272377FAC();
    v48 = v14;
    [v14 setObject:v15 atIndexedSubscript:0];

    v50 = *(*v4 + 184);
    v16 = v50();
    if (v16 >> 62)
    {
      goto LABEL_19;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v3 = sub_27220392C(MEMORY[0x277D84F90], v17);
    v18 = v50();
    v46 = v4;
    v19 = v49;
    if (v18 >> 62)
    {
      v45 = sub_2723783AC();

      if (v45 < 0)
      {
        __break(1u);
      }

      v20 = v45;
      v19 = v49;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v20)
      {
LABEL_6:
        v47 = a1;
        a1 = 4;
        do
        {
          sub_27234C244(v47);
          v22 = v21;
          v23 = v50();
          v52 = v20;
          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x2743C5370](a1 - 4, v23);
          }

          else
          {
            if ((a1 - 4) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_18:
              __break(1u);
LABEL_19:
              v17 = sub_2723783AC();
              goto LABEL_4;
            }

            v24 = *(v23 + 8 * a1);
          }

          v25 = v24;

          type metadata accessor for quant_verifier_aa_fp32Input();
          v26 = sub_272295840(v22, v25, v19, v48);
          v27 = (*(*v4 + 160))();
          v28 = (*(*v27 + 136))(v26);

          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_27237AFB0;
          v51 = v3;
          v30 = *(*v28 + 88);
          v31 = v30();
          v32 = [v31 objectAtIndexedSubscript_];

          [v32 floatValue];
          v34 = v33;

          *(v29 + 32) = v34;
          v35 = v30();
          v36 = [v35 objectAtIndexedSubscript_];

          [v36 floatValue];
          v38 = v37;

          *(v29 + 36) = v38;
          v39 = v30();
          v3 = v51;
          v40 = v39;
          v41 = [v39 objectAtIndexedSubscript_];

          [v41 floatValue];
          v43 = v42;

          *(v29 + 40) = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_272200344(v51);
          }

          v19 = v49;

          v4 = v46;
          if ((a1 - 4) >= *(v3 + 16))
          {
            goto LABEL_18;
          }

          *(v3 + 8 * a1) = v29;

          ++a1;
          v20 = v52 - 1;
        }

        while (v52 != 1);
      }
    }
  }

  return v3;
}

uint64_t sub_27234BEC4()
{
}

void *VAA2AVerifierModelV2.deinit()
{
  v0 = VAVerifierModel.deinit();

  return v0;
}

uint64_t VAA2AVerifierModelV2.__deallocating_deinit()
{
  VAVerifierModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelV2.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  if (*(enrollments._rawValue + 2) < 0x15uLL)
  {
    v3 = *(*v1 + 240);

    v3(v4);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x8000000272391A60;
    swift_willThrow();
  }
}

uint64_t sub_27234C198(uint64_t a1)
{
  if (*(a1 + 16) < 0x15uLL)
  {
    v4 = *(**v1 + 240);

    return v4(v5);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x8000000272391A60;
    return swift_willThrow();
  }
}

void sub_27234C244(uint64_t a1)
{
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237E4F0;
  v4 = *(a1 + 16);
  *(v3 + 32) = sub_272377DBC();
  v23 = v4;
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(v3 + 40) = sub_272377DBC();
  if (!*(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  *(v3 + 48) = sub_272377DBC();
  v7 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v25 = sub_272257FA4(v3, 65568);
  if (!v1)
  {
    v8 = 0;
    v22 = v5;
    while (1)
    {
      v9 = *(v5 + 8 * v8);
      v24 = *(v9 + 16);
      if (v24)
      {
        break;
      }

LABEL_6:
      ++v8;
      v5 = v22;
      if (v8 == v23)
      {
        return;
      }
    }

    v10 = 0;
    v11 = v9 + 32;
    while (v10 < *(v9 + 16))
    {
      v12 = *(*(v11 + 8 * v10) + 16);
      if (v12)
      {
        v13 = 0;
        while (1)
        {
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_27237E4F0;
          *(v14 + 32) = sub_272377DBC();
          *(v14 + 40) = sub_272377DBC();
          *(v14 + 48) = sub_272377DBC();
          if (v10 >= *(v9 + 16))
          {
            break;
          }

          v15 = *(v11 + 8 * v10);
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          v16 = v13 + 1;
          v17 = *(v15 + 4 * v13 + 32);
          v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          LODWORD(v19) = v17;
          v20 = [v18 initWithFloat_];
          sub_27223EE54();
          v21 = sub_272377AEC();

          [v25 setObject:v20 forKeyedSubscript:v21];

          v13 = v16;
          if (v12 == v16)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

LABEL_9:
      if (++v10 == v24)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

VoiceActions::VAComputeUnits_optional __swiftcall VAComputeUnits.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VAComputeUnits.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x796C6E4F757063;
  }
}

uint64_t sub_27234C668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x796C6E4F757063;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000272391AC0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x796C6E4F757063;
  }

  if (*a2)
  {
    v6 = 0x8000000272391AC0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_27234C714(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xD000000000000017;
    v10 = 0x8000000272391B30;
    if (a1 != 6)
    {
      v9 = 0xD000000000000018;
      v10 = 0x8000000272391B50;
    }

    v11 = 0x7543646E4174696ALL;
    v12 = 0xEE004D4C6D6F7473;
    if (a1 != 4)
    {
      v11 = 0x6F43646E4174696ALL;
      v12 = 0xEF4D4C746361746ELL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x74737543796C6E6FLL;
    v5 = 0xEC0000004D4C6D6FLL;
    if (a1 != 2)
    {
      v4 = 0x746E6F43796C6E6FLL;
      v5 = 0xEE00454D4C746361;
    }

    v6 = 0x4754494A796C6E6FLL;
    if (a1)
    {
      v3 = 0xEE0072616D6D6172;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC0000004D4C6D6FLL;
        if (v7 != 0x74737543796C6E6FLL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x746E6F43796C6E6FLL;
      v15 = 0x454D4C746361;
    }

    else
    {
      if (!a2)
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736302)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x4754494A796C6E6FLL;
      v15 = 0x72616D6D6172;
    }

LABEL_41:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v7 != v14)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEF4D4C746361746ELL;
      if (v7 != 0x6F43646E4174696ALL)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x7543646E4174696ALL;
    v15 = 0x4D4C6D6F7473;
    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v13 = 0x8000000272391B30;
    if (v7 != 0xD000000000000017)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0x8000000272391B50;
    if (v7 != 0xD000000000000018)
    {
LABEL_46:
      v16 = sub_27237865C();
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_27234C9E8()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CA70(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_27234CAE4(uint64_t a1, unsigned __int8 a2)
{
  sub_27237790C();
}

uint64_t sub_27234CC44(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CCC8(uint64_t a1, unsigned __int8 a2)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CE3C@<X0>(char *a2@<X8>)
{
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_27234CE9C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000272391AC0;
  v3 = 0x796C6E4F757063;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t VASpeechBiasOptions.anyBias.getter()
{
  if (*v0 > 1u || *v0)
  {
    v2 = sub_27237865C();

    v1 = v2 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VASpeechBiasOptions.overrideModelURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272376D5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

VoiceActions::VASpeechBiasOptions_optional __swiftcall VASpeechBiasOptions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VASpeechBiasOptions.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x7543646E4174696ALL;
  if (v1 != 4)
  {
    v4 = 0x6F43646E4174696ALL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74737543796C6E6FLL;
  if (v1 != 2)
  {
    v5 = 0x746E6F43796C6E6FLL;
  }

  if (*v0)
  {
    v2 = 0x4754494A796C6E6FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_27234D398(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xD000000000000017;
  v6 = 0x8000000272391B30;
  if (v2 != 6)
  {
    v5 = 0xD000000000000018;
    v6 = 0x8000000272391B50;
  }

  v7 = 0xEE004D4C6D6F7473;
  v8 = 0x7543646E4174696ALL;
  if (v2 != 4)
  {
    v8 = 0x6F43646E4174696ALL;
    v7 = 0xEF4D4C746361746ELL;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC0000004D4C6D6FLL;
  v10 = 0x74737543796C6E6FLL;
  if (v2 != 2)
  {
    v10 = 0x746E6F43796C6E6FLL;
    v9 = 0xEE00454D4C746361;
  }

  if (*v1)
  {
    v4 = 0x4754494A796C6E6FLL;
    v3 = 0xEE0072616D6D6172;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t VARuntimeParameters.keywords.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VARuntimeParameters.debounce.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t VARuntimeParameters.maximumBufferSamples.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.extraTasrBiasString.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t VARuntimeParameters.extraTasrBiasString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t VARuntimeParameters.keywordsToAsrMatch.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationAfterPredictionWindow.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationBeforePredictionWindow.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.speechLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VARuntimeParameters(0) + 108);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VARuntimeParameters.speechLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VARuntimeParameters(0) + 108);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VARuntimeParameters.limit2ndPassSearchToNBest.setter(uint64_t a1)
{
  result = type metadata accessor for VARuntimeParameters(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t VARuntimeParameters.automaticallyPrepareSpeechAPI.setter(char a1)
{
  result = type metadata accessor for VARuntimeParameters(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t VARuntimeParameters.customLMWeight.setter(double a1)
{
  result = type metadata accessor for VARuntimeParameters(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t VARuntimeParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 1061997773;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = 1050253722;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 514;
  *(a1 + 74) = 2;
  *(a1 + 75) = 0;
  *(a1 + 80) = sub_2722A0548(v2);
  *(a1 + 88) = 768;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 257;
  v3 = type metadata accessor for VARuntimeParameters(0);
  result = sub_272376E6C();
  *(a1 + v3[28]) = 1;
  *(a1 + v3[29]) = 0;
  *(a1 + v3[30]) = 0x3FA999999999999ALL;
  return result;
}

uint64_t sub_27234DEC4()
{
  v0 = sub_272376BCC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  sub_2721F408C(v8, qword_280892188);
  sub_2721F08DC(v0, qword_280892188);
  sub_272376B7C();
  sub_272376B6C();
  sub_272376B9C();
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  sub_272376B5C();
  sub_272376B9C();
  v11(v7, v0);
  return (v11)(v10, v0);
}

uint64_t static VARuntimeParameters.allowedCharacterSet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280892180 != -1)
  {
    swift_once();
  }

  v2 = sub_272376BCC();
  v3 = sub_2721F08DC(v2, qword_280892188);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static VARuntimeParameters.isValidKeyword(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_272376BCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v29 = a1;
  v30 = a2;
  v27 = 58;
  v28 = 0xE100000000000000;
  sub_272203AC4();
  v9 = sub_27237813C();
  if (v9)
  {
    v29 = 58;
    v30 = 0xE100000000000000;
    MEMORY[0x28223BE20](v9);
    *(&v24 - 2) = &v29;

    if (*(sub_2721FF4F4(1, 0, sub_272219D88, (&v24 - 4), a1, a2, v10) + 16) < 2uLL)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_14;
    }

    v25 = v7;
    v26 = 0;

    v7 = v25;
    v9 = sub_272377D6C();
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v26 = 0;
  }

  v29 = 58;
  v30 = 0xE100000000000000;
  MEMORY[0x28223BE20](v9);
  *(&v24 - 2) = &v29;

  v12 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, (&v24 - 4), a1, a2, v11);
  if (!v12[2])
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];

  v17 = MEMORY[0x2743C4A20](v13, v14, v15, v16);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  v29 = v17;
  v30 = v19;
  if (qword_280892180 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_2721F08DC(v4, qword_280892188);
  sub_272376BAC();
  sub_2723780DC();
  v22 = v21;
  (*(v5 + 8))(v7, v4);

  return v22 & 1;
}

void *VARuntimeParameters.keywordsToThresholds.getter()
{
  v53 = *v0;
  v52 = *(v53 + 16);
  if (!v52)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = 0;
  v51 = 0;
  v2 = (v53 + 40);
  v3 = MEMORY[0x277D84F98];
  while (v1 < *(v53 + 16))
  {
    v6 = *(v2 - 1);
    v5 = *v2;
    v56 = v6;
    v57 = v5;
    v54 = 58;
    v55 = 0xE100000000000000;
    sub_272203AC4();

    v7 = sub_27237813C();
    if ((v7 & 1) == 0)
    {
      v28 = v1;
      v29 = *(v49 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v3;
      v31 = sub_27220038C(v6, v5);
      v33 = v3[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_30;
      }

      v37 = v32;
      if (v3[3] < v36)
      {
        sub_272300664(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_27220038C(v6, v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_16:
        v27 = v28;
        if (v37)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v46 = v31;
        sub_272301090();
        v31 = v46;
        v27 = v28;
        if (v37)
        {
LABEL_3:
          v4 = v31;

          v3 = v56;
          *(*(v56 + 56) + 4 * v4) = v29;
          goto LABEL_4;
        }
      }

      v3 = v56;
      *(v56 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (v3[6] + 16 * v31);
      *v39 = v6;
      v39[1] = v5;
      *(v3[7] + 4 * v31) = v29;
      v40 = v3[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_32;
      }

      v3[2] = v41;
      goto LABEL_4;
    }

    v56 = 58;
    v57 = 0xE100000000000000;
    MEMORY[0x28223BE20](v7);
    v48[2] = &v56;
    v8 = v51;
    v9 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, v48, v6, v5, &v49);
    if (!v9[2])
    {
      goto LABEL_29;
    }

    v10 = v9;
    v50 = v1;
    v11 = v9[4];
    v12 = v9[5];
    v13 = v9[6];
    v14 = v9[7];

    v15 = MEMORY[0x2743C4A20](v11, v12, v13, v14);
    v17 = v16;

    if (v10[2] < 2uLL)
    {
      goto LABEL_31;
    }

    v18 = v10[8];
    v19 = v10[9];
    v21 = v10[10];
    v20 = v10[11];

    v22 = MEMORY[0x2743C4A20](v18, v19, v21, v20);
    v24 = v23;

    LODWORD(v56) = 0;
    LOBYTE(v20) = sub_272351B04(v22, v24, &v56);
    v51 = v8;

    if (v20)
    {
      v25 = *&v56;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v3;
      sub_272300A84(v15, v17, v26, v25);

      v3 = v56;
      v27 = v50;
    }

    else
    {
      v42 = sub_27220038C(v15, v17);
      v44 = v43;

      v27 = v50;
      if (v44)
      {
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v56 = v3;
        if (!v45)
        {
          sub_272301090();
          v3 = v56;
        }

        sub_272351954(v42, v3);
      }
    }

LABEL_4:
    v1 = v27 + 1;
    v2 += 2;
    if (v52 == v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

char *VARuntimeParameters.keywordsNoThresholds.getter()
{
  v0 = VARuntimeParameters.keywordsToThresholds.getter();
  v1 = v0;
  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2722702A8(v0[2], 0);
  v4 = sub_2722DD9D8(&v6, v3 + 4, v2, v1);
  sub_272270484(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;

  sub_272272490(&v6);

  return v6;
}

uint64_t VARuntimeParameters.allKeywordsAreValid.getter()
{
  v31 = sub_272376BCC();
  result = MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v29 = *(*v0 + 16);
  if (!v29)
  {
    return 1;
  }

  v5 = 0;
  v27 = v4;
  v28 = (v2 + 8);
  v6 = (v4 + 40);
  while (v5 < *(v4 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v9 = HIBYTE(*v6) & 0xF;
    if ((*v6 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 0;
    }

    v35 = *(v6 - 1);
    v36 = v7;
    v33 = 58;
    v34 = 0xE100000000000000;
    v10 = sub_272203AC4();

    v32 = v10;
    v11 = sub_27237813C();
    if (v11)
    {
      v35 = 58;
      v36 = 0xE100000000000000;
      MEMORY[0x28223BE20](v11);
      *(&v26 - 2) = &v35;

      result = sub_2721FF4F4(1, 0, sub_272219D88, (&v26 - 4), v8, v7, v12);
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_24;
      }

      v11 = sub_272377D6C();
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_20;
      }
    }

    v35 = 58;
    v36 = 0xE100000000000000;
    MEMORY[0x28223BE20](v11);
    *(&v26 - 2) = &v35;

    result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v26 - 4), v8, v7, v13);
    if (!*(result + 16))
    {
      goto LABEL_23;
    }

    v14 = *(result + 32);
    v15 = *(result + 40);
    v16 = *(result + 48);
    v17 = *(result + 56);

    v18 = MEMORY[0x2743C4A20](v14, v15, v16, v17);
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {

LABEL_20:

      return 0;
    }

    v35 = v18;
    v36 = v20;
    if (qword_280892180 != -1)
    {
      swift_once();
    }

    v22 = v31;
    sub_2721F08DC(v31, qword_280892188);
    v23 = v30;
    sub_272376BAC();
    sub_2723780DC();
    v25 = v24;

    (*v28)(v23, v22);

    if ((v25 & 1) == 0)
    {
      return 0;
    }

    ++v5;
    v6 += 2;
    v4 = v27;
    if (v29 == v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_27234ED24()
{
  v1 = v0;
  v41 = sub_272376BCC();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v0 + 16))
  {
    return 0;
  }

  *&v44 = *v0;

  v5 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  v40[2] = sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
  sub_2723777CC();

  v6 = sub_2723778AC();
  v8 = v7;

  *&v44 = v6;
  *(&v44 + 1) = v8;
  v49 = 95;
  v50 = 0xE100000000000000;
  v47 = 32;
  v48 = 0xE100000000000000;
  v9 = sub_272203AC4();
  v38 = v9;
  v39 = v9;
  v36 = MEMORY[0x277D837D0];
  v37 = v9;
  v10 = sub_2723780FC();
  v12 = v11;

  result = v10;
  v49 = v10;
  v50 = v12;
  v14 = *(v1 + 64);
  if (v14)
  {
    v40[1] = v5;
    v15 = *(v1 + 56);
    *&v44 = 44;
    *(&v44 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](result);
    v38 = &v44;

    v17 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, &v36, v15, v14, v16);
    v18 = *(v17 + 16);
    v40[0] = v17;
    if (v18)
    {
      v19 = (v2 + 8);
      v20 = MEMORY[0x277D84F90];
      v21 = (v17 + 56);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v44 = *(v21 - 3);
        v45 = v22;
        v46 = v23;

        sub_272376B4C();
        sub_272260218();
        sub_2723780EC();
        (*v19)(v4, v41);

        v24 = sub_2723778AC();
        v26 = v25;

        *&v44 = v24;
        *(&v44 + 1) = v26;
        v47 = 95;
        v48 = 0xE100000000000000;
        v42 = 32;
        v43 = 0xE100000000000000;
        v38 = v9;
        v39 = v9;
        v37 = v9;
        v36 = MEMORY[0x277D837D0];
        v27 = sub_2723780FC();
        v29 = v28;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2721FFBF8(0, *(v20 + 2) + 1, 1, v20);
        }

        v31 = *(v20 + 2);
        v30 = *(v20 + 3);
        if (v31 >= v30 >> 1)
        {
          v20 = sub_2721FFBF8((v30 > 1), v31 + 1, 1, v20);
        }

        *(v20 + 2) = v31 + 1;
        v32 = &v20[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
        v21 += 4;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    *&v44 = v20;
    v33 = sub_2723777CC();
    v35 = v34;

    *&v44 = 44;
    *(&v44 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v33, v35);

    MEMORY[0x2743C4AD0](v44, *(&v44 + 1));

    return v49;
  }

  return result;
}

uint64_t sub_27234F188()
{
  if (v0[12])
  {
    return 1;
  }

  if (v0[75])
  {
    return 1;
  }

  return v0[76];
}

uint64_t VARuntimeParameters.description.getter()
{
  v0 = sub_27237788C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_272376AFC();
  MEMORY[0x28223BE20](v1);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  *(swift_allocObject() + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  sub_272351D44(&qword_280881C78, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_2722199BC(&qword_280881C88, &qword_280881C80, qword_27237D8B0, MEMORY[0x277D83970]);
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VARuntimeParameters(0);
  sub_272351D44(&qword_2808831F0, type metadata accessor for VARuntimeParameters, &protocol conformance descriptor for VARuntimeParameters);
  v2 = sub_272376B1C();
  v4 = v3;
  sub_27237787C();
  v5 = sub_27237784C();
  if (v6)
  {
    v7 = v5;
    sub_2721F05C8(v2, v4);
  }

  else
  {
    sub_2721F05C8(v2, v4);

    return 0;
  }

  return v7;
}

char *VARuntimeParameters.asrMatchToKeywords()()
{
  v1 = sub_272216188(MEMORY[0x277D84F90]);
  v2 = VARuntimeParameters.keywordsToThresholds.getter();
  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2722702A8(v2[2], 0);
  v6 = sub_2722DD9D8(&v62, v5 + 4, v4, v3);
  sub_272270484(v62);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x277D84F90];
  }

  v62 = v5;

  sub_272272490(&v62);

  v7 = v62;
  v8 = *(v62 + 2);
  if (!v8)
  {
LABEL_38:

    return v1;
  }

  v9 = 0;
  v10 = *(v0 + 80);
  v57 = v10;
  v58 = v62 + 32;
  v55 = *(v62 + 2);
  v56 = v62;
  while (1)
  {
    if (v9 >= v7[2])
    {
      goto LABEL_42;
    }

    v59 = v9;
    v11 = &v58[16 * v9];
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v10 + 16);

    if (!v14 || (v15 = sub_27220038C(v12, v13), (v16 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v1;
      v40 = sub_27220038C(v12, v13);
      v42 = *(v1 + 2);
      v43 = (v41 & 1) == 0;
      v30 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v30)
      {
        goto LABEL_43;
      }

      v45 = v41;
      if (*(v1 + 3) >= v44)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = v40;
          sub_272215E14();
          v40 = v49;
          if ((v45 & 1) == 0)
          {
LABEL_36:
            v1 = v62;
            *&v62[8 * (v40 >> 6) + 64] |= 1 << v40;
            v50 = (*(v1 + 6) + 16 * v40);
            *v50 = v12;
            v50[1] = v13;
            v51 = (*(v1 + 7) + 16 * v40);
            *v51 = v12;
            v51[1] = v13;
            v52 = *(v1 + 2);
            v30 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v30)
            {
              goto LABEL_44;
            }

            *(v1 + 2) = v53;
            goto LABEL_8;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_272215B54(v44, isUniquelyReferenced_nonNull_native);
        v40 = sub_27220038C(v12, v13);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_45;
        }
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_33:
      v47 = v40;

      v1 = v62;
      v48 = (*(v62 + 7) + 16 * v47);
      *v48 = v12;
      v48[1] = v13;
      goto LABEL_34;
    }

    v17 = *(*(v10 + 56) + 8 * v15);
    v61 = *(v17 + 16);
    if (v61)
    {
      break;
    }

LABEL_34:

LABEL_8:
    v10 = v57;
    v9 = v59 + 1;
    if (v59 + 1 == v8)
    {
      goto LABEL_38;
    }
  }

  v18 = 0;
  v7 = (v17 + 40);
  v60 = v17;
  while (v18 < *(v17 + 16))
  {
    v21 = v12;
    v23 = *(v7 - 1);
    v22 = *v7;
    v24 = v13;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v1;
    v26 = sub_27220038C(v23, v22);
    v28 = *(v1 + 2);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_40;
    }

    v32 = v27;
    if (*(v1 + 3) < v31)
    {
      sub_272215B54(v31, v25);
      v26 = sub_27220038C(v23, v22);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_45;
      }

LABEL_22:
      if (v32)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (v25)
    {
      goto LABEL_22;
    }

    v38 = v26;
    sub_272215E14();
    v26 = v38;
    if (v32)
    {
LABEL_14:
      v19 = v26;

      v1 = v62;
      v20 = (*(v62 + 7) + 16 * v19);
      v12 = v21;
      *v20 = v21;
      v20[1] = v24;
      v13 = v24;

      goto LABEL_15;
    }

LABEL_23:
    v1 = v62;
    *&v62[8 * (v26 >> 6) + 64] |= 1 << v26;
    v34 = (*(v1 + 6) + 16 * v26);
    *v34 = v23;
    v34[1] = v22;
    v35 = (*(v1 + 7) + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = *(v1 + 2);
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_41;
    }

    v12 = v21;
    v13 = v24;
    *(v1 + 2) = v37;
LABEL_15:
    ++v18;
    v7 += 2;
    v17 = v60;
    if (v61 == v18)
    {

      v8 = v55;
      v7 = v56;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_2723786BC();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_27234F940(char a1)
{
  result = 0x7364726F7779656BLL;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x65736F62726576;
      break;
    case 4:
      result = 0x65636E756F626564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E656857706F7473;
      break;
    case 7:
    case 11:
    case 24:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
    case 15:
      result = 0xD000000000000018;
      break;
    case 13:
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
    case 21:
      result = 0xD000000000000028;
      break;
    case 20:
      result = 0xD000000000000027;
      break;
    case 22:
      result = 0x754D736573736170;
      break;
    case 23:
      result = 0x6F4C686365657073;
      break;
    case 26:
      result = 0x4D4C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27234FC98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272352B18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27234FCCC(uint64_t a1)
{
  v2 = sub_272351C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27234FD08(uint64_t a1)
{
  v2 = sub_272351C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VARuntimeParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808831F8, &unk_2723867C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272351C48();
  sub_2723787CC();
  *&v11 = *v3;
  v13 = 0;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_27228F60C(&qword_2808824F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2723785DC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_2723785BC();
    LOBYTE(v11) = 2;
    sub_27237859C();
    LOBYTE(v11) = 3;
    sub_27237859C();
    v9 = *(v3 + 32);
    v11 = *(v3 + 16);
    v12 = v9;
    v13 = 4;
    sub_27237857C();
    LOBYTE(v11) = 5;
    sub_27237856C();
    LOBYTE(v11) = 6;
    sub_27237859C();
    LOBYTE(v11) = 7;
    sub_2723785BC();
    LOBYTE(v11) = 8;
    sub_27237852C();
    LOBYTE(v11) = 9;
    sub_27237853C();
    LOBYTE(v11) = 10;
    sub_27237853C();
    LOBYTE(v11) = 11;
    sub_27237853C();
    LOBYTE(v11) = 12;
    sub_27237859C();
    LOBYTE(v11) = 13;
    sub_27237859C();
    LOBYTE(v11) = 14;
    sub_27237859C();
    LOBYTE(v11) = *(v3 + 78);
    v13 = 15;
    sub_272351C9C();
    sub_2723785DC();
    *&v11 = *(v3 + 80);
    v13 = 16;
    sub_2721F065C(&qword_280882C38, &unk_272384450);
    sub_27230C9F4();
    sub_2723785DC();
    LOBYTE(v11) = *(v3 + 88);
    v13 = 17;
    sub_2723169E4();
    sub_2723785DC();
    LOBYTE(v11) = *(v3 + 89);
    v13 = 18;
    sub_272316A38();
    sub_2723785DC();
    LOBYTE(v11) = 19;
    sub_27237859C();
    LOBYTE(v11) = 20;
    sub_27237854C();
    LOBYTE(v11) = 21;
    sub_27237854C();
    LOBYTE(v11) = 22;
    sub_27237859C();
    type metadata accessor for VARuntimeParameters(0);
    LOBYTE(v11) = 23;
    sub_272376EBC();
    sub_272351D44(&qword_280883208, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_2723785DC();
    LOBYTE(v11) = 24;
    sub_2723785CC();
    LOBYTE(v11) = 25;
    sub_27237859C();
    LOBYTE(v11) = 26;
    sub_2723785AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VARuntimeParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_272376EBC();
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2721F065C(&qword_280883210, qword_2723867D0);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v5 = &v38 - v4;
  v6 = type metadata accessor for VARuntimeParameters(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  *v9 = MEMORY[0x277D84F90];
  *(v9 + 2) = 1061997773;
  *(v9 + 6) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v9[32] = 1;
  *(v9 + 5) = 0;
  *(v9 + 24) = 1;
  *(v9 + 13) = 1050253722;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 36) = 514;
  v9[74] = 2;
  *(v9 + 75) = 0;
  v43 = sub_2722A0548(v10);
  *(v9 + 10) = v43;
  *(v9 + 44) = 768;
  v9[90] = 1;
  *(v9 + 12) = 0;
  v9[104] = 1;
  *(v9 + 14) = 0;
  *(v9 + 60) = 257;
  v11 = v7[29];
  sub_272376E6C();
  v12 = v7[30];
  *&v9[v12] = 1;
  v13 = v7[31];
  v9[v13] = 0;
  v14 = v7[32];
  v50 = a1;
  v51 = v9;
  *&v9[v14] = 0x3FA999999999999ALL;
  sub_27220300C(a1, a1[3]);
  sub_272351C48();
  v47 = v5;
  v15 = v49;
  sub_2723787AC();
  if (v15)
  {
    v33 = v51;
  }

  else
  {
    v16 = v44;
    v38 = v11;
    v39 = v12;
    v40 = v13;
    v49 = v14;
    v18 = v45;
    v17 = v46;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v54 = 0;
    sub_27228F60C(&qword_280881800, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2723784FC();
    v20 = v51;
    *v51 = v52;
    LOBYTE(v52) = 1;
    sub_2723784DC();
    *(v20 + 2) = v21;
    LOBYTE(v52) = 2;
    v20[12] = sub_2723784BC() & 1;
    LOBYTE(v52) = 3;
    v20[13] = sub_2723784BC() & 1;
    v54 = 4;
    sub_27237848C();
    v22 = v53;
    *(v20 + 1) = v52;
    v20[32] = v22;
    LOBYTE(v52) = 5;
    *(v20 + 5) = sub_27237847C();
    v20[48] = v23 & 1;
    LOBYTE(v52) = 6;
    v20[49] = sub_2723784BC() & 1;
    LOBYTE(v52) = 7;
    sub_2723784DC();
    *(v20 + 13) = v24;
    LOBYTE(v52) = 8;
    *(v20 + 7) = sub_27237843C();
    *(v20 + 8) = v25;
    LOBYTE(v52) = 9;
    v51[72] = sub_27237844C();
    LOBYTE(v52) = 10;
    v51[73] = sub_27237844C();
    LOBYTE(v52) = 11;
    v51[74] = sub_27237844C();
    LOBYTE(v52) = 12;
    v51[75] = sub_2723784BC() & 1;
    LOBYTE(v52) = 13;
    v51[76] = sub_2723784BC() & 1;
    LOBYTE(v52) = 14;
    v51[77] = sub_2723784BC() & 1;
    v54 = 15;
    sub_272351CF0();
    sub_2723784FC();
    v51[78] = v52;
    sub_2721F065C(&qword_280882C38, &unk_272384450);
    v54 = 16;
    sub_27230C50C();
    sub_2723784FC();

    *(v51 + 10) = v52;
    v54 = 17;
    sub_272316B34();
    sub_2723784FC();
    v51[88] = v52;
    v54 = 18;
    sub_272316B88();
    sub_2723784FC();
    v51[89] = v52;
    LOBYTE(v52) = 19;
    v51[90] = sub_2723784BC() & 1;
    LOBYTE(v52) = 20;
    v26 = sub_27237845C();
    v27 = v51;
    *(v51 + 12) = v26;
    v27[104] = v28 & 1;
    LOBYTE(v52) = 21;
    v29 = sub_27237845C();
    v30 = v51;
    *(v51 + 14) = v29;
    v30[120] = v31 & 1;
    LOBYTE(v52) = 22;
    v51[121] = sub_2723784BC() & 1;
    LOBYTE(v52) = 23;
    sub_272351D44(&qword_280883220, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    sub_2723784FC();
    (*(v17 + 40))(&v51[v38], v18, v41);
    LOBYTE(v52) = 24;
    *&v51[v39] = sub_2723784EC();
    LOBYTE(v52) = 25;
    v32 = sub_2723784BC();
    v33 = v51;
    v51[v40] = v32 & 1;
    LOBYTE(v52) = 26;
    v34 = v47;
    v35 = v48;
    sub_2723784CC();
    v37 = v36;
    (*(v16 + 8))(v34, v35);
    *(v33 + v49) = v37;
    sub_272216374(v33, v42);
  }

  sub_2722039C8(v50);
  return sub_272216BD8(v33);
}

uint64_t sub_272350D58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_272350DB4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_272350E60(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_272350EC0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_272350F58;
}

void sub_272350F58(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_272350FD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_272351034(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *sub_27235109C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2723510E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VAKeywordSpotter.__allocating_init(delegate:configuration:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  *&v4[OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a2;
  v7 = a2;

  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();

  return v8;
}

id VAKeywordSpotter.init(delegate:configuration:)(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  *&v2[OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a2;
  v6 = a2;

  v9.receiver = v2;
  v9.super_class = type metadata accessor for VAKeywordSpotter();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();

  return v7;
}

void *sub_272351348()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  if (!v2 || (v3 = v2, v4 = (*((*v1 & *v2) + 0xA0))(), v3, !v4))
  {
    sub_2722032B4();
    swift_allocError();
    *v10 = 0xD000000000000020;
    v10[1] = 0x8000000272390B40;
    swift_willThrow();
    return v1;
  }

  v5 = (*((*v1 & *v4) + 0xB8))();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v1 = sub_2722702A8(*(v5 + 16), 0);
  v8 = sub_27227032C(&v11, v1 + 4, v7, v6);
  result = sub_272270484(v11);
  if (v8 == v7)
  {

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2723514E0()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000272391B70;
  return swift_willThrow();
}

uint64_t sub_272351560()
{
  sub_2722032B4();
  swift_allocError();
  *v1 = 0xD000000000000023;
  v1[1] = 0x8000000272391B70;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272351620()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000025;
  v0[1] = 0x8000000272391BA0;
  return swift_willThrow();
}

id VAKeywordSpotter.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377EAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deinit VAKeywordSpotter", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v11 = *&v1[v10];
  *&v1[v10] = 0;

  v12 = type metadata accessor for VAKeywordSpotter();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

id VAKeywordSpotter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_272351954(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      sub_27237874C();

      sub_27237790C();
      v9 = sub_27237878C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

BOOL sub_272351B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_2723781CC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t type metadata accessor for VARuntimeParameters(uint64_t a1)
{
  result = qword_280892930;
  if (!qword_280892930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_272351C48()
{
  result = qword_2808921A0[0];
  if (!qword_2808921A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808921A0);
  }

  return result;
}

unint64_t sub_272351C9C()
{
  result = qword_280883200;
  if (!qword_280883200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883200);
  }

  return result;
}

unint64_t sub_272351CF0()
{
  result = qword_280883218;
  if (!qword_280883218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883218);
  }

  return result;
}

uint64_t sub_272351D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_272351DB4()
{
  result = qword_280883238;
  if (!qword_280883238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883238);
  }

  return result;
}

unint64_t sub_272351E0C()
{
  result = qword_280883240;
  if (!qword_280883240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883240);
  }

  return result;
}

uint64_t sub_272351E94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_272376EBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 108);

    return v9(v10, a2, v8);
  }
}

void *sub_272351F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_272376EBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 108);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_272351FF8(uint64_t a1)
{
  sub_2723522D0(319, &qword_280883248, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2723522D0(319, &qword_280883250, MEMORY[0x277D84E88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2723522D0(319, &qword_280883258, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2723522D0(319, &qword_280881708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2723522D0(319, &qword_280881718, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_27235225C(319);
            if (v6 <= 0x3F)
            {
              sub_2723522D0(319, &qword_280883268, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_272376EBC();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_27235225C(uint64_t a1)
{
  if (!qword_280883260)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    v1 = sub_27237775C();
    if (!v2)
    {
      atomic_store(v1, &qword_280883260);
    }
  }
}

void sub_2723522D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t dispatch thunk of VAKeywordSpotter.addAudioAsync(buffer:hostTime:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_272211DBC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of VAKeywordSpotter.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return v5();
}

uint64_t getEnumTagSinglePayload for VARuntimeParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VARuntimeParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_272352A14()
{
  result = qword_280892A40[0];
  if (!qword_280892A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280892A40);
  }

  return result;
}

unint64_t sub_272352A6C()
{
  result = qword_280892B50;
  if (!qword_280892B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280892B50);
  }

  return result;
}

unint64_t sub_272352AC4()
{
  result = qword_280892B58[0];
  if (!qword_280892B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280892B58);
  }

  return result;
}

uint64_t sub_272352B18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238EA60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238EA80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736F62726576 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E756F626564 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238EB10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656857706F7473 && a2 == 0xED00007974706D45 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002723892F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272391C60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238EAB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000027238EAD0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027238EAF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272391C80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000272391CA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272391CC0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272391CF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272391D10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238EB30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238EB50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238EB70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000027 && 0x800000027238CBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238CC00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x754D736573736170 && a2 == 0xEF686374614D7473 || (sub_27237865C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6F4C686365657073 && a2 == 0xEC000000656C6163 || (sub_27237865C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027238EBD0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000027238EBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x4D4C6D6F74737563 && a2 == 0xEE00746867696557)
  {

    return 26;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

unint64_t sub_272353364()
{
  result = qword_280883270;
  if (!qword_280883270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883270);
  }

  return result;
}

_BYTE *sub_2723533B8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_272353458(uint64_t a1, unint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_272376BCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;
  sub_272376B8C();
  sub_272203AC4();
  v11 = sub_2723780EC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v28 = v11;
  v29 = v13;
  sub_272376EAC();
  v14 = sub_272376EBC();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_27237811C();
  sub_2721F40F0(v6, &qword_280882BB8, &unk_272386DF0);

  v15 = sub_2723778AC();
  v17 = v16;

  v28 = v15;
  v29 = v17;
  v34 = 95;
  v35 = 0xE100000000000000;
  v32 = 32;
  v33 = 0xE100000000000000;
  v18 = sub_2723780FC();
  v20 = v19;

  v34 = 0;
  v35 = 0xE000000000000000;
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v18;
  v29 = v20;
  v30 = 0;
  v31 = v21;
  v22 = sub_27237799C();
  v24 = v23;
  if (v23)
  {
    v25 = v22;
    do
    {
      if ((sub_2723777AC() & 1) == 0)
      {
        MEMORY[0x2743C4AC0](v25, v24);
      }

      v25 = sub_27237799C();
      v24 = v26;
    }

    while (v26);
    v24 = v34;
  }

  return v24;
}

uint64_t sub_27235374C(uint64_t a1, unint64_t a2)
{
  sub_272353458(a1, a2);
  sub_272203AC4();
  v2 = sub_2723780FC();

  return v2;
}

uint64_t sub_2723537E8(uint64_t a1, unint64_t a2)
{
  v2 = sub_272353458(a1, a2);
  v17[0] = v2;
  v17[1] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_272358DBC(0xD000000000000014, 0x8000000272391F40, 0);

  sub_2721F065C(&qword_280883278, &unk_272386E00);
  sub_2722199BC(&qword_280883280, &qword_280883278, &unk_272386E00, MEMORY[0x277D83D30]);
  sub_272203AC4();
  v6 = sub_272377FCC();
  v8 = v7;
  v9 = sub_2723777FC();
  v10 = [v5 matchesInString:v9 options:0 range:{v6, v8}];

  sub_272358E98();
  v11 = sub_272377AFC();

  v12 = sub_272353BAC(v11, v17);

  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = v5;
    v14 = v12 + 40;
    do
    {

      sub_2723780FC();
      v2 = sub_2723780FC();

      swift_bridgeObjectRelease_n();

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
  }

  return v2;
}

unint64_t sub_272353BAC(unint64_t result, uint64_t *a2)
{
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
      return v3;
    }

    v4 = result;
    v30 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v30;
    v6 = v4;
    v27 = v4;
    v28 = v4 & 0xC000000000000001;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v2;
    while (!__OFADD__(v5, 1))
    {
      v29 = v5 + 1;
      if (v28)
      {
        v7 = MEMORY[0x2743C5370](v5, v6);
      }

      else
      {
        if (v5 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      v8 = v7;

      [v8 range];

      sub_272377E4C();
      v10 = v9;

      if (v10)
      {
        goto LABEL_20;
      }

      v11 = sub_272377A5C();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = MEMORY[0x2743C4A20](v11, v13, v15, v17);
      v20 = v19;

      v22 = *(v30 + 16);
      v21 = *(v30 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_27220056C((v21 > 1), v22 + 1, 1);
      }

      *(v30 + 16) = v22 + 1;
      v23 = v30 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      ++v5;
      v6 = v27;
      if (v29 == v26)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v24 = result;
    v2 = sub_2723783AC();
    result = v24;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

VoiceActions::VASubstringMatcher_optional __swiftcall VASubstringMatcher.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VASubstringMatcher.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x736275537473756ALL;
  }
}

uint64_t sub_272353E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0x736275537473756ALL;
  }

  if (v2)
  {
    v4 = 0xED0000676E697274;
  }

  else
  {
    v4 = 0x8000000272391D40;
  }

  if (*a2)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0x736275537473756ALL;
  }

  if (*a2)
  {
    v6 = 0x8000000272391D40;
  }

  else
  {
    v6 = 0xED0000676E697274;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_272353F54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE600000000000000;
    v9 = 0x8000000272391DF0;
    v10 = 0xD000000000000021;
    v11 = 0x8000000272391E20;
    v12 = 0xD00000000000001ALL;
    if (a1 == 3)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v11 = 0x8000000272391E40;
    }

    if (a1 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (a1)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v13 = 0x6D6F74737563;
    }

    if (a1)
    {
      v8 = 0x8000000272391DD0;
    }

    if (a1 <= 1u)
    {
      v6 = v13;
    }

    else
    {
      v6 = v10;
    }

    if (v3 <= 1)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }
  }

  else if (a1 > 7u)
  {
    v14 = 0x8000000272391EE0;
    v15 = 0xD000000000000022;
    if (a1 != 9)
    {
      v15 = 0xD000000000000021;
      v14 = 0x8000000272391F10;
    }

    if (a1 == 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    else
    {
      v6 = v15;
    }

    if (v3 == 8)
    {
      v7 = 0x8000000272391EC0;
    }

    else
    {
      v7 = v14;
    }
  }

  else
  {
    v4 = 0x8000000272391E80;
    v5 = 0xD00000000000001DLL;
    if (a1 != 6)
    {
      v5 = 0xD00000000000001BLL;
      v4 = 0x8000000272391EA0;
    }

    if (a1 == 5)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 5)
    {
      v7 = 0x8000000272391E60;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v16 = 0xE600000000000000;
        v2 = 0x6D6F74737563;
        goto LABEL_58;
      }

      v17 = "defaultForVoiceActions";
    }

    else
    {
      if (a2 == 2)
      {
        v18 = "defaultRequiringMatchAtStartOrEnd";
        goto LABEL_57;
      }

      if (a2 != 3)
      {
        v16 = 0x8000000272391E40;
        v2 = 0xD00000000000001ALL;
        goto LABEL_58;
      }

      v17 = "simpleLevenshteinNoisy";
    }

    v16 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_58;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v16 = 0x8000000272391EC0;
      v2 = 0xD00000000000001CLL;
      goto LABEL_58;
    }

    if (a2 == 9)
    {
      v16 = 0x8000000272391EE0;
      v2 = 0xD000000000000022;
      goto LABEL_58;
    }

    v18 = "euclidDistMedReqMatchAtStartOrEnd";
LABEL_57:
    v16 = (v18 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000021;
    goto LABEL_58;
  }

  if (a2 == 5)
  {
    v16 = 0x8000000272391E60;
    v2 = 0xD000000000000017;
  }

  else if (a2 == 6)
  {
    v16 = 0x8000000272391E80;
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v16 = 0x8000000272391EA0;
    v2 = 0xD00000000000001BLL;
  }

LABEL_58:
  if (v6 == v2 && v7 == v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_27237865C();
  }

  return v19 & 1;
}

uint64_t sub_272354234(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7361637265776F6CLL;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x746957797A7A7566;
    v4 = 0xEF73656361705368;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000272391D80;
    }

    else
    {
      v4 = 0x8000000272391DA0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7361637265776F6CLL;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF73656361705368;
    if (v3 != 0x746957797A7A7566)
    {
LABEL_37:
      v8 = sub_27237865C();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000272391D80;
    }

    else
    {
      v6 = 0x8000000272391DA0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_2723543E8()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27235447C(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_2723544FC(uint64_t a1, unsigned __int8 a2)
{
  sub_27237790C();
}

uint64_t sub_2723546A0(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272354730@<X0>(char *a2@<X8>)
{
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_272354790(unint64_t *a1@<X8>)
{
  v2 = 0x8000000272391D40;
  v3 = 0x736275537473756ALL;
  if (*v1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xED0000676E697274;
  }

  *a1 = v3;
  a1[1] = v2;
}

VoiceActions::VAStringTransforms_optional __swiftcall VAStringTransforms.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VAStringTransforms.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x746957797A7A7566;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7361637265776F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2723549BC()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272354AAC(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_272354B88(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_272354C80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEF73656361705368;
  v6 = 0x746957797A7A7566;
  v7 = 0xD000000000000013;
  v8 = 0x8000000272391D80;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0x8000000272391DA0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7361637265776F6CLL;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *sub_272354DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272354E48(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 144))(&v4);
}

void *sub_272354EA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272354EFC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 168))(&v4);
}

void *sub_272354FA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272355000(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 192))(&v4);
}

uint64_t sub_272355058@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

void *sub_2723550F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_27235514C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 240))(&v4);
}

void sub_2723551E8(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 20) = v2;
}

uint64_t sub_272355274(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376EBC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 264))(v6);
}

uint64_t sub_272355374@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v4 = sub_272376EBC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2723553FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v4 = sub_272376EBC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

VoiceActions::VAStringMatchingStrategy::Recipe_optional __swiftcall VAStringMatchingStrategy.Recipe.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VAStringMatchingStrategy.Recipe.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6D6F74737563;
    v7 = 0xD000000000000021;
    v8 = 0xD000000000000016;
    if (v1 != 3)
    {
      v8 = 0xD00000000000001ALL;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v3 = 0xD000000000000022;
    if (v1 != 9)
    {
      v3 = 0xD000000000000021;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000017;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2723556C4()
{
  v1 = *v0;
  sub_27237874C();
  sub_2723544FC(v3, v1);
  return sub_27237878C();
}

uint64_t sub_272355714(uint64_t a1)
{
  v2 = *v1;
  sub_27237874C();
  sub_2723544FC(v4, v2);
  return sub_27237878C();
}

unint64_t sub_272355764@<X0>(unint64_t *a1@<X8>)
{
  result = VAStringMatchingStrategy.Recipe.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static VAStringMatchingStrategy.build(name:)(unsigned __int8 *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  type metadata accessor for VAStringMatchingStrategy(0);
  v7 = swift_allocObject();
  *&v8 = 263169;
  v20 = v8;
  *(v7 + 16) = 263169;
  *(v7 + 20) = 0;
  sub_272376E6C();
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        v14 = sub_2722C389C();
        (*(v3 + 16))(v5, v14, v2);
        v15 = sub_27237725C();
        v16 = sub_272377E8C();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_2721E4000, v15, v16, "Building .custom VAStringMatchingStrategy - this is expected in unit tests but not intended to be used in production. Recommend giving it a name", v17, 2u);
          MEMORY[0x2743C69C0](v17, -1, -1);
        }

        (*(v3 + 8))(v5, v2);
      }
    }

    else if (v6 == 2)
    {
      swift_beginAccess();
      *(v7 + 19) = 1;
    }

    else
    {
      if (v6 != 3)
      {
        type metadata accessor for SimpleLevenshteinMatcher(0);
        v9 = swift_allocObject();
        *(v9 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
        *(v9 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        *(v9 + 16) = v20;
        *(v9 + 20) = 0;
        sub_272376E6C();

        v10 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord;
        v11 = 3;
        goto LABEL_21;
      }

      type metadata accessor for SimpleLevenshteinMatcher(0);
      v12 = swift_allocObject();
      *(v12 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
      *(v12 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
      *(v12 + 16) = v20;
      *(v12 + 20) = 0;
      sub_272376E6C();

      *(v12 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 3;
      *(v12 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 0;
      v7 = v12;
    }
  }

  else
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        type metadata accessor for EuclidGraphemeDistanceMatcher(0);
        v13 = swift_allocObject();
        sub_272358B48(v13);

        *(v13 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
      }

      else
      {
        type metadata accessor for EuclidGraphemeDistanceMatcher(0);
        v13 = swift_allocObject();
        sub_272358B48(v13);
        if (v6 == 9)
        {

          *(v13 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FF0000000000000;
        }

        else
        {
          *(v13 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
          (*(*v13 + 216))(1);
        }
      }

      goto LABEL_24;
    }

    if (v6 != 5)
    {
      if (v6 == 6)
      {
        type metadata accessor for SimpleLevenshteinMatcher(0);
        v9 = swift_allocObject();
        *(v9 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
        *(v9 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        *(v9 + 16) = v20;
        *(v9 + 20) = 0;
        sub_272376E6C();

        v10 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord;
        v11 = 1;
LABEL_21:
        *(v9 + v10) = v11;
        *(v9 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        v7 = v9;
        goto LABEL_25;
      }

      type metadata accessor for EuclidGraphemeDistanceMatcher(0);
      v13 = swift_allocObject();
      sub_272358B48(v13);

      *(v13 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x4000CCCCCCCCCCCDLL;
LABEL_24:
      v7 = v13;
      goto LABEL_25;
    }

    type metadata accessor for SimpleLevenshteinMatcher(0);
    v18 = swift_allocObject();
    *(v18 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
    *(v18 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
    *(v18 + 16) = v20;
    *(v18 + 20) = 0;
    sub_272376E6C();

    *(v18 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
    *(v18 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
    v7 = v18;
  }

LABEL_25:
  v21 = v6;
  (*(*v7 + 240))(&v21);
  return v7;
}

uint64_t sub_272355D94()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
  *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
  *(v0 + 16) = 263169;
  *(v0 + 20) = 0;
  sub_272376E6C();
  return v0;
}

uint64_t sub_272355E18()
{
  v0 = swift_allocObject();
  sub_272358B48(v0);
  return v0;
}

uint64_t static VAStringMatchingStrategy.defaultForVoiceActions()()
{
  type metadata accessor for VAStringMatchingStrategy(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 263169;
  *(v0 + 20) = 0;
  sub_272376E6C();
  swift_beginAccess();
  *(v0 + 20) = 1;
  return v0;
}

uint64_t sub_272355EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*v4 + 208))();
  v10 = *v4;
  if (v9)
  {
    if ((*(v10 + 288))(a1, a2, a3, a4))
    {
      return 1;
    }

    else
    {
      v13 = *(*v4 + 296);

      return v13(a1, a2, a3, a4);
    }
  }

  else
  {
    v12 = *(v10 + 304);

    return v12(a1, a2, a3, a4, 25180, 0xE200000000000000, 25180, 0xE200000000000000);
  }
}

uint64_t sub_2723560A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*v8 + 160))(&v51);
  if (v51 <= 1u)
  {
    if (!v51)
    {

      goto LABEL_11;
    }

    v18 = sub_2723778AC();
  }

  else if (v51 == 2)
  {
    v18 = sub_272353458(a1, a2);
  }

  else
  {
    if (v51 == 3)
    {
      v49 = sub_272353458(a1, a2);
      v50 = v16;
      v47 = 32;
      v48 = 0xE100000000000000;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_272203AC4();
      a1 = sub_2723780FC();
      a2 = v17;

      goto LABEL_11;
    }

    v18 = sub_2723537E8(a1, a2);
  }

  a1 = v18;
  a2 = v19;
LABEL_11:
  (*(*v8 + 184))(&v51, v18);
  if (v51 <= 1u)
  {
    if (!v51)
    {

      goto LABEL_21;
    }

    v22 = sub_2723778AC();
  }

  else if (v51 == 2)
  {
    v22 = sub_272353458(a3, a4);
  }

  else
  {
    if (v51 == 3)
    {
      v49 = sub_272353458(a3, a4);
      v50 = v20;
      v47 = 32;
      v48 = 0xE100000000000000;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_272203AC4();
      a3 = sub_2723780FC();
      a4 = v21;

      goto LABEL_21;
    }

    v22 = sub_2723537E8(a3, a4);
  }

  a3 = v22;
  a4 = v23;
LABEL_21:
  (*(*v8 + 136))(&v45, v22);
  if (v45)
  {
    v24 = objc_opt_self();
    v25 = sub_2723777FC();

    v26 = [v24 escapedPatternForString_];

    v27 = sub_27237782C();
    v29 = v28;

    v49 = a5;
    v50 = a6;

    MEMORY[0x2743C4AD0](v27, v29);

    MEMORY[0x2743C4AD0](a7, a8);

    v30 = v49;
    v31 = v50;
    v32 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v33 = sub_272358DBC(v30, v31, 0);
    if (v33)
    {
      v36 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v36 = a3;
      }

      v37 = 7;
      if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
      {
        v37 = 11;
      }

      v49 = 15;
      v50 = v37 | (v36 << 16);
      v47 = a3;
      v48 = a4;
      v38 = v33;

      sub_2721F065C(&qword_280883278, &unk_272386E00);
      sub_2722199BC(&qword_280883280, &qword_280883278, &unk_272386E00, MEMORY[0x277D83D30]);
      sub_272203AC4();
      v39 = sub_272377FCC();
      v41 = v40;
      v42 = sub_2723777FC();

      v43 = [v38 firstMatchInString:v42 options:0 range:{v39, v41}];

      if (v43)
      {

        v34 = 1;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {

      v34 = 0;
    }
  }

  else
  {
    v49 = a3;
    v50 = a4;
    v47 = a1;
    v48 = a2;
    sub_272203AC4();
    v34 = sub_27237813C();
  }

  return v34 & 1;
}

int64_t sub_272356578(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v81 = a7;
  v82 = a8;
  v88 = a3;
  v15 = sub_272376BCC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v8 + 160))(&v95, v17);
  if (v95 <= 1u)
  {
    if (!v95)
    {

      goto LABEL_11;
    }

    v23 = sub_2723778AC();
  }

  else if (v95 == 2)
  {
    v23 = sub_272353458(a1, a2);
  }

  else
  {
    if (v95 == 3)
    {
      v20 = sub_272353458(a1, a2);
      v87 = a4;
      v93 = v20;
      v94 = v21;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_272203AC4();
      a1 = sub_2723780FC();
      a2 = v22;
      a4 = v87;

      goto LABEL_11;
    }

    v23 = sub_2723537E8(a1, a2);
  }

  a1 = v23;
  a2 = v24;
LABEL_11:
  (*(*v8 + 184))(&v95, v23);
  v79 = a5;
  v80 = a6;
  if (v95 <= 1u)
  {
    if (!v95)
    {
      v87 = a4;

      goto LABEL_21;
    }

    v28 = sub_2723778AC();
LABEL_20:
    v87 = v29;
    v88 = v28;
    goto LABEL_21;
  }

  if (v95 == 2)
  {
    v28 = sub_272353458(v88, a4);
    goto LABEL_20;
  }

  if (v95 != 3)
  {
    v28 = sub_2723537E8(v88, a4);
    goto LABEL_20;
  }

  v93 = sub_272353458(v88, a4);
  v94 = v25;
  v91 = 32;
  v92 = 0xE100000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_272203AC4();
  v26 = sub_2723780FC();
  v87 = v27;
  v88 = v26;

LABEL_21:
  v93 = a1;
  v94 = a2;
  sub_272376B8C();
  v85 = sub_272203AC4();
  v30 = sub_2723780AC();
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v86 = v19;
  v84 = v32;
  v32(v19, v15);

  v33 = 0;
  v34 = *(v30 + 16);
  v35 = v30 + 40;
  v36 = MEMORY[0x277D84F90];
LABEL_22:
  v37 = (v35 + 16 * v33);
  while (v34 != v33)
  {
    if (v33 >= *(v30 + 16))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:

      v59 = MEMORY[0x277D84F90];
LABEL_51:
      v61 = 0;
      v62 = v59[2];
      while (v62 != v61)
      {
        if (v61 >= v59[2])
        {
          __break(1u);
          goto LABEL_101;
        }

        v63 = v61 + 1;
        v34 = v59[v61 + 4];
        v64 = *(*v9 + 312);

        v35 = v64(v36, v34);

        v61 = v63;
        if (v35)
        {

          return 1;
        }
      }

      return 0;
    }

    ++v33;
    v39 = *(v37 - 1);
    v38 = *v37;
    v37 += 2;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v36;
      v42 = v36;
      v83 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27220056C(0, *(v36 + 16) + 1, 1);
        v42 = v93;
      }

      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      if (v44 >= v43 >> 1)
      {
        v78 = v35;
        sub_27220056C((v43 > 1), v44 + 1, 1);
        v35 = v78;
        v42 = v93;
      }

      *(v42 + 16) = v44 + 1;
      v45 = v42 + 16 * v44;
      *(v45 + 32) = v39;
      *(v45 + 40) = v38;
      v36 = v42;
      v31 = v83;
      goto LABEL_22;
    }
  }

  v93 = v88;
  v94 = v87;
  v34 = v86;
  sub_272376B8C();
  v46 = sub_2723780AC();
  v84(v34, v15);

  v47 = 0;
  v48 = *(v46 + 16);
  v35 = MEMORY[0x277D84F90];
LABEL_34:
  v49 = (v46 + 40 + 16 * v47);
  while (v48 != v47)
  {
    if (v47 >= *(v46 + 16))
    {
      goto LABEL_98;
    }

    ++v47;
    v50 = *(v49 - 1);
    v34 = *v49;
    v49 += 2;
    v51 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v88 = v36;

      v52 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v35;
      if ((v52 & 1) == 0)
      {
        sub_27220056C(0, *(v35 + 16) + 1, 1);
        v35 = v93;
      }

      v54 = *(v35 + 16);
      v53 = *(v35 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_27220056C((v53 > 1), v54 + 1, 1);
        v35 = v93;
      }

      *(v35 + 16) = v54 + 1;
      v55 = v35 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v34;
      v36 = v88;
      goto LABEL_34;
    }
  }

  v56 = *(v35 + 16);
  v57 = *(v36 + 16);
  v58 = v56 - v57;
  if (v56 < v57)
  {

    return 0;
  }

  if (v81 == 36 && v82 == 0xE100000000000000 || (sub_27237865C() & 1) != 0)
  {
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v59 = swift_allocObject();
    *(v59 + 1) = xmmword_27237AF80;
    sub_272356ECC(v57, v35);
    v59[4] = v60;
    goto LABEL_51;
  }

  if (v79 == 94 && v80 == 0xE100000000000000 || (result = sub_27237865C(), (result & 1) != 0))
  {
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v59 = swift_allocObject();
    *(v59 + 1) = xmmword_27237AF80;
    v66 = *(v35 + 16);
    if (v66 >= v57)
    {
      v66 = v57;
    }

    v67 = 2 * v66;
    if (v57)
    {
      v34 = v67 + 1;
    }

    else
    {
      v34 = 1;
    }

    sub_27237868C();
    swift_unknownObjectRetain_n();
    v68 = swift_dynamicCastClass();
    if (!v68)
    {
      swift_unknownObjectRelease();
      v68 = MEMORY[0x277D84F90];
    }

    v69 = *(v68 + 16);

    if (v69 == v34 >> 1)
    {
      v34 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v34)
      {
LABEL_72:
        v59[4] = v34;
        goto LABEL_51;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_71:
      swift_unknownObjectRelease();
      goto LABEL_72;
    }

LABEL_105:
    swift_unknownObjectRelease();
    sub_272359078(v35, v35 + 32, 0, v34);
    v34 = v77;
    goto LABEL_71;
  }

  if (v58 >= -1)
  {
    if (v58 == -1)
    {
      goto LABEL_99;
    }

    v34 = v35 + 32;

    v70 = 0;
    v88 = v58 + 1;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v71 = v70 + v57;
      if (__OFADD__(v70, v57))
      {
        break;
      }

      if (v71 < v70)
      {
        goto LABEL_102;
      }

      v72 = *(v35 + 16);
      if (v72 < v71)
      {
        goto LABEL_103;
      }

      if (__OFSUB__(v71, v70))
      {
        goto LABEL_104;
      }

      if (v72 == v57)
      {

        v73 = v35;
      }

      else if (v57)
      {
        if (v57 < 1)
        {
          v73 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_2721F065C(&qword_280881860, &unk_27237C340);
          v73 = swift_allocObject();
          result = j__malloc_size(v73);
          v76 = result - 32;
          if (result < 32)
          {
            v76 = result - 17;
          }

          v73[2] = v57;
          v73[3] = 2 * (v76 >> 4);
        }

        if (v70 == v71)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_272358F44(0, v59[2] + 1, 1, v59);
        v59 = result;
      }

      v75 = v59[2];
      v74 = v59[3];
      if (v75 >= v74 >> 1)
      {
        result = sub_272358F44((v74 > 1), v75 + 1, 1, v59);
        v59 = result;
      }

      ++v70;
      v59[2] = v75 + 1;
      v59[v75 + 4] = v73;
      v34 += 16;
      if (v88 == v70)
      {

        goto LABEL_51;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

void sub_272356ECC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v23 = MEMORY[0x277D84F90];
  sub_27220056C(0, v4, 0);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 40;
    v22 = *(a2 + 16);
    v21 = v5 - 1;
    do
    {
      v9 = (v8 + 16 * v6);
      while (1)
      {
        if (v6 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = v6 + 1;
        v13 = *(v23 + 16);
        if (v13 >= a1)
        {
          break;
        }

        v14 = *(v23 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_27220056C((v14 > 1), v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        v15 = v23 + 16 * v13;
        *(v15 + 32) = v10;
        *(v15 + 40) = v11;
        v9 += 2;
        v6 = v12;
        if (v22 == v12)
        {
          goto LABEL_23;
        }
      }

      if (v7 >= v13)
      {
        goto LABEL_33;
      }

      v16 = v23 + 16 * v7;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;

      if ((v7 + 1) < a1)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }

      v8 = a2 + 40;
    }

    while (v21 != v6++);
LABEL_23:

    if (!v7)
    {
      return;
    }

    v18 = *(v23 + 16);
    sub_27220056C(0, v18, 0);
    if (v18 >= v7)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v19 = *(v23 + 16);
      if (v19 >= v7 && v19 >= v18)
      {

        sub_272359DCC(v20, v23 + 32, v7, (2 * v18) | 1);

        sub_272359DCC(v23, v23 + 32, 0, (2 * v7) | 1);

        return;
      }

      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }
}

BOOL sub_272357118(uint64_t a1, uint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16))
  {
    v10 = (a1 + 40);
    v11 = (a2 + 40);
    v12 = v9 + 1;
    do
    {
      v13 = --v12 == 0;
      if (!v12)
      {
        break;
      }

      v26 = v10 + 2;
      v14 = v11 + 2;
      v16 = *(v10 - 1);
      v15 = *v10;
      v17 = *(v11 - 1);
      v18 = *v11;
      v19 = *(*v2 + 320);

      LOBYTE(v16) = v19(v16, v15, v17, v18);

      v11 = v14;
      v10 = v26;
    }

    while ((v16 & 1) != 0);
  }

  else
  {
    v20 = sub_2722C389C();
    (*(v6 + 16))(v8, v20, v5);
    v21 = sub_27237725C();
    v22 = sub_272377E8C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2721E4000, v21, v22, "Expect needleWords.count == hayWords.count", v23, 2u);
      MEMORY[0x2743C69C0](v23, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  return v13;
}

uint64_t sub_27235733C()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2722C389C();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27237725C();
  v6 = sub_272377E8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "Abstract WordIteratingMatcher used", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_272357494()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 263169;
  *(v0 + 20) = 0;
  sub_272376E6C();
  return v0;
}

uint64_t sub_2723574FC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_272357560(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_27237791C() >= *(v4 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength))
  {
    result = sub_27237791C();
    if (result < 0)
    {
      goto LABEL_51;
    }

    if (result)
    {
      v10 = result;
      v11 = sub_272377B5C();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
    }

    result = sub_27237791C();
    if (result < 0)
    {
LABEL_52:
      __break(1u);
    }

    else
    {
      v12 = result;
      v13 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v14 = sub_272275CE4(result + 1, 0);
        result = sub_272359D28(v41, (v14 + 4), v13, 0, v12);
        if (result == v13)
        {
          v39 = v4;
          v15 = HIBYTE(a2) & 0xF;
          v41[0] = a1;
          v41[1] = a2;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v15 = a1 & 0xFFFFFFFFFFFFLL;
          }

          v41[2] = 0;
          v41[3] = v15;

          result = sub_27237799C();
          if (v16)
          {
            v17 = result;
            v18 = v16;
            v19 = 0;
            while (1)
            {
              if (__OFADD__(v19++, 1))
              {
                goto LABEL_50;
              }

              sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_27237AF80;
              *(v22 + 32) = v19;
              v40 = v22;

              sub_272359C3C(v23);
              v24 = v40;

              v25 = sub_27237799C();
              if (v26)
              {
                break;
              }

LABEL_18:

              result = sub_27237799C();
              v17 = result;
              v18 = v20;
              v14 = v24;
              if (!v20)
              {
                goto LABEL_42;
              }
            }

            v27 = v25;
            v28 = v26;
            v29 = 0;
            v30 = v14 + 4;
            while (1)
            {
              v31 = v29 + 1;
              if (v18 == v28 && v17 == v27)
              {
              }

              else
              {
                v32 = sub_27237865C();

                if ((v32 & 1) == 0)
                {
                  v34 = v14[2];
                  if (v29 >= v34)
                  {
                    goto LABEL_46;
                  }

                  if (v31 >= v34)
                  {
                    goto LABEL_47;
                  }

                  if (v29 >= *(v24 + 16))
                  {
                    goto LABEL_48;
                  }

                  v35 = *v30;
                  if (v30[1] < *v30)
                  {
                    v35 = v30[1];
                  }

                  if (*(v24 + 8 * v29 + 32) < v35)
                  {
                    v35 = *(v24 + 8 * v29 + 32);
                  }

                  v33 = v35 + 1;
                  if (__OFADD__(v35, 1))
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_36;
                }
              }

              if (v29 >= v14[2])
              {
                goto LABEL_45;
              }

              v33 = *v30;
LABEL_36:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_272244CD8(v24);
                v24 = result;
              }

              if (v31 >= *(v24 + 16))
              {
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
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              *(v24 + 8 * v29 + 40) = v33;
              v27 = sub_27237799C();
              v28 = v36;
              ++v30;
              ++v29;
              if (!v36)
              {
                goto LABEL_18;
              }
            }
          }

          v24 = v14;
LABEL_42:

          v37 = *(v24 + 16);
          if (v37)
          {
            v38 = *(v24 + 8 * v37 + 24);

            return *(v39 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) >= v38;
          }

LABEL_55:
          __break(1u);
          return result;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return sub_27237865C();
}

uint64_t sub_272357930()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2723579CC()
{
  v1 = v0;
  v2 = sub_27237752C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_27237751C();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272376EBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_272376DFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272376DEC();
  v17 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  swift_beginAccess();
  (*(v14 + 40))(v1 + v17, v16, v13);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v19 = *(v7 + 16);
  v19(v12, v1 + v18, v6);
  (*(v7 + 56))(v12, 0, 1, v6);
  v20 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  swift_beginAccess();
  sub_272359BCC(v12, v1 + v20);
  swift_endAccess();
  v19(v9, v1 + v18, v6);
  (*(v4 + 104))(v24, *MEMORY[0x277CDCC88], v25);
  (*(v27 + 104))(v26, *MEMORY[0x277CDCC90], v28);
  sub_27237756C();
  swift_allocObject();
  v21 = sub_27237754C();
  *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder) = v21;

  return v21;
}

uint64_t sub_272357DE8()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v36 - v3;
  v4 = sub_272376EBC();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v7;
  v8 = sub_27237728C();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_272376DFC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_272376DEC();
  sub_272376DAC();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v19 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  swift_beginAccess();
  (*(v12 + 16))(v15, v1 + v19, v11);
  LOBYTE(v12) = sub_272376DCC();
  v42 = v18;
  v18(v15, v11);
  if (v12)
  {
    v20 = sub_2722C389C();
    v21 = v41;
    (*(v41 + 16))(v10, v20, v8);
    v22 = sub_27237725C();
    v23 = sub_272377E6C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2721E4000, v22, v23, "Rebuilding stale phonetic embedder", v24, 2u);
      MEMORY[0x2743C69C0](v24, -1, -1);
    }

    (*(v21 + 8))(v10, v8);
    goto LABEL_8;
  }

  v25 = *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder);
  if (!v25)
  {
LABEL_8:
    v25 = sub_2723579CC();
    goto LABEL_9;
  }

  v26 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  swift_beginAccess();
  v27 = v37;
  sub_2721F07F4(v1 + v26, v37, &qword_280882BB8, &unk_272386DF0);
  v29 = v39;
  v28 = v40;
  if ((*(v39 + 48))(v27, 1, v40) == 1)
  {
    sub_2721F40F0(v27, &qword_280882BB8, &unk_272386DF0);
    goto LABEL_8;
  }

  v31 = v38;
  (*(v29 + 32))(v38, v27, v28);
  v32 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v33 = v36;
  (*(v29 + 16))(v36, v1 + v32, v28);

  LOBYTE(v32) = MEMORY[0x2743C3FE0](v31, v33);
  v34 = *(v29 + 8);
  v34(v33, v28);
  if (v32)
  {
    v34(v38, v28);
  }

  else
  {
    v35 = sub_2723579CC();

    v34(v38, v28);
    v25 = v35;
  }

LABEL_9:
  v42(v17, v11);
  return v25;
}

BOOL sub_272358314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v9 = sub_27237728C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  v41 = v15 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = sub_272377C3C();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v5;
  v18[7] = a1;
  v42 = a1;
  v19 = v48;
  v18[8] = a2;
  v18[9] = v19;
  v18[10] = a4;
  v18[11] = v16;
  v20 = v14;

  v44 = v5;

  v43 = a4;

  sub_27222A1F0(0, 0, v13, &unk_272387318, v18);

  sub_272377F5C();
  swift_beginAccess();
  v21 = *(v16 + 16);
  if (v21)
  {
    v22 = v21;
    v23 = sub_2722C389C();
    v25 = v45;
    v24 = v46;
    v26 = v47;
    (*(v45 + 16))(v47, v23, v46);
    v27 = v21;
    v28 = sub_27237725C();
    v29 = sub_272377E8C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_2721E4000, v28, v29, "Error in PhoneticDistanceMatcher using phonetic embedder: %@ - will not match", v30, 0xCu);
      sub_2721F40F0(v31, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v31, -1, -1);
      v26 = v47;
      MEMORY[0x2743C69C0](v30, -1, -1);
      v34 = v28;
    }

    else
    {
      v34 = v20;
      v20 = v28;
    }

    (*(v25 + 8))(v26, v24);

    return 0;
  }

  else
  {
    sub_2721F065C(&qword_280882040, &unk_27237E470);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_27237AF80;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_27237820C();
    v51 = v49;
    v52 = v50;
    MEMORY[0x2743C4AD0](0xD000000000000018, 0x80000002723921C0);
    MEMORY[0x2743C4AD0](v42, a2);
    MEMORY[0x2743C4AD0](32, 0xE100000000000000);
    MEMORY[0x2743C4AD0](v48, v43);
    MEMORY[0x2743C4AD0](2112032, 0xE300000000000000);
    swift_beginAccess();
    sub_272377D2C();
    v36 = v51;
    v37 = v52;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    sub_27237872C();

    v38 = *(v15 + 16);
    v39 = *(v44 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance);

    return v38 < v39;
  }
}

uint64_t sub_272358828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x2822009F8](sub_272358864, 0, 0);
}

uint64_t sub_272358864()
{
  v0[16] = sub_272357DE8();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_272358910;
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  return MEMORY[0x28212BFE8](v5, v4, v2, v3);
}

uint64_t sub_272358910(double a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_272358ABC;
  }

  else
  {

    *(v4 + 152) = a1;
    v5 = sub_272358A3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_272358A3C()
{
  v1 = v0[19];
  v2 = v0[9];
  swift_beginAccess();
  *(v2 + 16) = v1;
  sub_272377F6C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_272358ABC()
{
  v1 = v0[18];
  v2 = v0[15];

  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  sub_272377F6C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_272358B48(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder) = 0;
  sub_272376DEC();
  v2 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  v3 = sub_272376EBC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
  *(v1 + 16) = 263169;
  *(v1 + 20) = 0;
  sub_272376E6C();
  return v1;
}

uint64_t sub_272358C10()
{

  v1 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  v2 = sub_272376DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder, &qword_280882BB8, &unk_272386DF0);
}

uint64_t sub_272358C9C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  v4 = sub_272376DFC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder, &qword_280882BB8, &unk_272386DF0);

  return swift_deallocClassInstance();
}

id sub_272358DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2723777FC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_272358E98()
{
  result = qword_280883288;
  if (!qword_280883288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280883288);
  }

  return result;
}

void *sub_272358F44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_272359078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_272359154()
{
  result = qword_280883298;
  if (!qword_280883298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883298);
  }

  return result;
}

unint64_t sub_2723591F0()
{
  result = qword_2808832B0;
  if (!qword_2808832B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832B0);
  }

  return result;
}

unint64_t sub_27235928C()
{
  result = qword_2808832C8;
  if (!qword_2808832C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832C8);
  }

  return result;
}

uint64_t sub_272359308(uint64_t a1)
{
  result = sub_272376EBC();
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

uint64_t getEnumTagSinglePayload for VAStringMatchingStrategy.Recipe(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAStringMatchingStrategy.Recipe(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_272359900(uint64_t a1)
{
  sub_272376DFC();
  if (v1 <= 0x3F)
  {
    sub_2723599E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2723599E4(uint64_t a1)
{
  if (!qword_2808832D0)
  {
    sub_272376EBC();
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_2808832D0);
    }
  }
}

uint64_t sub_272359A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272359A84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_272359AEC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_272211DBC;

  return sub_272358828(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_272359BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_272359C3C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_27220897C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_272359D28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_272359DCC(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_27220056C(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_272359ED8()
{
  result = qword_2808832D8;
  if (!qword_2808832D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832D8);
  }

  return result;
}

unint64_t sub_272359F2C()
{
  result = qword_2808832E0;
  if (!qword_2808832E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832E0);
  }

  return result;
}

unint64_t sub_272359F80()
{
  result = qword_2808832E8;
  if (!qword_2808832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832E8);
  }

  return result;
}

void *sub_272359FEC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t VAA2AVerifierModel.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = MEMORY[0x277D84F90];
  type metadata accessor for VALog();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v17 = v8;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v15, v16, v7);

  v9 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v10 = v9;
  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v9 setComputeUnits_];
  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  v12 = v10;
  v13 = sub_2722E3078(v12);
  if (v2)
  {

    sub_272299680(v7, type metadata accessor for VASignpostInterval);

    type metadata accessor for VAA2AVerifierModel();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v13;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v7, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

void sub_27235A2E4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for VASingleEnrollmentData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    a1 = MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    a1 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    sub_2722032B4();
    swift_allocError();
    *v17 = 0xD00000000000001ELL;
    v17[1] = 0x800000027238B8F0;
    swift_willThrow();
    return;
  }

  v4 = v12;
  v83 = v11;
  v84 = v9;
  v86 = v2;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v13 + 32) = sub_272377FAC();
  v14 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v15 = sub_272257FA4(v13, 65568);
  v16 = v3;
  if (v3)
  {
    swift_unknownObjectRelease();
    return;
  }

  v5 = v15;
  v82 = 0;
  v18 = [v4 shape];
  v2 = sub_272377AFC();

  v81 = v8;
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  for (i = *(v2 + 32); ; i = MEMORY[0x2743C5370](0, v2))
  {
    v20 = i;

    [v5 setObject:v20 atIndexedSubscript:0];

    v8 = v86;
    v21 = (*(*v86 + 168))();
    if (!v21)
    {
      static VAVerifierModelOutput.none.getter(a2);
      swift_unknownObjectRelease();

      return;
    }

    v22 = v21;
    v23 = (*(*v8 + 192))();
    if (!v23)
    {
      static VAVerifierModelOutput.none.getter(a2);
      swift_unknownObjectRelease();

      return;
    }

    v24 = v23;
    v85 = type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
    swift_unknownObjectRetain();
    v25 = v22;
    v26 = v5;
    v16 = v24;
    v27 = v4;
    v28 = v26;
    v29 = v25;
    v30 = sub_272295840(v27, v25, v28, v16);
    v31 = (*(*v8 + 144))();
    v32 = v82;
    v33 = (*(*v31 + 136))(v30);
    v82 = v32;
    if (v32)
    {
      swift_unknownObjectRelease();

      return;
    }

    v80 = v30;
    v72 = v28;
    v73 = v29;
    v5 = v33;

    v35 = (*v8 + 216);
    v77 = *v35;
    v76 = v35;
    v18 = *((v77)(v34) + 16);

    v37 = *(*v5 + 88);
    v78 = *v5 + 88;
    v79 = v37;
    v38 = (v37)(v36);
    v39 = [v38 shape];

    v2 = sub_272377AFC();
    v71[1] = a1;
    if ((v2 & 0xC000000000000001) != 0)
    {
LABEL_43:
      a1 = v16;
      v40 = MEMORY[0x2743C5370](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_45:
        v45 = MEMORY[0x2743C5370](0, v2);
        goto LABEL_24;
      }

      a1 = v16;
      v40 = *(v2 + 32);
    }

    v41 = v40;

    v42 = [v41 integerValue];

    if (v18 != v42)
    {
      static VAVerifierModelOutput.none.getter(a2);
LABEL_37:

      swift_unknownObjectRelease();
      return;
    }

    v18 = &selRef_environment;
    v43 = v79();
    v44 = [v43 shape];

    v2 = sub_272377AFC();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v45 = *(v2 + 32);
LABEL_24:
    v46 = v45;

    v47 = [v46 v18 + 120];

    if ((v47 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!v47)
    {
      v85 = MEMORY[0x277D84F90];
LABEL_36:
      type metadata accessor for VAKeywordResult();
      v70 = VAKeywordResult.__allocating_init(detections:)(v85);
      sub_2722E45C4(v70, a2);
      goto LABEL_37;
    }

    v4 = 0;
    v85 = MEMORY[0x277D84F90];
    v75 = a2;
    v74 = v5;
    while (1)
    {
      v48 = v79();
      v49 = [v48 objectAtIndexedSubscript_];

      [v49 floatValue];
      v51 = v50;

      v2 = v8;
      v52 = v77();
      if (v4 >= *(v52 + 16))
      {
        break;
      }

      v53 = v83;
      sub_272204F54(v52 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v4, v83);

      v54 = (v53 + *(v81 + 24));
      v55 = *v54;
      v56 = v54[1];

      sub_272299680(v53, type metadata accessor for VASingleEnrollmentData);
      v57 = sub_272241A18();
      v58 = sub_272241A18();
      v59 = sub_272324094();
      v60 = sub_272324094();
      LOBYTE(v53) = sub_2721F7EE4();
      v61 = sub_2721F7EE4();
      v62 = sub_27222CD4C();
      sub_27232409C(v55, v56, v59, v60, v53 & 1, v61 & 1, v62 & 1, 0, v87, v51, v57, v58, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_272205014(0, *(v85 + 2) + 1, 1, v85);
      }

      v8 = v86;
      v64 = *(v85 + 2);
      v63 = *(v85 + 3);
      a2 = v75;
      if (v64 >= v63 >> 1)
      {
        v85 = sub_272205014((v63 > 1), v64 + 1, 1, v85);
      }

      ++v4;
      v65 = v85;
      *(v85 + 2) = v64 + 1;
      v66 = &v65[80 * v64];
      *(v66 + 2) = v87[0];
      v67 = v87[1];
      v68 = v87[2];
      v69 = v87[4];
      *(v66 + 5) = v87[3];
      *(v66 + 6) = v69;
      *(v66 + 3) = v67;
      *(v66 + 4) = v68;
      v5 = v74;
      if (v47 == v4)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_27235ABA4()
{
}

uint64_t VAA2AVerifierModel.deinit()
{
  v0 = VAVerifierModel.deinit();

  return v0;
}

uint64_t VAA2AVerifierModel.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModel.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v3 = v2;
  v5 = *(*v1 + 224);

  v44 = v1;
  v5(v6);
  v7 = *(enrollments._rawValue + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = type metadata accessor for VASingleEnrollmentData(0);
  v41 = enrollments._rawValue + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v42 = *(v8 - 8);
  v9 = *&v41[*(v8 + 20)];
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v8;
  v11 = *(*(v9 + 32) + 16);
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27237E510;
  *(v12 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = objc_allocWithZone(MEMORY[0x277CBFF40]);

  v15 = sub_272257FA4(v14, 65568);
  if (v3)
  {

    return;
  }

  v46 = v11;
  v45 = v10;
  v16 = (*(*v1 + 200))(v15);
  v17 = 0;
  v43 = v7;
  while (1)
  {
    v18 = (*(*v44 + 192))(v16);
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v19 setObject:v20 atIndexedSubscript:v17];

    if (v43 == ++v17)
    {

      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_27237E4F0;
      *(v21 + 32) = sub_272377DBC();
      *(v21 + 40) = sub_272377DBC();
      v22 = v11;
      *(v21 + 48) = sub_272377DBC();
      v23 = objc_allocWithZone(MEMORY[0x277CBFF40]);
      v24 = sub_272257FA4(v21, 65568);
      v25 = 0;
LABEL_10:
      v26 = 0;
      v39 = v25 + 1;
      while (!v22)
      {
LABEL_11:
        if (++v26 == v45)
        {
          ++v25;
          if (v39 == v43)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v27 = 0;
      v28 = *&v41[*(v42 + 72) * v25 + *(v40 + 20)];
      while (1)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_27237E4F0;
        *(v29 + 32) = sub_272377DBC();
        *(v29 + 40) = sub_272377DBC();
        *(v29 + 48) = sub_272377DBC();
        if (v26 >= *(v28 + 16))
        {
          break;
        }

        v30 = *(v28 + 32 + 8 * v26);
        if (v27 >= *(v30 + 16))
        {
          goto LABEL_19;
        }

        v31 = v27 + 1;
        v32 = *(v30 + 4 * v27 + 32);
        v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v34) = v32;
        v35 = [v33 initWithFloat_];
        sub_27223EE54();
        v36 = sub_272377AEC();

        [v24 setObject:v35 forKeyedSubscript:v36];

        v27 = v31;
        v22 = v46;
        if (v46 == v31)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v37 = *(*v44 + 176);
      v38 = v24;
      v37(v24);

      return;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_27235B1F0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27235B234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_27235B44C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27235B490(double a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27235B540()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27235B584(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_27235B684(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_27235B6F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_27235B790;
}

void sub_27235B790(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_27235B818@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  swift_beginAccess();
  return sub_27233FEA8(v1 + v3, a1);
}

uint64_t sub_27235B870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  swift_beginAccess();
  sub_27233FF9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_27235B930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_27235D07C(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_27235B9A8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v96 = &v82 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v82 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v88 = &v82 - v17;
  v18 = v1 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters;
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters + 13) == 1)
  {
    v16 = (*(*v1 + 344))(v16);
    if (v16)
    {
      v20 = v19;
      v84 = v2;
      ObjectType = swift_getObjectType();
      v91 = 0x203A746C75736552;
      v92 = 0xE800000000000000;
      v21 = (*(*a1 + 224))();
      v85 = v1;
      MEMORY[0x2743C4AD0](v21);

      (*(v20 + 8))(v91, v92, ObjectType, v20);
      v3 = v85;

      v16 = swift_unknownObjectRelease();
    }
  }

  (*(*a1 + 208))(&v91, v16);
  v22 = v92;
  if (v92)
  {
    v23 = v93;
    if (v95)
    {
      v24 = v94;
      v22 = v95;
    }

    else
    {
      v24 = v91;
    }

    v30 = VARuntimeParameters.keywordsToThresholds.getter();
    if (v30[2] && (v31 = sub_27220038C(v24, v22), (v32 & 1) != 0))
    {
      v33 = *(v30[7] + 4 * v31);

      if (v23 < v33)
      {
        v34 = v24;
        v35 = sub_2722C389C();
        v36 = v88;
        (*(v6 + 16))(v88, v35, v5);

        v37 = sub_27237725C();
        v38 = sub_272377E7C();

        sub_2721F40F0(&v91, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v85 = v3;
          v41 = v40;
          v89 = v40;
          *v39 = 136315650;
          v42 = sub_2721FFD04(v34, v22, &v89);
          v43 = v6;
          v44 = v42;

          *(v39 + 4) = v44;
          *(v39 + 12) = 2048;
          *(v39 + 14) = v23;
          *(v39 + 22) = 2048;
          *(v39 + 24) = v33;
          _os_log_impl(&dword_2721E4000, v37, v38, "Ignoring topDetection %s score %f < %f", v39, 0x20u);
          sub_2722039C8(v41);
          v45 = v41;
          v3 = v85;
          MEMORY[0x2743C69C0](v45, -1, -1);
          MEMORY[0x2743C69C0](v39, -1, -1);

          (*(v43 + 8))(v88, v5);
        }

        else
        {

          (*(v6 + 8))(v36, v5);
        }

        (*(*v3 + 232))(0);
        return (*(*v3 + 256))(0);
      }

      if (*(v18 + 90) == 1 && (sub_27235C498(a1) & 1) != 0)
      {
        v57 = sub_2722C389C();
        v58 = v86;
        (*(v6 + 16))(v86, v57, v5);

        v59 = sub_27237725C();
        v60 = sub_272377E7C();

        sub_2721F40F0(&v91, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v59, v60))
        {
          v61 = v24;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v89 = v63;
          *v62 = 136315394;
          v64 = sub_2721FFD04(v61, v22, &v89);
          v65 = v6;
          v66 = v64;

          *(v62 + 4) = v66;
          *(v62 + 12) = 2048;
          *(v62 + 14) = v23;
          _os_log_impl(&dword_2721E4000, v59, v60, "Ignoring repeated result in consecutive stride:%s %f", v62, 0x16u);
          sub_2722039C8(v63);
          MEMORY[0x2743C69C0](v63, -1, -1);
          MEMORY[0x2743C69C0](v62, -1, -1);

          return (*(v65 + 8))(v86, v5);
        }

LABEL_31:

        return (*(v6 + 8))(v58, v5);
      }

      if (sub_27235C960())
      {
        v67 = sub_2722C389C();
        v58 = v87;
        (*(v6 + 16))(v87, v67, v5);

        v59 = sub_27237725C();
        v68 = sub_272377E8C();

        sub_2721F40F0(&v91, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v59, v68))
        {
          v69 = v24;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v89 = v71;
          *v70 = 136315394;
          v72 = sub_2721FFD04(v69, v22, &v89);
          v73 = v6;
          v74 = v72;

          *(v70 + 4) = v74;
          *(v70 + 12) = 2048;
          *(v70 + 14) = v23;
          _os_log_impl(&dword_2721E4000, v59, v68, "Debounce without speech detector: Ignoring %s %f", v70, 0x16u);
          sub_2722039C8(v71);
          MEMORY[0x2743C69C0](v71, -1, -1);
          MEMORY[0x2743C69C0](v70, -1, -1);

          return (*(v73 + 8))(v87, v5);
        }

        goto LABEL_31;
      }

      sub_2721F40F0(&v91, &qword_2808819E0, &qword_27237D890);
      v75 = mach_absolute_time();
      (*(*v3 + 208))(v75);
      v76 = *(*v3 + 232);

      v78 = v76(v77);
      result = (*(*v3 + 344))(v78);
      if (result)
      {
        v80 = v79;
        v81 = swift_getObjectType();
        (*(v80 + 16))(a1, v81, v80);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_2721F40F0(&v91, &qword_2808819E0, &qword_27237D890);

      v46 = sub_2722C389C();
      v47 = v96;
      (*(v6 + 16))(v96, v46, v5);

      v48 = sub_27237725C();
      v49 = sub_272377E8C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v24;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v89 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_2721FFD04(v50, v22, &v89);
        _os_log_impl(&dword_2721E4000, v48, v49, "Missing threshold for keyword %s", v51, 0xCu);
        sub_2722039C8(v52);
        MEMORY[0x2743C69C0](v52, -1, -1);
        v53 = v51;
        v24 = v50;
        MEMORY[0x2743C69C0](v53, -1, -1);
      }

      (*(v6 + 8))(v47, v5);
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_27237820C();

      v89 = 0xD00000000000001ELL;
      v90 = 0x8000000272392280;
      MEMORY[0x2743C4AD0](v24, v22);

      v54 = v89;
      v55 = v90;
      sub_2722032B4();
      swift_allocError();
      *v56 = v54;
      v56[1] = v55;
      return swift_willThrow();
    }
  }

  else
  {
    v25 = sub_2722C389C();
    (*(v6 + 16))(v9, v25, v5);
    v26 = sub_27237725C();
    v27 = sub_272377E7C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2721E4000, v26, v27, "Did not find a detection in StrategyLayerDefault:handleKeywordResult", v28, 2u);
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_27235C498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  (*(*a1 + 208))(v41, v9);
  if (!v41[1])
  {
    v33 = sub_2722C389C();
    (*(v5 + 16))(v8, v33, v4);
    v34 = sub_27237725C();
    v35 = sub_272377E7C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2721E4000, v34, v35, "No keyword detected when StrategyLayerDefault.isRepeatedKeywordInConsecutiveStride called", v36, 2u);
      MEMORY[0x2743C69C0](v36, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v12 = sub_2721F40F0(v41, &qword_2808819E0, &qword_27237D890);
  v13 = (*(*v1 + 248))(v12);
  if (!v13)
  {
    v37 = *(*v1 + 256);

    v37(v38);
    return 0;
  }

  v14 = v13;
  v40 = v4;
  type metadata accessor for VARequestContext(0);
  v15 = (*(*a1 + 152))();
  v16 = *(*v14 + 152);

  v18 = v16(v17);

  result = v15 - v18;
  if (v15 >= v18)
  {
    v20 = sub_2722310BC(result);
    v21 = sub_2722C389C();
    v22 = v40;
    (*(v5 + 16))(v11, v21, v40);

    v23 = sub_27237725C();
    v24 = sub_272377E7C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = MEMORY[0x277D85000];
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v20;
      *(v27 + 12) = 2048;
      *(v27 + 14) = (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig)) + 0x1A8))();
      _os_log_impl(&dword_2721E4000, v23, v24, "Elapsed time since last detection: %f secs, stride %f", v27, 0x16u);
      v28 = v27;
      v26 = MEMORY[0x277D85000];
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    v29 = (*(v5 + 8))(v11, v22);
    v30 = v20 <= (*((*v26 & **(v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig)) + 0x1A8))(v29);
    v31 = *(*v2 + 256);

    v31(v32);

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_27235C960()
{
  v1 = v0;
  v2 = sub_27237832C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v24 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v24 - v14;
  v16 = v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters;
  if ((*(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters + 32) & 1) == 0)
  {
    v17 = *(v16 + 16);
    v24[0] = *(v16 + 24);
    v24[1] = v17;
    v18 = *(*v0 + 368);
    v24[2] = *v0 + 368;
    v25 = v18;
    v18(v13);
    v19 = *(v3 + 48);
    v20 = v19(v15, 1, v2);
    sub_2721F40F0(v15, &qword_280882B68, &unk_2723863E0);
    if (v20 != 1)
    {
      v21 = sub_27237830C();
      v25(v21);
      result = v19(v12, 1, v2);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v23 = *(v3 + 8);
      v23(v5, v2);
      v23(v12, v2);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    sub_27237830C();
    (*(v3 + 56))(v9, 0, 1, v2);
    (*(*v1 + 376))(v9);
  }

  return 0;
}

uint64_t sub_27235CCA0()
{
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);

  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated, &qword_280882B68, &unk_2723863E0);
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock;
  v2 = sub_27237834C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_27235CD88()
{
  v0 = VAStrategyLayer.deinit();
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);

  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated, &qword_280882B68, &unk_2723863E0);
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_27235CE70()
{
  sub_27235CD88();

  return swift_deallocClassInstance();
}

uint64_t VAStrategyProviderDefault.__allocating_init(strideConfig:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_27235CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v8);
  v9 = *(v3 + 16);
  type metadata accessor for VAStrategyDefault(0);
  swift_allocObject();
  v10 = v9;
  v11 = swift_unknownObjectRetain();
  v12 = sub_27235D07C(v11, a2, v8, v10);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t VAStrategyProviderDefault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27235D07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_27237834C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_currentKeywordResult) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_prevKeywordResult) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd) = 0;
  v12 = v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  v14 = sub_27237832C();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  swift_beginAccess();
  *(v12 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig) = a4;
  v15 = a4;
  sub_27237833C();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock, v11, v8);
  v16 = sub_2722591B0();
  sub_272216BD8(a3);
  return v16;
}

uint64_t type metadata accessor for VAStrategyDefault(uint64_t a1)
{
  result = qword_2808934D8;
  if (!qword_2808934D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27235D2D0(uint64_t a1)
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

id sub_27235D4F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27235D54C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27235D5A4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27235D5F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27235D660()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27235D6AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27235D704()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_27235D75C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_27235D804(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v14 = &v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = a1;
  swift_beginAccess();
  *&v11[v12] = a2;
  swift_beginAccess();
  *&v11[v13] = a3;
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 1) = a5;
  v16 = a1;
  v17 = a2;
  v18 = a3;

  swift_beginAccess();
  *&v11[v15] = a6;

  v23.receiver = v11;
  v23.super_class = v6;
  v19 = objc_msgSendSuper2(&v23, sel_init);

  return v19;
}

id static VAConfiguration.buildForFlexibleA2AAttentionDetection(_:)(uint64_t a1)
{
  type metadata accessor for VAStrideConfiguration();
  v2 = static VAStrideConfiguration.forFlexibleA2Av3()();
  type metadata accessor for VAResultGeneratorConfiguration();
  v3 = static VAResultGeneratorConfiguration.buildForA2AAttentionDetection()();
  v4 = type metadata accessor for VAConfiguration();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v8 = &v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v2;
  swift_beginAccess();
  *&v5[v6] = 0;
  swift_beginAccess();
  *&v5[v7] = v3;
  swift_beginAccess();
  *v8 = xmmword_272387440;
  v10 = v2;
  v11 = v3;

  swift_beginAccess();
  *&v5[v9] = a1;

  v14.receiver = v5;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t (*sub_27235DC20(uint64_t (*a1)(void), uint64_t (*a2)(void)))(void)
{
  type metadata accessor for VAStrideConfiguration();
  v4 = a1();
  type metadata accessor for VAResultGeneratorConfiguration();
  v5 = a2();
  v6 = type metadata accessor for VAConfiguration();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v10 = &v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v4;
  swift_beginAccess();
  *&v7[v8] = 0;
  swift_beginAccess();
  *&v7[v9] = v5;
  swift_beginAccess();
  *v10 = xmmword_272387440;
  v12 = v4;
  v13 = v5;

  swift_beginAccess();
  *&v7[v11] = 0;

  v16.receiver = v7;
  v16.super_class = v6;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t sub_27235DDF4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = objc_allocWithZone(type metadata accessor for VAConfiguration());

  v5 = a2(v4);

  return v5;
}

uint64_t sub_27235DE64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  v6 = a2(a1);

  return v6;
}

uint64_t static VAConfiguration.buildForFixedWithCustomModel(modelFilepath:vadGated:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for VAFixedSpotterModelConfiguration();
  v6 = static VAFixedSpotterModelConfiguration.buildForFixedA2T(modelFilepath:modelConfigJsonFilepath:vadGated:)(a1, a2, 0, 0);
  if (!v2)
  {
    v7 = v6;
    v21 = 0;
    type metadata accessor for VAStrideConfiguration();
    v8 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v7);
    type metadata accessor for VAResultGeneratorConfiguration();
    v9 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v7, 1);
    v10 = type metadata accessor for VAConfiguration();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v14 = &v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v14 = 0;
    *(v14 + 1) = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v15 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v8;
    swift_beginAccess();
    *&v11[v12] = v7;
    swift_beginAccess();
    *&v11[v13] = v9;
    swift_beginAccess();
    *v14 = xmmword_272387440;
    v16 = v8;
    v17 = v7;
    v18 = v9;

    swift_beginAccess();
    *&v11[v15] = 0;

    v20.receiver = v11;
    v20.super_class = v10;
    v5 = objc_msgSendSuper2(&v20, sel_init);
  }

  return v5;
}

uint64_t sub_27235E0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VAFixedSpotterModelConfiguration();
  v5 = static VAFixedSpotterModelConfiguration.buildForFixedA2TDefault(vadGated:)();
  if (!v2)
  {
    v6 = v5;
    v20 = 0;
    type metadata accessor for VAStrideConfiguration();
    v7 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v6);
    type metadata accessor for VAResultGeneratorConfiguration();
    v8 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v6, a2);
    v9 = type metadata accessor for VAConfiguration();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v13 = &v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v13 = 0;
    *(v13 + 1) = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v14 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v7;
    swift_beginAccess();
    *&v10[v11] = v6;
    swift_beginAccess();
    *&v10[v12] = v8;
    swift_beginAccess();
    *v13 = xmmword_272387440;
    v15 = v7;
    v16 = v6;
    v17 = v8;

    swift_beginAccess();
    *&v10[v14] = 0;

    v19.receiver = v10;
    v19.super_class = v9;
    v4 = objc_msgSendSuper2(&v19, sel_init);
  }

  return v4;
}

uint64_t (*sub_27235E2C4(uint64_t (*a1)(void)))(void)
{
  type metadata accessor for VAStrideConfiguration();
  v2 = a1();
  v3 = type metadata accessor for VAConfiguration();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v7 = &v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v2;
  swift_beginAccess();
  *&v4[v5] = 0;
  swift_beginAccess();
  *&v4[v6] = 0;
  swift_beginAccess();
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = v2;

  swift_beginAccess();
  *&v4[v8] = 0;

  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

unint64_t static VAConfiguration.buildFromConfigFile(jsonFile:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAConfiguration();
  v5 = sub_27235FFD4(&qword_280883328, v4, type metadata accessor for VAConfiguration, &protocol conformance descriptor for VAConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x8000000272389D30;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000023;
      v7[1] = 0x8000000272389D30;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

uint64_t static VAConfiguration.buildForFixedBreakthrough()()
{
  v1 = type metadata accessor for VAFixedSpotterModelConfiguration();
  v2 = sub_2721F7EE4();
  v3 = static VAFixedSpotterModelConfiguration.buildForFixedA2TBreakthrough(vadGated:)(v2 & 1);
  if (!v0)
  {
    v4 = v3;
    v19 = 0;
    type metadata accessor for VAStrideConfiguration();
    v5 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v4);
    type metadata accessor for VAResultGeneratorConfiguration();
    v6 = sub_27222CD4C();
    v7 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v4, v6);
    v8 = type metadata accessor for VAConfiguration();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v11 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v12 = &v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v12 = 0;
    *(v12 + 1) = 0;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v9[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v5;
    swift_beginAccess();
    *&v9[v10] = v4;
    swift_beginAccess();
    *&v9[v11] = v7;
    swift_beginAccess();
    *v12 = xmmword_272387440;
    v14 = v5;
    v15 = v4;
    v16 = v7;

    swift_beginAccess();
    *&v9[v13] = 0;

    v18.receiver = v9;
    v18.super_class = v8;
    v1 = objc_msgSendSuper2(&v18, sel_init);
  }

  return v1;
}

id static VAConfiguration.buildForSpeechApiV2()()
{
  type metadata accessor for VAStrideConfiguration();
  v0 = static VAStrideConfiguration.forSpeechApiSpotterV2()();
  v1 = type metadata accessor for VAConfiguration();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v5 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v0;
  swift_beginAccess();
  *&v2[v3] = 0;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 1) = 0;
  v7 = v0;

  swift_beginAccess();
  *&v2[v6] = 0;

  v10.receiver = v2;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

void *sub_27235E898()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *result) + 0xD8))();

    return (v4 & 1);
  }

  return result;
}

void *sub_27235E928()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *result) + 0xF0))();

    return (v4 & 1);
  }

  return result;
}

unint64_t sub_27235E9B8()
{
  v1 = *v0;
  v2 = 0x6F43656469727473;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x6E6F436465786966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_27235EA6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27236023C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27235EA94(uint64_t a1)
{
  v2 = sub_27235FD58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27235EAD0(uint64_t a1)
{
  v2 = sub_27235FD58();

  return MEMORY[0x2821FE720](a1, v2);
}

char *VAConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883330, &qword_272387460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v35 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  v30 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v34 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v9 = &v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v9 = 0;
  v9[1] = 0;
  v33 = v9;
  v31 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v32 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  sub_27220300C(a1, a1[3]);
  sub_27235FD58();
  sub_2723787AC();
  if (v2)
  {
    v10 = v34;
    sub_2722039C8(a1);

    type metadata accessor for VAConfiguration();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v29 = v6;
  type metadata accessor for VAStrideConfiguration();
  LOBYTE(v39) = 0;
  sub_27235FFD4(&qword_280883338, 255, type metadata accessor for VAStrideConfiguration, &protocol conformance descriptor for VAStrideConfiguration);
  result = sub_27237848C();
  v12 = v34;
  if (v40)
  {
    v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
    *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v40;
    type metadata accessor for VAFixedSpotterModelConfiguration();
    LOBYTE(v40) = 1;
    sub_27235FFD4(&qword_280882B58, 255, type metadata accessor for VAFixedSpotterModelConfiguration, &protocol conformance descriptor for VAFixedSpotterModelConfiguration);
    sub_27237848C();
    v28[1] = v13;
    v14 = v39;
    v15 = v5;
    v16 = v35;
    swift_beginAccess();
    v17 = *&v3[v16];
    *&v3[v16] = v14;

    type metadata accessor for VAResultGeneratorConfiguration();
    LOBYTE(v39) = 2;
    sub_27235FFD4(&qword_280881C58, 255, type metadata accessor for VAResultGeneratorConfiguration, &protocol conformance descriptor for VAResultGeneratorConfiguration);
    sub_27237848C();
    v18 = v38;
    swift_beginAccess();
    v19 = *&v3[v12];
    *&v3[v12] = v18;

    LOBYTE(v38) = 3;
    result = sub_27237843C();
    v21 = v29;
    if (v20)
    {
      v22 = result;
      v23 = v20;
      v24 = v33;
      swift_beginAccess();
      *v24 = v22;
      v24[1] = v23;

      type metadata accessor for VAAttentionDetectionConfiguration();
      v37 = 4;
      sub_27235FFD4(&qword_280883340, 255, type metadata accessor for VAAttentionDetectionConfiguration, &protocol conformance descriptor for VAAttentionDetectionConfiguration);
      sub_27237848C();
      (*(v21 + 8))(v8, v15);
      v25 = v41;
      v26 = v32;
      swift_beginAccess();
      *&v3[v26] = v25;

      v27 = type metadata accessor for VAConfiguration();
      v36.receiver = v3;
      v36.super_class = v27;
      v3 = objc_msgSendSuper2(&v36, sel_init);
      sub_2722039C8(a1);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27235F108(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883348, &qword_272387468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_27220300C(a1, a1[3]);
  sub_27235FD58();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v9);
  v18 = v11;
  v20 = 0;
  type metadata accessor for VAStrideConfiguration();
  sub_27235FFD4(&qword_280883350, 255, type metadata accessor for VAStrideConfiguration, &protocol conformance descriptor for VAStrideConfiguration);
  sub_2723785DC();
  if (v2)
  {
  }

  else
  {

    v12 = (*((*v10 & *v3) + 0xA0))();
    v18 = v12;
    v20 = 1;
    sub_2721F065C(&qword_280883358, &qword_272387470);
    sub_27235FDAC();
    sub_2723785DC();

    v14 = (*((*v10 & *v3) + 0xD0))();
    v18 = v14;
    v20 = 2;
    sub_2721F065C(&qword_280883368, &qword_272387478);
    sub_27235FE64();
    sub_2723785DC();

    v18 = (*((*v10 & *v3) + 0xE8))();
    v19 = v15;
    v20 = 3;
    sub_2721F065C(&qword_280881828, &qword_27237BF40);
    sub_27228F590();
    sub_2723785DC();

    v18 = (*((*v10 & *v3) + 0x118))(v16);
    v20 = 4;
    sub_2721F065C(&qword_280883378, &qword_272387480);
    sub_27235FF1C();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_27235F574(uint64_t a1, uint64_t a2)
{
  sub_27235FFD4(&qword_280883328, a2, type metadata accessor for VAConfiguration, &protocol conformance descriptor for VAConfiguration);
  result = sub_27235F64C(v2);
  if (v5)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      v6 = result;
      v7 = v4;
      sub_27237836C();
      sub_27222F3E8(v6, v7, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_27235F64C(uint64_t a1)
{
  v1 = sub_27237788C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272376AFC();
  MEMORY[0x28223BE20](v2);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_27235FFD4(&qword_280881C78, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAConfiguration();
  sub_27235FFD4(&qword_280883388, v3, type metadata accessor for VAConfiguration, &protocol conformance descriptor for VAConfiguration);
  v4 = sub_272376B1C();
  v6 = v5;
  sub_27237787C();
  v7 = sub_27237784C();
  if (v8)
  {
    v9 = v7;
    sub_2721F05C8(v4, v6);

    return v9;
  }

  else
  {
    sub_2721F05C8(v4, v6);

    return 0;
  }
}

id VAConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27235FAA4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 344))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_27235FB3C(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v5 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  swift_beginAccess();
  *&v2[v4] = a1;
  v6 = *(*a1 + 272);

  v8 = v6(v7);
  v10 = v9;
  swift_beginAccess();
  *v5 = v8;
  v5[1] = v10;

  type metadata accessor for VAStrideConfiguration();
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = static VAStrideConfiguration.forTasrConfig(tasrConfig:)();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_27235FC80(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v4 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  type metadata accessor for VAStrideConfiguration();

  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = static VAStrideConfiguration.forSpeechAPIConfig()();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_27235FD58()
{
  result = qword_2808934F0[0];
  if (!qword_2808934F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808934F0);
  }

  return result;
}

unint64_t sub_27235FDAC()
{
  result = qword_280883360;
  if (!qword_280883360)
  {
    sub_2721F214C(&qword_280883358, &qword_272387470);
    sub_27235FFD4(&qword_280882B60, 255, type metadata accessor for VAFixedSpotterModelConfiguration, &protocol conformance descriptor for VAFixedSpotterModelConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883360);
  }

  return result;
}

unint64_t sub_27235FE64()
{
  result = qword_280883370;
  if (!qword_280883370)
  {
    sub_2721F214C(&qword_280883368, &qword_272387478);
    sub_27235FFD4(&qword_280881C90, 255, type metadata accessor for VAResultGeneratorConfiguration, &protocol conformance descriptor for VAResultGeneratorConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883370);
  }

  return result;
}

unint64_t sub_27235FF1C()
{
  result = qword_280883380;
  if (!qword_280883380)
  {
    sub_2721F214C(&qword_280883378, &qword_272387480);
    sub_27235FFD4(&qword_280882528, 255, type metadata accessor for VAAttentionDetectionConfiguration, &protocol conformance descriptor for VAAttentionDetectionConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883380);
  }

  return result;
}

uint64_t sub_27235FFD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_272360138()
{
  result = qword_280893700[0];
  if (!qword_280893700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280893700);
  }

  return result;
}

unint64_t sub_272360190()
{
  result = qword_280893810;
  if (!qword_280893810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893810);
  }

  return result;
}

unint64_t sub_2723601E8()
{
  result = qword_280893818[0];
  if (!qword_280893818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280893818);
  }

  return result;
}

uint64_t sub_27236023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656469727473 && a2 == 0xEC0000006769666ELL;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436465786966 && a2 == 0xEB00000000676966 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238E510 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389A30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723924B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_272360468()
{
  v2 = sub_27237728C();
  *&v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v0;
  sub_2722CB8B0();
  sub_2722CB8C8();
  sub_2722CB8D0(v66);
  if (v1)
  {
    return v4;
  }

  v5 = v54;
  v51 = v2;
  v52 = v4;
  v64[8] = v66[8];
  v64[9] = v66[9];
  v65 = v67;
  v64[4] = v66[4];
  v64[5] = v66[5];
  v64[6] = v66[6];
  v64[7] = v66[7];
  v64[0] = v66[0];
  v64[1] = v66[1];
  v64[2] = v66[2];
  v64[3] = v66[3];
  sub_2722CB8BC();
  sub_2722CB8C8();
  sub_2722CB8D0(&v68);
  v62[8] = v76;
  v62[9] = v77;
  v63 = v78;
  v62[4] = v72;
  v62[5] = v73;
  v62[6] = v74;
  v62[7] = v75;
  v62[0] = v68;
  v62[1] = v69;
  v62[2] = v70;
  v62[3] = v71;
  sub_2722CB8C8();
  sub_2722CB8D0(&v79);
  sub_2722CB8C8();
  sub_2722CB8D0(v80);
  v60[8] = v80[8];
  v60[9] = v80[9];
  v61 = v81;
  v60[4] = v80[4];
  v60[5] = v80[5];
  v60[6] = v80[6];
  v60[7] = v80[7];
  v60[0] = v80[0];
  v60[1] = v80[1];
  v60[2] = v80[2];
  v60[3] = v80[3];
  sub_2722CB8C8();
  sub_2722CB8D0(v82);
  v50 = 0;
  v58[7] = v82[7];
  v58[8] = v82[8];
  v58[9] = v82[9];
  v58[4] = v82[4];
  v58[5] = v82[5];
  v58[6] = v82[6];
  v58[0] = v82[0];
  v58[1] = v82[1];
  v58[2] = v82[2];
  v58[3] = v82[3];
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v90 = v74;
  v84 = v68;
  v85 = v69;
  v59 = v83;
  v94 = v78;
  v86 = v70;
  result = sub_2722CB4EC();
  if ((result & 0x8000000000000000) == 0)
  {
    v7 = v53;
    v8 = v5;
    if (result)
    {
      v9 = result;
      v10 = sub_272377B5C();
      *(v10 + 16) = v9;
      bzero((v10 + 32), 4 * v9);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v49 = v10;
    v57 = v10;
    v11 = (*v7 + 832);
    v12 = *v11;
    v13 = v11;
    v14 = *((*v11)() + 16);

    if (v14)
    {
      v16 = 0;
      v45 = (v8 + 8);
      v46 = (v8 + 16);
      v17 = 0.0;
      v4 = MEMORY[0x277D84F90];
      *(&v18 + 1) = 2;
      v54 = xmmword_27237AF80;
      *&v18 = 134217984;
      v44 = v18;
      v47 = v13;
      v48 = 0;
      while (1)
      {
        result = (v12)(v15);
        if (v16 >= *(result + 16))
        {
          break;
        }

        v22 = *(result + 8 * v16 + 32);

        sub_2721F065C(&qword_280881848, &unk_27237C250);
        v23 = swift_allocObject();
        v24 = v53;
        *(v23 + 16) = v54;
        v25 = *(*v24 + 880);
        *(v23 + 32) = v25();
        sub_2721F42A0(v64, v23);

        v26 = v50;
        sub_2722CB800(v24[56]);
        if (v26)
        {

          return v4;
        }

        sub_2721FEE10(v62, &v57);
        v49 = v57;
        sub_2721F42A0(v60, v57);
        sub_2721F42A0(v58, v22);

        sub_2722CB800(v53[46]);
        sub_2721F065C(&qword_280883390, &qword_272387620);
        v27 = sub_2722CB3F0(sub_272360D80);
        v50 = 0;
        v28 = v55;
        v17 = v17 + v56;
        if (!v55 || (v27 = (v25)(v27), v27 == v28))
        {
          v16 = v48 + 1;
          v43 = *((v12)(v27) + 16);

          if (v16 >= v43)
          {
            goto LABEL_28;
          }

          v48 = v16;
        }

        else
        {
          v29 = (*(*v53 + 544))();
          if (*(v29 + 16) && (v30 = sub_272200404(v28), (v31 & 1) != 0))
          {
            v32 = (*(v29 + 56) + 16 * v30);
            v33 = *v32;
            v34 = v32[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_2721FFBF8(0, *(v4 + 2) + 1, 1, v4);
            }

            v19 = v53;
            v36 = *(v4 + 2);
            v35 = *(v4 + 3);
            if (v36 >= v35 >> 1)
            {
              v4 = sub_2721FFBF8((v35 > 1), v36 + 1, 1, v4);
            }

            *(v4 + 2) = v36 + 1;
            v37 = &v4[16 * v36];
            *(v37 + 4) = v33;
            *(v37 + 5) = v34;
          }

          else
          {

            v38 = sub_2722C389C();
            v39 = v51;
            (*v46)(v52, v38, v51);
            v40 = sub_27237725C();
            v41 = sub_272377E8C();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = v44;
              *(v42 + 4) = v28;
              _os_log_impl(&dword_2721E4000, v40, v41, "No symbol for %ld", v42, 0xCu);
              MEMORY[0x2743C69C0](v42, -1, -1);
            }

            (*v45)(v52, v39);
            v19 = v53;
          }

          v20 = (*(*v19 + 888))(v28);
          v21 = *((v12)(v20) + 16);

          v16 = v48;
          if (v48 >= v21)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_28:

    return v4;
  }

LABEL_31:
  __break(1u);
  return result;
}

float *sub_272360D80@<X0>(float *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result && a2)
  {
    v3 = *result;
    if (a2 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v6 = 4 * a2 - 4;
      v7 = 1;
      v8 = *result;
      do
      {
        v9 = result[v7];
        if (v8 < v9)
        {
          v4 = v7;
        }

        ++v7;
        if (v8 < v9)
        {
          v3 = v9;
          v8 = v9;
        }

        v6 -= 4;
      }

      while (v6);
    }

    *a3 = v4;
    *(a3 + 8) = v3;
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v5 = 0xD00000000000001BLL;
    v5[1] = 0x8000000272392510;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_272360E40()
{
}

void *VATransducer.deinit()
{
  v0 = VACTCEncoder.deinit();

  return v0;
}

uint64_t VATransducer.__deallocating_deinit()
{
  VACTCEncoder.deinit();

  return swift_deallocClassInstance();
}

char *sub_272360FE4(char *a1)
{
  v3 = v1;
  v5 = a1;
  v6 = (*(*a1 + 392))(a1);
  if (!v7)
  {
    v21 = 0x8000000272392530;
    sub_2722032B4();
    swift_allocError();
    v23 = 0xD000000000000021;
LABEL_7:
    *v22 = v23;
    v22[1] = v21;
    swift_willThrow();

    goto LABEL_8;
  }

  v8 = v7;
  v39 = v6;
  v5 = a1;
  v9 = (*(*a1 + 416))();
  if (!v10)
  {

    v21 = 0x8000000272392560;
    sub_2722032B4();
    swift_allocError();
    v23 = 0xD000000000000022;
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v10;
  v48 = v3;
  v13 = type metadata accessor for VAEspressoUtils();
  v38 = *(*a1 + 344);
  v14 = v38(&v45);
  v44 = v45;
  v15 = *(*a1 + 368);
  v16 = v15(v14);
  v18 = v17;
  v19 = sub_2721F7EE4();
  v20 = v16;
  v5 = v13;
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v11, v12, &v44, v20, v18, v19 & 1, v46);
  if (!v2)
  {

    v26 = v48;
    v27 = v47[0];
    v48[25] = v46[2];
    v26[26] = v27;
    *(v26 + 425) = *(v47 + 9);
    v28 = v46[1];
    v26[23] = v46[0];
    v26[24] = v28;
    v29 = (v38)(&v41, v25);
    v40 = v41;
    v30 = v15(v29);
    v32 = v31;
    v33 = sub_2721F7EE4();
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v39, v8, &v40, v30, v32, v33 & 1, v42);

    v34 = *v43;
    v26[30] = v42[2];
    v26[31] = v34;
    *(v26 + 505) = *&v43[9];
    v35 = v42[1];
    v26[28] = v42[0];
    v26[29] = v35;

    v36 = sub_2721F7EE4();
    v5 = sub_2721F7F44(a1, v36 & 1);
    v37 = *(*v5 + 864);

    v37(0x5F7265646F636E65, 0xEB0000000074756FLL);

    return v5;
  }

LABEL_8:
  type metadata accessor for VATransducer();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_272361838()
{
  qword_2808938A0 = objc_alloc_init(SiriTTSService_TTSAXResourceManager);

  return MEMORY[0x2821F96F8]();
}

double ConvertMachTimeToSeconds(unint64_t a1)
{
  if (qword_2808938C0 != -1)
  {
    dispatch_once(&qword_2808938C0, &unk_288190658);
  }

  return *&qword_2808938B0 * a1;
}

double sub_272362204()
{
  if (!mach_timebase_info(&dword_2808938B8))
  {
    LODWORD(result) = dword_2808938B8;
    LODWORD(v1) = *algn_2808938BC;
    result = *&result / v1 / 1000000000.0;
    qword_2808938B0 = *&result;
  }

  return result;
}

void sub_27236259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2723625BC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_272362BC4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_272362C20(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  v5 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 40) + 16))())
  {
    if (*(*(*(a1 + 48) + 8) + 24) < 0x3E8uLL)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = [v19 givenName];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [v19 givenName];
        [v6 setValue:v9 forKey:@"\\contact-first"];
      }

      v10 = [v19 familyName];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v19 familyName];
        [v6 setValue:v12 forKey:@"\\contact-last"];
      }

      v13 = [v19 middleName];
      v14 = [v13 length];

      if (v14)
      {
        v15 = [v19 middleName];
        [v6 setValue:v15 forKey:@"\\contact-middle"];
      }

      v16 = [v19 nickname];
      v17 = [v16 length];

      if (v17)
      {
        v18 = [v19 nickname];
        [v6 setValue:v18 forKey:@"\\contact-nickname"];
      }

      if ([v6 count])
      {
        [*(a1 + 32) addObject:v6];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_272362E30(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if (a3 == 2)
  {
    context = v11;
    v37 = v10;
    v38 = v9;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v10;
    v30 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v41;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v40 + 1) + 8 * i);
          ++*(*(*(a1 + 48) + 8) + 24);
          v48 = @"\\contact-nickname";
          v49 = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:{1, context}];
          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            [*(a1 + 32) addObject:v35];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v31);
    }

    goto LABEL_30;
  }

  if (a3 == 1)
  {
    context = v11;
    v37 = v10;
    v38 = v9;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(obj);
          }

          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            v16 = *(*(&v44 + 1) + 8 * j);
            v17 = objc_alloc_init(MEMORY[0x277CCAC08]);
            v18 = [v17 personNameComponentsFromString:v16];
            v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v20 = [v18 givenName];
            v21 = [v20 length];

            if (v21)
            {
              v22 = [v18 givenName];
              [v19 setValue:v22 forKey:@"\\contact-first"];
            }

            v23 = [v18 middleName];
            v24 = [v23 length];

            if (v24)
            {
              v25 = [v18 middleName];
              [v19 setValue:v25 forKey:@"\\contact-middle"];
            }

            v26 = [v18 familyName];
            v27 = [v26 length];

            if (v27)
            {
              v28 = [v18 familyName];
              [v19 setValue:v28 forKey:@"\\contact-last"];
            }

            ++*(*(*(a1 + 48) + 8) + 24);
            [*(a1 + 32) addObject:v19];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v13);
    }

LABEL_30:
    v10 = v37;

    v9 = v38;
    v11 = context;
  }

  objc_autoreleasePoolPop(v11);
}

void sub_272363208(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_AccessToContac.isa);
    v4 = v5;
  }

  if (v4)
  {
    NSLog(&stru_288190A08.isa, v4);
    v4 = v5;
  }
}

void sub_27236385C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _fetchContactsWithKeepGoing:v3];
  v4[2]();
}

void *sub_2723638BC(uint64_t a1)
{
  result = [qword_2808938D8 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = qword_2808938D8;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

void sub_272363924(uint64_t a1)
{
  v1 = qword_2808938D0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_272363D08;
  block[3] = &unk_279E40760;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

void sub_2723639B4(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    printf("Timed out waiting on %s", [*(a1 + 32) UTF8String]);
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_272363A34(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_272363B70;
  v5[3] = &unk_279E406C0;
  v2 = *(a1 + 56);
  v9 = *(a1 + 64);
  v3 = *(a1 + 32);
  v11 = *(a1 + 80);
  v4 = *(a1 + 72);
  v6 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  (*(v2 + 16))(v2, v5);
}

uint64_t sub_272363B14(void *a1)
{
  v2 = a1[5];
  if ((*(a1[6] + 16))())
  {
    v3 = a1[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_272363B70(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_272363C30;
  v3[3] = &unk_279E40698;
  v7 = *(a1 + 72);
  v6 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

void sub_272363C30(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3 - *(a1 + 56);

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    printf("Fetch completed too late (%.2fsms) for %s\n", v4 * 1000.0, [*(a1 + 32) UTF8String]);
  }

  else
  {
    printf("Fetch completed for %s in %.2fms\n", [*(a1 + 32) UTF8String], v4 * 1000.0);
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void *sub_272363D08(uint64_t a1)
{
  printf("Marking fetch available for %s", [*(a1 + 32) UTF8String]);
  result = [qword_2808938D8 containsObject:*(a1 + 32)];
  if (result)
  {
    v3 = qword_2808938D8;

    return MEMORY[0x2821F9670](v3, sel_removeObject_);
  }

  return result;
}

uint64_t sub_272363D88()
{
  v0 = dispatch_queue_create("com.apple.embeddedspeech.FetchSerializer", 0);
  v1 = qword_2808938D0;
  qword_2808938D0 = v0;

  qword_2808938D8 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

void sub_272363E94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_272363EE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_272363EE8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 49);
    v3 -= 9;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_2723640B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2723660D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, _Unwind_Exception *exception_object)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_272366344(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_272367460();
}

BOOL sub_27236638C(uint64_t a1, int a2, char *a3, char *a4, int a5, int a6, _DWORD *a7, int *a8, float a9)
{
  v9 = *(a1 + 64);
  if (v9 >= a2)
  {
    __assert_rtn("VerifySilenceAfter", "OnlineFstSpottingDecoder.hpp", 437, "frame_num > speech_frame_offset");
  }

  v11 = a4;
  v12 = a3;
  if (a4 != a3)
  {
    v121 = a2;
    v122 = a5;
    v123 = a7;
    v124 = a8;
    v125 = a6;
    v14 = (a4 - a3) >> 2;
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v16 + v15;
    v18 = (v16 + v15) >> 10;
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = v20 - v19;
    if (v20 == v19)
    {
      v24 = 0;
      v22 = v16 >> 10;
    }

    else
    {
      v22 = v16 >> 10;
      v23 = *(v19 + 8 * (*(a1 + 40) >> 10)) + 4 * (*(a1 + 40) & 0x3FFLL);
      if (*(v19 + 8 * v18) + 4 * (v17 & 0x3FF) == v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = ((4 * (v17 & 0x3FF)) >> 2) + ((8 * v18 - 8 * v22) << 7) - ((v23 - *(v19 + 8 * v22)) >> 2);
      }
    }

    if (v24 < v15 - v24)
    {
      if (v14 > v16)
      {
        v25 = v20 - v19;
        if (v20 == v19)
        {
          v26 = 0;
        }

        else
        {
          v26 = (v21 << 7) - 1;
        }

        if (v20 == v19)
        {
          v27 = v14 - v16 + 1;
        }

        else
        {
          v27 = v14 - v16;
        }

        if ((v27 & 0x3FF) != 0)
        {
          v28 = (v27 >> 10) + 1;
        }

        else
        {
          v28 = v27 >> 10;
        }

        v29 = v26 - v17;
        v30 = (v26 - v17) >> 10;
        if (v28 >= v29 >> 10)
        {
          v31 = v30;
        }

        else
        {
          v31 = v28;
        }

        v126 = v14;
        if (v28 <= v29 >> 10)
        {
          for (*(a1 + 40) = v16 + (v31 << 10); v31; --v31)
          {
            v49 = *(a1 + 24);
            v130.n128_u64[0] = *(v49 - 8);
            *(a1 + 24) = v49 - 8;
            sub_272367554((a1 + 8), &v130);
          }
        }

        else
        {
          v32 = v28 - v31;
          v33 = *(a1 + 32) - *(a1 + 8);
          if (v28 - v31 > (v33 >> 3) - (v25 >> 3))
          {
            v34 = v25 >> 3;
            if (v33 >> 2 <= v32 + v34)
            {
              v35 = v32 + v34;
            }

            else
            {
              v35 = v33 >> 2;
            }

            v132 = a1 + 8;
            if (v35)
            {
              sub_272367404(v35);
            }

            v130 = 0uLL;
            v131 = 0uLL;
            operator new();
          }

          if (v32)
          {
            if (v19 != *(a1 + 8))
            {
              operator new();
            }

            operator new();
          }

          for (*(a1 + 40) = v16 + (v31 << 10); v31; --v31)
          {
            v51 = *(a1 + 24);
            v130.n128_u64[0] = *(v51 - 8);
            *(a1 + 24) = v51 - 8;
            sub_272367554((a1 + 8), &v130);
          }
        }

        v16 = *(a1 + 40);
        v19 = *(a1 + 16);
        v20 = *(a1 + 24);
        v22 = v16 >> 10;
        v14 = v126;
      }

      v52 = (v19 + 8 * v22);
      if (v20 == v19)
      {
        v53 = 0;
      }

      else
      {
        v53 = *v52 + 4 * (v16 & 0x3FF);
      }

      if (v14 > v24)
      {
        v54 = &v12[4 * (v14 - v24)];
        if (v24 < v14 >> 1)
        {
          v54 = &v11[-4 * v24];
        }

        if (v54 == v12)
        {
          v55 = v53;
          v56 = v52;
        }

        else
        {
          v57 = *(a1 + 48);
          v58 = *v52;
          v59 = v54;
          v56 = v52;
          v55 = v53;
          do
          {
            if (v55 == v58)
            {
              v60 = *--v56;
              v58 = v60;
              v55 = v60 + 4096;
            }

            v61 = *(v59 - 1);
            v59 -= 4;
            *(v55 - 1) = v61;
            v55 -= 4;
            --v16;
            ++v57;
          }

          while (v59 != v12);
          *(a1 + 40) = v16;
          *(a1 + 48) = v57;
        }

        v12 = v54;
        v14 = v24;
        if (!v24)
        {
          goto LABEL_145;
        }

        goto LABEL_83;
      }

      v55 = v53;
      v56 = (v19 + 8 * v22);
      if (v14)
      {
LABEL_83:
        v120 = v24;
        v62 = v14;
        v63 = sub_272366F18(v52, v53, v14);
        v65 = v64;
        if (v53 != v64)
        {
          v66 = *(a1 + 40);
          v67 = *v56;
          v68 = v63;
          v69 = v64;
          do
          {
            if (v55 == v67)
            {
              v70 = *--v56;
              v67 = v70;
              v55 = v70 + 4096;
            }

            if (v69 == *v68)
            {
              v71 = *--v68;
              v69 = (v71 + 4096);
            }

            v72 = *(v69 - 1);
            v69 -= 4;
            *(v55 - 1) = v72;
            v55 -= 4;
            v66 = vaddq_s64(v66, xmmword_2723876B0);
          }

          while (v69 != v53);
          *(a1 + 40) = v66;
        }

        v73.n128_u64[0] = v52;
        v73.n128_u64[1] = v53;
        if (v62 < v120)
        {
          v74 = v63;
          v128 = v73;
          v75 = sub_272366F18(v52, v53, v120);
          v130 = v128;
          sub_272366F6C(v74, v65, v75, v76, &v130);
          v53 = v130.n128_u64[1];
          v73.n128_u64[0] = v130.n128_u64[0];
        }

        if (v12 != v11)
        {
          v78 = (v73.n128_u64[0] + 8);
          v77 = *v73.n128_u64[0];
          while (1)
          {
            v79 = v77 - v53 + 4096;
            if ((v11 - v12) >> 2 >= v79 >> 2)
            {
              v80 = v79 >> 2;
            }

            else
            {
              v80 = (v11 - v12) >> 2;
            }

            if (v80)
            {
              memmove(v53, v12, 4 * v80);
            }

            v12 += 4 * v80;
            if (v12 == v11)
            {
              break;
            }

            v81 = *v78++;
            v77 = v81;
            v53 = v81;
          }
        }
      }

LABEL_145:
      v111 = *(a1 + 48) - *(a1 + 56);
      if (v111 < 1)
      {
        v9 = *(a1 + 64);
      }

      else
      {
        v112 = v111 + 1;
        do
        {
          *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_2723876C0);
          sub_272366EC0(a1 + 8);
          v9 = *(a1 + 64) + 1;
          *(a1 + 64) = v9;
          --v112;
        }

        while (v112 > 1);
      }

      a6 = v125;
      a7 = v123;
      a8 = v124;
      a2 = v121;
      a5 = v122;
      goto LABEL_151;
    }

    v36 = (v21 << 7) - 1;
    v37 = v20 - v19;
    if (v20 == v19)
    {
      v36 = 0;
    }

    v38 = v36 - v17;
    v39 = v14 >= v38;
    v40 = v14 - v38;
    if (v40 != 0 && v39)
    {
      if (v20 == v19)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = v40;
      }

      if ((v41 & 0x3FF) != 0)
      {
        v42 = (v41 >> 10) + 1;
      }

      else
      {
        v42 = v41 >> 10;
      }

      if (v42 >= v22)
      {
        v43 = v22;
      }

      else
      {
        v43 = v42;
      }

      v127 = v14;
      if (v42 <= v22)
      {
        for (*(a1 + 40) = v16 - (v43 << 10); v43; --v43)
        {
          v50 = *(a1 + 16);
          v130.n128_u64[0] = *v50;
          *(a1 + 16) = v50 + 1;
          sub_272367300((a1 + 8), &v130);
        }
      }

      else
      {
        v44 = v42 - v43;
        v45 = *(a1 + 32) - *(a1 + 8);
        if (v44 > (v45 >> 3) - (v37 >> 3))
        {
          v46 = v45 >> 2;
          if (v46 <= v44 + (v37 >> 3))
          {
            v47 = v44 + (v37 >> 3);
          }

          else
          {
            v47 = v46;
          }

          v48 = (v37 >> 3) - v43;
          v132 = a1 + 8;
          if (v47)
          {
            sub_272367404(v47);
          }

          v130.n128_u64[0] = 0;
          v130.n128_u64[1] = 8 * v48;
          v131 = 8 * v48;
          operator new();
        }

        if (v44)
        {
          if (*(a1 + 32) != *(a1 + 24))
          {
            operator new();
          }

          operator new();
        }

        for (*(a1 + 40) = v16 - (v43 << 10); v43; --v43)
        {
          v82 = *(a1 + 16);
          v130.n128_u64[0] = *v82;
          *(a1 + 16) = v82 + 1;
          sub_272367300((a1 + 8), &v130);
        }
      }

      v15 = *(a1 + 48);
      v19 = *(a1 + 16);
      v20 = *(a1 + 24);
      v17 = *(a1 + 40) + v15;
      v18 = v17 >> 10;
      v14 = v127;
    }

    v83 = (v19 + 8 * v18);
    if (v20 == v19)
    {
      v84 = 0;
    }

    else
    {
      v84 = &(*v83)[4 * (v17 & 0x3FF)];
    }

    v85 = v15 - v24;
    if (v85 >= v14)
    {
      v89 = v84;
      v90 = (v19 + 8 * v18);
      if (!v14)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (v85 >= v14 >> 1)
      {
        v86 = v14;
      }

      else
      {
        v86 = 0;
      }

      if (v85 >= v14 >> 1)
      {
        v87 = v11;
      }

      else
      {
        v87 = v12;
      }

      v88 = &v87[4 * (v85 - v86)];
      if (v88 == v11)
      {
        v89 = v84;
        v90 = v83;
      }

      else
      {
        v91 = *v83;
        v92 = v88;
        v90 = v83;
        v89 = v84;
        do
        {
          *v89 = *v92;
          v89 += 4;
          if (v89 - v91 == 4096)
          {
            v93 = v90[1];
            ++v90;
            v91 = v93;
            v89 = v93;
          }

          v92 += 4;
          ++v15;
        }

        while (v92 != v11);
        *(a1 + 48) = v15;
      }

      v11 = v88;
      v14 = v85;
      if (!v85)
      {
        goto LABEL_145;
      }
    }

    v129 = v14;
    v94 = sub_2723670AC(v83, v84, v14);
    if (v84 != v95)
    {
      v96 = *v90;
      v97 = v94;
      v98 = v95;
      do
      {
        *v89 = *v98;
        v89 += 4;
        if (v89 - v96 == 4096)
        {
          v99 = v90[1];
          ++v90;
          v96 = v99;
          v89 = v99;
        }

        v98 += 4;
        if (&v98[-*v97] == 4096)
        {
          v100 = v97[1];
          ++v97;
          v98 = v100;
        }

        ++v15;
      }

      while (v98 != v84);
      *(a1 + 48) = v15;
    }

    if (v129 < v85)
    {
      v101 = v94;
      v102 = v95;
      v103 = sub_2723670AC(v83, v84, v85);
      sub_272367104(&v130, v103, v104, v101, v102, v83, v84);
      v84 = *(&v131 + 1);
      v83 = v131;
    }

    if (v11 != v12)
    {
      v107 = *v83;
      v106 = (v83 - 1);
      v105 = v107;
      while (1)
      {
        v108 = v84 - v105;
        if ((v11 - v12) >> 2 >= v108 >> 2)
        {
          v109 = v108 >> 2;
        }

        else
        {
          v109 = (v11 - v12) >> 2;
        }

        v11 -= 4 * v109;
        if (v109)
        {
          memmove(&v84[-4 * v109], v11, 4 * v109);
        }

        if (v11 == v12)
        {
          break;
        }

        v110 = *v106--;
        v105 = v110;
        v84 = v110 + 4096;
      }
    }

    goto LABEL_145;
  }

LABEL_151:
  LODWORD(v113) = a2 - v9;
  v114 = *(a1 + 48);
  if (v114 - (a2 - v9) < a6)
  {
    return 0;
  }

  *a7 = -1;
  v116 = 0;
  if ((a5 & 0x80000000) == 0)
  {
    v113 = v113;
    v117 = v113 + a5;
    if (v114 <= v113)
    {
      v114 = v113;
    }

    if (v117 <= v113)
    {
      v117 = v113;
    }

    v118 = v117 + 1;
    v119 = -1;
    do
    {
      if (v114 == v113)
      {
        break;
      }

      if (*(*(*(a1 + 16) + (((v113 + *(a1 + 40)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v113 + *(a1 + 40)) & 0x3FF)) <= a9)
      {
        if (v119 == -1)
        {
          *a7 = v113;
          v119 = v113;
        }

        ++v116;
      }

      ++v113;
    }

    while (v118 != v113);
  }

  if (a8)
  {
    *a8 = v116;
  }

  return v116 >= a6;
}

void sub_272366E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_272366EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0x800)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v1 > 0x7FF;
}

void *sub_272366F18(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 2);
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
    }

    else
    {
      result += v3 >> 10;
    }
  }

  return result;
}

double sub_272366F6C(void **a1, _BYTE *a2, void **a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v11 = a1 + 1;
    sub_272367494(&v23, a2, *a1 + 4096, *a5, *(a5 + 8));
    *a5 = v24;
    v12 = *a5;
    v13 = *(a5 + 8);
    if (v11 != a3)
    {
      v22 = a4;
      do
      {
        v14 = 0;
        v15 = *v11;
        v16 = *v12;
        while (1)
        {
          v17 = v16 - v13 + 4096;
          if ((4096 - v14) >> 2 >= v17 >> 2)
          {
            v18 = v17 >> 2;
          }

          else
          {
            v18 = (4096 - v14) >> 2;
          }

          if (v18)
          {
            memmove(v13, &v15[v14], 4 * v18);
          }

          v14 += 4 * v18;
          if (v14 == 4096)
          {
            break;
          }

          v19 = v12[1];
          ++v12;
          v16 = v19;
          v13 = v19;
        }

        v13 += 4 * v18;
        if ((*v12 + 4096) == v13)
        {
          v20 = v12[1];
          ++v12;
          v13 = v20;
        }

        *a5 = v12;
        *(a5 + 8) = v13;
        ++v11;
      }

      while (v11 != a3);
      a4 = v22;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  sub_272367494(&v23, a2, v9, v7, v8);
  result = *&v24;
  *a5 = v24;
  return result;
}

void *sub_2723670AC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = ((a2 - *result) >> 2) - a3;
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
    }

    else
    {
      result += v3 >> 10;
    }
  }

  return result;
}

__n128 sub_272367104(__n128 *a1, char **a2, char *a3, char **a4, char *a5, char *a6, char *a7)
{
  if (a2 == a4)
  {
    v11 = a3;
    v12 = a5;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v16 = a4 - 1;
    sub_272367244(v27, *a4, a5, a6, a7);
    v18 = v28.n128_u64[1];
    v17 = v28.n128_u64[0];
    if (v16 != a2)
    {
      v19 = *v28.n128_u64[0];
      do
      {
        v20 = *v16;
        v21 = *v16 + 4096;
        while (1)
        {
          v22 = v18 - v19;
          if ((v21 - v20) >> 2 >= v22 >> 2)
          {
            v23 = v22 >> 2;
          }

          else
          {
            v23 = (v21 - v20) >> 2;
          }

          v21 -= 4 * v23;
          v18 -= 4 * v23;
          if (v23)
          {
            memmove(v18, v21, 4 * v23);
          }

          if (v21 == v20)
          {
            break;
          }

          v24 = *(v17 - 1);
          v17 -= 8;
          v19 = v24;
          v18 = v24 + 4096;
        }

        v19 = *v17;
        if ((*v17 + 4096) == v18)
        {
          v25 = *(v17 + 1);
          v17 += 8;
          v19 = v25;
          v18 = v25;
        }

        --v16;
      }

      while (v16 != a2);
    }

    v12 = *v16 + 4096;
    v11 = a3;
    v13 = v17;
    v14 = v18;
  }

  sub_272367244(v27, v11, v12, v13, v14);
  result = v28;
  a1->n128_u64[0] = a4;
  a1->n128_u64[1] = a5;
  a1[1] = result;
  return result;
}

char **sub_272367244(char **result, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 2 >= v12 >> 2)
      {
        v13 = v12 >> 2;
      }

      else
      {
        v13 = (v11 - a2) >> 2;
      }

      v11 -= 4 * v13;
      a5 -= 4 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 4 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void sub_272367300(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_272367404(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_272367404(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_272367460();
}

void sub_272367460()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_272367494(void *result, _BYTE *__src, _BYTE *a3, void *a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      if ((a3 - v9) >> 2 >= v11 >> 2)
      {
        v12 = v11 >> 2;
      }

      else
      {
        v12 = (a3 - v9) >> 2;
      }

      if (v12)
      {
        result = memmove(__dst, v9, 4 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = v6[1];
      ++v6;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if ((*v6 + 4096) == __dst)
    {
      v14 = v6[1];
      ++v6;
      __dst = v14;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void sub_272367554(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_272367404(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_27236765C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2723676B8(exception, a1);
  __cxa_throw(exception, off_279E3FC68, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2723676B8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_272368554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *__p, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  v41 = v37;
  *(v41 + 144) = v36;

  __p = &a23;
  sub_272363E94(&__p);
  if (v38)
  {
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void *sub_2723686B0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743C5B50](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_27236912C();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743C5B60](v20);
  return a1;
}

void sub_272368958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743C5B60](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x27236892CLL);
}

void *sub_2723689D8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_272368A90(float *a1)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    v4 = voiceactions::kLogZero;
    v5 = voiceactions::kNolabel;
    do
    {
      *v2 = v5;
      *(v2 + 4) = v4;
      *(v2 + 8) = voiceactions::kNoTime;
      *(v2 + 20) = 0;
      *(v2 + 12) = 0;
      v2 += 32;
    }

    while (v2 != v3);
  }

  sub_272368B80((a1 + 52));
  for (i = *(a1 + 20); i; i = *i)
  {
    sub_272368BD4(&v8, (i + 2));
    v11 = &v8;
    v7 = sub_272368C38(a1 + 36, v8, &v11);
    sub_272368B80((v7 + 3));
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_272368B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_272368B80(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  result = *&voiceactions::kLogZero;
  *(a1 + 24) = voiceactions::kLogZero;
  *(a1 + 28) = result;
  v2 = voiceactions::kNoTime;
  *(a1 + 32) = voiceactions::kNoTime;
  *(a1 + 36) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 60) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_272368BD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_272369088(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return a1;
}

uint64_t *sub_272368C38(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_272369088(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_27236912C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

char *sub_272369144(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(v4, *v6, *(v6 + 1));
        v8 = v15;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      v10 = *(v6 + 40);
      *(v4 + 49) = *(v6 + 49);
      *(v4 + 40) = v10;
      *(v4 + 24) = v9;
      v6 = (v6 + 72);
      v4 = v8 + 72;
      v15 = v8 + 72;
    }

    while (v6 != a3);
  }

  v13 = 1;
  sub_27236927C(v12);
  return v4;
}

void sub_272369220(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_272367460();
}

uint64_t sub_27236927C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 49);
      v3 -= 9;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

unint64_t *sub_2723692DC(unint64_t *result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 3);
    if (v7 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_27236F7F0();
    }

    v8 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    v28 = v3;
    if (v10)
    {
      sub_272369220(v10);
    }

    v14 = 72 * v7;
    v25 = 0;
    v26 = v14;
    v27 = v14;
    if (*(a2 + 23) < 0)
    {
      sub_272369088(v14, *a2, *(a2 + 1));
      v16 = v26;
      v17 = v27;
    }

    else
    {
      v15 = *a2;
      *(v14 + 16) = *(a2 + 2);
      *v14 = v15;
      v16 = v14;
      v17 = v14;
    }

    v18 = *(a2 + 49);
    v19 = *(a2 + 24);
    *(v14 + 40) = *(a2 + 40);
    *(v14 + 24) = v19;
    *(v14 + 49) = v18;
    *&v27 = v17 + 72;
    v20 = v3[1];
    v21 = v16 + *v3 - v20;
    sub_2723695B4(v3, *v3, v20, v21);
    v22 = *v3;
    *v3 = v21;
    v23 = v3[2];
    v24 = v27;
    *(v3 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    result = sub_272369680(&v25);
    v13 = v24;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_272369088(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 40);
    *(v5 + 49) = *(a2 + 49);
    *(v5 + 40) = v12;
    *(v5 + 24) = v11;
    v13 = v5 + 72;
    v3[1] = v5 + 72;
  }

  v3[1] = v13;
  return result;
}

void sub_2723694A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_272369680(va);
  _Unwind_Resume(a1);
}

__n128 sub_2723694C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v11 = a1[1];
  *&v11[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v9 = *(a1 + 3);
  *v10 = *(a1 + 5);
  *&v10[9] = *(a1 + 49);
  v5 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = *(a2 + 49);
  v7 = *(a2 + 40);
  *(a1 + 3) = *(a2 + 24);
  *(a1 + 5) = v7;
  *(a1 + 49) = v6;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *(a2 + 24) = v9;
  *a2 = v3;
  *(a2 + 8) = *v11;
  *(a2 + 15) = *&v11[7];
  *(a2 + 23) = v4;
  *(a2 + 40) = *v10;
  result = *&v10[9];
  *(a2 + 49) = *&v10[9];
  return result;
}

uint64_t sub_2723695B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 49) = *(v6 + 49);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 72);
    }

    while (v5 != a3);
  }

  return sub_27236927C(v11);
}

uint64_t sub_272369680(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 9;
      *(a1 + 16) = v2 - 9;
      if (*(v2 - 49) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2723696E4(uint64_t result, float *a2, int a3, int a4, int a5, char a6, float a7)
{
  *(result + 4) = a2[1] + a7;
  v7 = a2[4];
  *(result + 16) = v7;
  v8 = *(a2 + 3);
  *(result + 12) = v8;
  v9 = *(a2 + 6);
  *(result + 24) = v9;
  if (a3 == a5)
  {
    *(result + 12) = v8 + 1;
    *(result + 16) = v7 + a7;
  }

  else if ((a6 & 1) == 0)
  {
    *(result + 24) = v9 + 1;
  }

  *(result + 8) = a2[2];
  v10 = *a2;
  if (a4)
  {
    v10 = a4;
  }

  *result = v10;
  *(result + 20) = *(a2 + 5) + 1;
  return result;
}

void *sub_272369758(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_272369BE4(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_272369BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27236A0A8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_272369BE4(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL sub_27236A034(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

char **sub_27236A0A8(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_27236A0F4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_27236A0F4(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_27236A158(&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_27236A158(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27236A1AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_27236A1AC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_27236A1FC(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_27236AEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, std::locale a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59)
{
  a36.__locale_ = &a18;
  sub_27236A158(&a36);
  a59 = &a39;
  sub_27236A158(&a59);

  _Unwind_Resume(a1);
}

void *sub_27236B1B4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_27236912C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

const void **sub_27236B26C(const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_27236F808(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_27236F860(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = (v3 + 24);
  }

  v2[1] = v6;
  return result;
}

uint64_t *sub_27236B398(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_27236F680(result, a4);
  }

  return result;
}

void sub_27236B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_27236A158(&a9);
  _Unwind_Resume(a1);
}

void sub_27236B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  if (a3 != a4)
  {
    v6 = a3;
    v104 = (a2 + 512);
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        __dst = *v6;
      }

      voiceactions::StringSplit(&__dst, " \t", &__str);
      if (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) >= 2)
      {
        if (*(__str.__r_.__value_.__r.__words[0] + 23) < 0)
        {
          sub_272369088(&v108, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 8));
        }

        else
        {
          v7 = *__str.__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = *(__str.__r_.__value_.__r.__words[0] + 16);
          *&v108.__r_.__value_.__l.__data_ = v7;
        }

        v8 = std::string::find(&v108, 58, 0);
        if (v8 == -1)
        {
          v11 = -1.0;
        }

        else
        {
          v9 = v8;
          std::string::basic_string(&v116, __str.__r_.__value_.__l.__data_, 0, v8, &v107);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          v108 = v116;
          v10 = std::string::basic_string(&v116, __str.__r_.__value_.__l.__data_, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v107);
          v11 = std::stof(v10, 0);
          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          std::string::operator=(__str.__r_.__value_.__l.__data_, &v108);
        }

        voiceactions::StringJoin(&__str, " ", &v107);
        v12 = v112;
        if (v112 >= v113)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 3) + 1;
          if (v14 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_27236F7F0();
          }

          if (0x5555555555555556 * ((v113 - v111) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v113 - v111) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v113 - v111) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          v118 = &v111;
          if (v15)
          {
            sub_27236F808(v15);
          }

          size = (8 * ((v112 - v111) >> 3));
          v116.__r_.__value_.__r.__words[0] = 0;
          v116.__r_.__value_.__l.__size_ = size;
          v18 = 0;
          v116.__r_.__value_.__r.__words[2] = size;
          v117 = 0;
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_272369088(size, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
            v20 = v116.__r_.__value_.__r.__words[2];
            size = v116.__r_.__value_.__l.__size_;
            v18 = v117;
          }

          else
          {
            v19 = *&v107.__r_.__value_.__l.__data_;
            *(8 * ((v112 - v111) >> 3) + 0x10) = *(&v107.__r_.__value_.__l + 2);
            *size = v19;
            v20 = size;
          }

          v16 = v20 + 24;
          v21 = &size[-(v112 - v111)];
          memcpy(v21, v111, v112 - v111);
          v22 = v111;
          v23 = v113;
          v111 = v21;
          v112 = v16;
          v113 = v18;
          v116.__r_.__value_.__r.__words[2] = v22;
          v117 = v23;
          v116.__r_.__value_.__r.__words[0] = v22;
          v116.__r_.__value_.__l.__size_ = v22;
          sub_27236F860(&v116);
        }

        else
        {
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_272369088(v112, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
          }

          else
          {
            v13 = *&v107.__r_.__value_.__l.__data_;
            *(v112 + 2) = *(&v107.__r_.__value_.__l + 2);
            *v12 = v13;
          }

          v16 = v12 + 24;
        }

        v112 = v16;
        memset(&v116, 0, sizeof(v116));
        sub_27236CB74(&v116, LODWORD(__str.__r_.__value_.__l.__data_) + 24, __str.__r_.__value_.__r.__words[1], 0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - (__str.__r_.__value_.__r.__words[0] + 24)) >> 3));
        voiceactions::StringJoin(&v116, "_", &__p);
        v115 = &v116;
        sub_27236A158(&v115);
        if (v11 != -1.0)
        {
          sub_2723686B0(MEMORY[0x277D82670], "Custom threshold ", 17);
          v24 = std::ostream::operator<<();
          v25 = sub_2723686B0(v24, " for ", 6);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = __dst.__r_.__value_.__l.__size_;
          }

          goto LABEL_99;
        }

        if (sub_27236CBFC((a2 + 440), &__p))
        {
          v116.__r_.__value_.__r.__words[0] = &__p;
          v11 = *(sub_27236CCF8((a2 + 440), &__p, &v116) + 10);
          sub_2723686B0(MEMORY[0x277D82670], "Threshold from file ", 20);
          v28 = std::ostream::operator<<();
          v25 = sub_2723686B0(v28, " for ", 6);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = __dst.__r_.__value_.__l.__size_;
          }

          goto LABEL_99;
        }

        sub_27236B1B4(&v116, "DEFAULT");
        v29 = sub_27236CBFC((a2 + 440), &v116);
        v30 = v29;
        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
          if (v30)
          {
LABEL_50:
            v31 = sub_27236B1B4(&v116, "DEFAULT");
            v32 = sub_272369BE4(v31);
            v33 = v32;
            v34 = *(a2 + 448);
            if (!*&v34)
            {
              goto LABEL_90;
            }

            v35 = vcnt_s8(v34);
            v35.i16[0] = vaddlv_u8(v35);
            v36 = v35.u32[0];
            if (v35.u32[0] > 1uLL)
            {
              v37 = v32;
              if (v32 >= *&v34)
              {
                v37 = v32 % *&v34;
              }
            }

            else
            {
              v37 = (*&v34 - 1) & v32;
            }

            v51 = *(*(a2 + 440) + 8 * v37);
            if (!v51 || (v52 = *v51) == 0)
            {
LABEL_90:
              operator new();
            }

            while (1)
            {
              v53 = *(v52 + 1);
              if (v53 == v33)
              {
                if (sub_27236A034(v52 + 2, &v116))
                {
                  v11 = v52[10];
                  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v116.__r_.__value_.__l.__data_);
                  }

                  sub_2723686B0(MEMORY[0x277D82670], "Using override threshold ", 25);
                  v54 = std::ostream::operator<<();
                  v25 = sub_2723686B0(v54, " for ", 6);
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_dst = &__dst;
                  }

                  else
                  {
                    p_dst = __dst.__r_.__value_.__r.__words[0];
                  }

                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v27 = __dst.__r_.__value_.__l.__size_;
                  }

                  goto LABEL_99;
                }
              }

              else
              {
                if (v36 > 1)
                {
                  if (v53 >= *&v34)
                  {
                    v53 %= *&v34;
                  }
                }

                else
                {
                  v53 &= *&v34 - 1;
                }

                if (v53 != v37)
                {
                  goto LABEL_90;
                }
              }

              v52 = *v52;
              if (!v52)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else if (v29)
        {
          goto LABEL_50;
        }

        v38 = __str.__r_.__value_.__r.__words[0];
        v11 = 0.0;
        if (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) >= 2)
        {
          v39 = 0;
          v40 = 1;
          do
          {
            v41 = v38 + v39;
            if (*(v41 + 47) < 0)
            {
              sub_272369088(&v116, *(v41 + 24), *(v41 + 32));
            }

            else
            {
              v42 = *(v41 + 24);
              v116.__r_.__value_.__r.__words[2] = *(v41 + 40);
              *&v116.__r_.__value_.__l.__data_ = v42;
            }

            if (sub_27236CBFC((a2 + 440), &v116))
            {
              v115 = &v116;
              v43 = (sub_27236CCF8((a2 + 440), &v116, &v115) + 5);
            }

            else
            {
              v44 = sub_2723686B0(MEMORY[0x277D82670], "Missing threshold for ", 22);
              if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v116;
              }

              else
              {
                v45 = v116.__r_.__value_.__r.__words[0];
              }

              if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v46 = v116.__r_.__value_.__l.__size_;
              }

              v47 = sub_2723686B0(v44, v45, v46);
              sub_2723686B0(v47, ", using default ", 16);
              v48 = std::ostream::operator<<();
              sub_2723686B0(v48, "\n", 1);
              v43 = v104;
            }

            v49 = *v43;
            if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v116.__r_.__value_.__l.__data_);
            }

            v11 = v11 + v49;
            ++v40;
            v38 = __str.__r_.__value_.__r.__words[0];
            v39 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) > v40);
        }

        sub_2723686B0(MEMORY[0x277D82670], "Computed threshold ", 19);
        v50 = std::ostream::operator<<();
        v25 = sub_2723686B0(v50, " for ", 6);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = __dst.__r_.__value_.__l.__size_;
        }

LABEL_99:
        v55 = sub_2723686B0(v25, p_dst, v27);
        sub_2723686B0(v55, "\n", 2);
        *&v116.__r_.__value_.__l.__data_ = v11;
        v117 = 0;
        *&v116.__r_.__value_.__r.__words[1] = 0uLL;
        sub_27236CB74(&v116.__r_.__value_.__l.__size_, LODWORD(__str.__r_.__value_.__l.__data_) + 24, __str.__r_.__value_.__r.__words[1], 0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - (__str.__r_.__value_.__r.__words[0] + 24)) >> 3));
        v114 = &v108;
        v56 = sub_272369758((a2 + 400), &v108, &v114);
        *(v56 + 10) = v116.__r_.__value_.__l.__data_;
        sub_27236CF70((v56 + 6));
        *(v56 + 3) = *&v116.__r_.__value_.__r.__words[1];
        v56[8] = v117;
        v117 = 0;
        *&v116.__r_.__value_.__r.__words[1] = 0uLL;
        v115 = &v116.__r_.__value_.__r.__words[1];
        sub_27236A158(&v115);
        v116.__r_.__value_.__r.__words[0] = &v108;
        *(sub_27236CCF8(a1, &v108, &v116) + 10) = v11;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      v116.__r_.__value_.__r.__words[0] = &__str;
      sub_27236A158(&v116);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v6 += 24;
    }

    while (v6 != a4);
  }

  v57 = (a1 + 16);
  v58 = MEMORY[0x277D82670];
  while (1)
  {
    v57 = *v57;
    if (!v57)
    {
      break;
    }

    sub_2723686B0(v58, "threshold[ ", 12);
    v59 = *(v57 + 39);
    if (v59 >= 0)
    {
      v60 = (v57 + 2);
    }

    else
    {
      v60 = v57[2];
    }

    if (v59 >= 0)
    {
      v61 = *(v57 + 39);
    }

    else
    {
      v61 = v57[3];
    }

    sub_2723686B0(v58, v60, v61);
    sub_2723686B0(v58, "] = ", 5);
    v62 = std::ostream::operator<<();
    sub_2723686B0(v62, "\n", 1);
  }

  sub_27236CFB0((a2 + 80));
  if (*(a2 + 128))
  {
    v63 = *(a2 + 120);
    if (v63)
    {
      do
      {
        v64 = *v63;
        operator delete(v63);
        v63 = v64;
      }

      while (v64);
    }

    *(a2 + 120) = 0;
    v65 = *(a2 + 112);
    if (v65)
    {
      for (i = 0; i != v65; ++i)
      {
        *(*(a2 + 104) + 8 * i) = 0;
      }
    }

    *(a2 + 128) = 0;
  }

  sub_27236B1B4(&v116, "<eps>");
  sub_27236D008(a2, &v116);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  sub_27236B1B4(&v116, "<eps>");
  sub_27236D46C(a2, &v116);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  memset(&v116, 0, sizeof(v116));
  sub_27236D4E0(a2 + 80, &v116);
  if (v116.__r_.__value_.__r.__words[0])
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 511) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 496))
    {
      goto LABEL_132;
    }
  }

  else if (*(a2 + 511))
  {
LABEL_132:
    v67 = sub_27236D46C(a2, (a2 + 488));
    goto LABEL_135;
  }

  v67 = -1;
LABEL_135:
  *(a2 + 480) = v67;
  v68 = *(a2 + 80);
  v116.__r_.__value_.__r.__words[0] = 0;
  LODWORD(v116.__r_.__value_.__r.__words[1]) = v67;
  *(&v116.__r_.__value_.__r.__words[1] + 4) = 0;
  v116.__r_.__value_.__s.__data_[20] = 0;
  sub_27236D62C(v68, &v116);
  v70 = v111;
  v103 = v112;
  if (v111 == v112)
  {
    goto LABEL_180;
  }

  do
  {
    if (v70[23] < 0)
    {
      sub_272369088(&v116, *v70, *(v70 + 1));
    }

    else
    {
      v71 = *v70;
      v116.__r_.__value_.__r.__words[2] = *(v70 + 2);
      *&v116.__r_.__value_.__l.__data_ = v71;
    }

    if (std::string::find(&v116, 58, 0) != -1)
    {
      __assert_rtn("CompileFstFromProns", "OnlineFstSpottingDecoder.hpp", 821, "line.find(':') == std::string::npos");
    }

    voiceactions::StringSplit(&v116, " \t", &__dst);
    v72 = __dst.__r_.__value_.__r.__words[0];
    if (*(__dst.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      sub_272369088(&__str, *__dst.__r_.__value_.__l.__data_, *(__dst.__r_.__value_.__r.__words[0] + 8));
      v72 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      v73 = *__dst.__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = *(__dst.__r_.__value_.__r.__words[0] + 16);
      *&__str.__r_.__value_.__l.__data_ = v73;
    }

    memset(&v108, 0, sizeof(v108));
    sub_27236CB74(&v108, v72 + 24, __dst.__r_.__value_.__r.__words[1], 0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - (v72 + 24)) >> 3));
    v105 = v70;
    sub_27236CF70(&__dst);
    __dst = v108;
    memset(&v108, 0, sizeof(v108));
    v107.__r_.__value_.__r.__words[0] = &v108;
    sub_27236A158(&v107);
    v74 = -1431655765 * ((*(a2 + 88) - *(a2 + 80)) >> 3);
    v75 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ == __dst.__r_.__value_.__r.__words[0])
    {
      v88 = v74 - 1;
    }

    else
    {
      v76 = 0;
      v77 = 0;
      do
      {
        v78 = sub_27236D46C(a2, (v75 + v76));
        memset(&v108, 0, sizeof(v108));
        sub_27236D4E0(a2 + 80, &v108);
        if (v108.__r_.__value_.__r.__words[0])
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        v79 = *(a2 + 88) - 24;
        v80 = *(a2 + 480);
        LODWORD(v108.__r_.__value_.__l.__data_) = v74;
        *(v108.__r_.__value_.__r.__words + 4) = __PAIR64__(v80, v74);
        v108.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v79, &v108);
        v81 = *(a2 + 88) - 24;
        v82 = *(a2 + 480);
        if (v77)
        {
          v83 = v74 - 1;
        }

        else
        {
          v83 = 0;
        }

        v108.__r_.__value_.__r.__words[0] = __PAIR64__(v83, v74);
        LODWORD(v108.__r_.__value_.__r.__words[1]) = v82;
        *(&v108.__r_.__value_.__r.__words[1] + 4) = 0;
        v108.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v81, &v108);
        memset(&v108, 0, sizeof(v108));
        sub_27236D4E0(a2 + 80, &v108);
        if (v108.__r_.__value_.__r.__words[0])
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        v84 = *(a2 + 88) - 24;
        LODWORD(v108.__r_.__value_.__l.__data_) = v74 + 1;
        HIDWORD(v108.__r_.__value_.__r.__words[0]) = v74 + 1;
        LODWORD(v108.__r_.__value_.__r.__words[1]) = v78;
        *(&v108.__r_.__value_.__r.__words[1] + 4) = 0;
        v108.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v84, &v108);
        if (v77 + 1 == 0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 3))
        {
          v85 = sub_27236D008(a2, &__str);
        }

        else
        {
          v85 = 0;
        }

        v86 = *(a2 + 88) - 24;
        LODWORD(v108.__r_.__value_.__l.__data_) = v74 + 1;
        *(v108.__r_.__value_.__r.__words + 4) = __PAIR64__(v78, v83);
        *(&v108.__r_.__value_.__r.__words[1] + 4) = v85;
        v108.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v86, &v108);
        v87 = *(a2 + 88) - 24;
        LODWORD(v108.__r_.__value_.__l.__data_) = v74 + 1;
        *(v108.__r_.__value_.__r.__words + 4) = __PAIR64__(v78, v74);
        *(&v108.__r_.__value_.__r.__words[1] + 4) = v85;
        v108.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v87, &v108);
        v75 = __dst.__r_.__value_.__r.__words[0];
        ++v77;
        v74 += 2;
        v76 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 3) > v77);
      v88 = -1 - 1431655765 * ((*(a2 + 88) - *(a2 + 80)) >> 3);
    }

    v89 = *(a2 + 112);
    if (!v89)
    {
      goto LABEL_174;
    }

    v90 = vcnt_s8(v89);
    v90.i16[0] = vaddlv_u8(v90);
    if (v90.u32[0] > 1uLL)
    {
      v91 = v88;
      if (v89 <= v88)
      {
        v91 = v88 % v89;
      }
    }

    else
    {
      v91 = (v89 - 1) & v88;
    }

    v92 = *(*(a2 + 104) + 8 * v91);
    if (!v92 || (v93 = *v92) == 0)
    {
LABEL_174:
      operator new();
    }

    while (1)
    {
      v94 = v93[1];
      if (v94 == v88)
      {
        break;
      }

      if (v90.u32[0] > 1uLL)
      {
        if (v94 >= v89)
        {
          v94 %= v89;
        }
      }

      else
      {
        v94 &= v89 - 1;
      }

      if (v94 != v91)
      {
        goto LABEL_174;
      }

LABEL_173:
      v93 = *v93;
      if (!v93)
      {
        goto LABEL_174;
      }
    }

    if (*(v93 + 4) != v88)
    {
      goto LABEL_173;
    }

    *(v93 + 5) = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &__dst;
    sub_27236A158(&__str);
    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    v70 += 24;
  }

  while (v105 + 24 != v103);
LABEL_180:
  v95 = *(a2 + 80);
  v96 = *(a2 + 88);
  if (v95 == v96)
  {
    v101 = *(a2 + 80);
  }

  else
  {
    do
    {
      v97 = *v95;
      v98 = v95[1];
      v95 += 3;
      v99 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v98 - v97) >> 3));
      if (v98 == v97)
      {
        v100 = 0;
      }

      else
      {
        v100 = v99;
      }

      v69 = sub_27236D760(v97, v98, v100, 1, v69);
    }

    while (v95 != v96);
    v95 = *(a2 + 80);
    v101 = *(a2 + 88);
  }

  sub_27236C8E0((a2 + 184), (-1431655765 * ((v101 - v95) >> 3)));
  sub_272368A90(a2);
  v116.__r_.__value_.__r.__words[0] = &v111;
  sub_27236A158(&v116);
}

void sub_27236C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void **a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46)
{
  sub_27236F624(1, v46);
  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a25 = &a32;
  sub_27236A158(&a25);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  a39 = &a45;
  sub_27236A158(&a39);
  sub_27236FFF0(a9);
  _Unwind_Resume(a1);
}

void sub_27236C8E0(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = &v3[32 * a2];
    }
  }

  else
  {
    v5 = a2 - v4;
    v6 = a1[2];
    if (v5 > (v6 - v2) >> 5)
    {
      if (!(a2 >> 59))
      {
        v7 = v6 - v3;
        v8 = (v6 - v3) >> 4;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFE0)
        {
          v9 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 59))
        {
          operator new();
        }

        sub_272367460();
      }

      sub_27236F7F0();
    }

    v10 = &v2[32 * v5];
    v11 = voiceactions::kLogZero;
    v12 = voiceactions::kNolabel;
    do
    {
      *v2 = v12;
      *(v2 + 1) = v11;
      *(v2 + 2) = voiceactions::kNoTime;
      *(v2 + 20) = 0;
      *(v2 + 12) = 0;
      *(v2 + 7) = v11;
      v2 += 32;
    }

    while (v2 != v10);
    a1[1] = v10;
  }
}

void voiceactions::StringSplit(std::string *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_27236B1B4(__p, a2);
  voiceactions::StringSplit(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27236CAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringJoin(std::string *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  sub_27236B1B4(__p, a2);
  voiceactions::StringJoin(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27236CB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_27236CB74(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_27236F680(result, a4);
  }

  return result;
}

void sub_27236CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_27236A158(&a9);
  _Unwind_Resume(a1);
}

void *sub_27236CBFC(void *a1, void *a2)
{
  v4 = sub_272369BE4(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_27236A034(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_27236CCF8(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_272369BE4(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_27236CF70(uint64_t a1)
{
  if (*a1)
  {
    sub_27236A1AC(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_27236CFB0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_27236D008(uint64_t a1, std::string *a2)
{
  if (!sub_27236CBFC((a1 + 320), a2))
  {
    v4 = *(a1 + 344);
    v12 = a2;
    *(sub_27236EF68((a1 + 320), a2, &v12) + 10) = v4;
    v5 = *(a1 + 368);
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = v4;
      if (v5 <= v4)
      {
        v7 = v4 % v5;
      }
    }

    else
    {
      v7 = (v5 - 1) & v4;
    }

    v8 = *(*(a1 + 360) + 8 * v7);
    if (!v8 || (v9 = *v8) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      size = v9->__r_.__value_.__l.__size_;
      if (size == v4)
      {
        if (LODWORD(v9->__r_.__value_.__r.__words[2]) == v4)
        {
          std::string::operator=(v9 + 1, a2);
          break;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (size >= v5)
          {
            size %= v5;
          }
        }

        else
        {
          size &= v5 - 1;
        }

        if (size != v7)
        {
          goto LABEL_19;
        }
      }

      v9 = v9->__r_.__value_.__r.__words[0];
      if (!v9)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = a2;
  return *(sub_27236EF68((a1 + 320), a2, &v12) + 10);
}

uint64_t sub_27236D46C(uint64_t a1, __int128 *a2)
{
  if (!sub_27236CBFC((a1 + 280), a2))
  {
    v4 = *(a1 + 304);
    v6 = a2;
    *(sub_27236EF68((a1 + 280), a2, &v6) + 10) = v4;
  }

  v6 = a2;
  return *(sub_27236EF68((a1 + 280), a2, &v6) + 10);
}

void sub_27236D4E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_272367460();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

void sub_27236D62C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_272367460();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

__n128 sub_27236D760(_DWORD *a1, _DWORD *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 6);
  v10 = (a2 - 12);
  v11 = (a2 - 18);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 5) <= v12[1])
        {
          return result;
        }

LABEL_110:
        *&v162[16] = *(v12 + 2);
        *v162 = *v12;
        v80 = *v9;
        *(v12 + 13) = *(a2 - 11);
        *v12 = v80;
        result = *v162;
LABEL_111:
        *(a2 - 11) = *&v162[13];
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v81 = v12[7];
      v82 = v12[13];
      if (v81 <= v12[1])
      {
        if (v82 > v81)
        {
          *v168 = *(v12 + 6);
          result = *v168;
          *&v168[16] = *(v12 + 5);
          *(v12 + 6) = *(v12 + 3);
          *(v12 + 37) = *(v12 + 61);
          *(v12 + 3) = *v168;
          *(v12 + 61) = *&v168[13];
          if (v12[7] > v12[1])
          {
            *&v169[16] = *(v12 + 2);
            *v169 = *v12;
            *v12 = *(v12 + 6);
            *(v12 + 13) = *(v12 + 37);
            result = *v169;
            *(v12 + 6) = *v169;
            *(v12 + 37) = *&v169[13];
          }
        }
      }

      else
      {
        if (v82 > v81)
        {
          *&v163[16] = *(v12 + 2);
          *v163 = *v12;
          *v12 = *(v12 + 3);
          *(v12 + 13) = *(v12 + 61);
          result = *v163;
          goto LABEL_189;
        }

        *&v172[16] = *(v12 + 2);
        *v172 = *v12;
        *v12 = *(v12 + 6);
        *(v12 + 13) = *(v12 + 37);
        result = *v172;
        *(v12 + 6) = *v172;
        *(v12 + 37) = *&v172[13];
        if (v82 > v12[7])
        {
          result = *(v12 + 6);
          *&v163[12] = result.n128_u32[3];
          *&v163[16] = *(v12 + 5);
          *(v12 + 6) = *(v12 + 3);
          *(v12 + 37) = *(v12 + 61);
LABEL_189:
          *(v12 + 3) = result;
          *(v12 + 61) = *&v163[13];
        }
      }

      if (*(a2 - 5) <= v12[13])
      {
        return result;
      }

      *v173 = *(v12 + 3);
      result = *v173;
      *&v173[16] = *(v12 + 8);
      v135 = *(a2 - 11);
      *(v12 + 3) = *v9;
      *(v12 + 61) = v135;
      *(a2 - 11) = *&v173[13];
      *v9 = *v173;
      if (v12[13] <= v12[7])
      {
        return result;
      }

      *v174 = *(v12 + 6);
      result = *v174;
      *&v174[16] = *(v12 + 5);
      *(v12 + 6) = *(v12 + 3);
      *(v12 + 37) = *(v12 + 61);
      *(v12 + 3) = *v174;
      *(v12 + 61) = *&v174[13];
LABEL_193:
      if (v12[7] > v12[1])
      {
        *&v175[16] = *(v12 + 2);
        *v175 = *v12;
        *v12 = *(v12 + 6);
        *(v12 + 13) = *(v12 + 37);
        result = *v175;
        *(v12 + 6) = *v175;
        *(v12 + 37) = *&v175[13];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_27236E75C(v12, (v12 + 6), (v12 + 12), (v12 + 18), (a2 - 6), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v83 = v12 + 6;
      v85 = v12 == a2 || v83 == a2;
      if (a4)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v12;
          do
          {
            v88 = v83;
            v89 = v87[7];
            if (v89 > v87[1])
            {
              v90 = *v88;
              v164 = *(v87 + 2);
              v91 = v86;
              while (1)
              {
                v92 = v12 + v91;
                result = *(v12 + v91);
                *(v92 + 24) = result;
                *(v92 + 37) = *(v12 + v91 + 13);
                if (!v91)
                {
                  break;
                }

                v91 -= 24;
                if (v89 <= *(v92 - 5))
                {
                  v93 = v12 + v91 + 24;
                  goto LABEL_130;
                }
              }

              v93 = v12;
LABEL_130:
              *v93 = v90;
              *(v93 + 4) = v89;
              *(v93 + 8) = v164;
              *(v93 + 13) = *(&v164 + 5);
            }

            v83 = v88 + 6;
            v86 += 24;
            v87 = v88;
          }

          while (v88 + 6 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v129 = v83;
          v130 = a1[7];
          if (v130 > a1[1])
          {
            v131 = *v83;
            v170 = *(a1 + 2);
            v132 = v129;
            do
            {
              result = *(v132 - 6);
              *v132 = result;
              *(v132 + 13) = *(v132 - 11);
              v133 = *(v132 - 11);
              v132 -= 6;
            }

            while (v130 > v133);
            *v132 = v131;
            v132[1] = v130;
            *(v132 + 13) = *(&v170 + 5);
            *(v132 + 1) = v170;
          }

          v83 = v129 + 6;
          a1 = v129;
        }

        while (v129 + 6 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v94 = (v14 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = &v12[6 * v97];
            if (2 * v96 + 2 < v14)
            {
              v99 = v98[1];
              v100 = v98[7];
              v101 = v99 <= v100;
              v102 = v99 <= v100 ? 0 : 24;
              v98 = (v98 + v102);
              if (!v101)
              {
                v97 = 2 * v96 + 2;
              }
            }

            v103 = &v12[6 * v96];
            v104 = v103[1];
            if (v98[1] <= v104)
            {
              v105 = *v103;
              v165 = *(v103 + 2);
              do
              {
                v106 = v103;
                v103 = v98;
                v107 = *v98;
                *(v106 + 13) = *(v98 + 13);
                *v106 = v107;
                if (v94 < v97)
                {
                  break;
                }

                v108 = (2 * v97) | 1;
                v98 = &v12[6 * v108];
                v109 = 2 * v97 + 2;
                if (v109 < v14)
                {
                  v110 = v98[1];
                  v111 = v98[7];
                  v112 = v110 <= v111;
                  v113 = v110 <= v111 ? 0 : 24;
                  v98 = (v98 + v113);
                  if (!v112)
                  {
                    v108 = v109;
                  }
                }

                v97 = v108;
              }

              while (v98[1] <= v104);
              *v103 = v105;
              v103[1] = v104;
              *(v103 + 1) = v165;
              *(v103 + 13) = *(&v165 + 5);
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        v114 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v115 = 0;
          *&v166[16] = *(v12 + 2);
          *v166 = *v12;
          v116 = v12;
          do
          {
            v117 = &v116[6 * v115];
            v118 = v117 + 6;
            v119 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v114)
            {
              v115 = v119;
            }

            else if (v117[7] <= v117[13])
            {
              v115 = v119;
            }

            else
            {
              v118 = v117 + 12;
            }

            v120 = *v118;
            *(v116 + 13) = *(v118 + 13);
            *v116 = v120;
            v116 = v118;
          }

          while (v115 <= ((v114 - 2) >> 1));
          a2 -= 6;
          if (v118 == a2)
          {
            result = *v166;
            *(v118 + 13) = *&v166[13];
            *v118 = *v166;
          }

          else
          {
            v121 = *a2;
            *(v118 + 13) = *(a2 + 13);
            *v118 = v121;
            result = *v166;
            *(a2 + 13) = *&v166[13];
            *a2 = *v166;
            v122 = v118 - v12 + 24;
            if (v122 >= 25)
            {
              v123 = (-2 - 0x5555555555555555 * (v122 >> 3)) >> 1;
              v124 = &v12[6 * v123];
              v125 = v118[1];
              if (v124[1] > v125)
              {
                v126 = *v118;
                v138 = *(v118 + 2);
                do
                {
                  v127 = v118;
                  v118 = v124;
                  result = *v124;
                  *(v127 + 13) = *(v124 + 13);
                  *v127 = result;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &v12[6 * v123];
                }

                while (v124[1] > v125);
                *v118 = v126;
                v118[1] = v125;
                *(v118 + 1) = v138;
                *(v118 + 13) = *(&v138 + 5);
              }
            }
          }

          v101 = v114-- <= 2;
        }

        while (!v101);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[6 * (v14 >> 1)];
    v17 = *(a2 - 5);
    if (v13 >= 0xC01)
    {
      v18 = v16[1];
      if (v18 <= v12[1])
      {
        if (v17 > v18)
        {
          *&v141[16] = *(v16 + 2);
          *v141 = *v16;
          v22 = *v9;
          *(v16 + 13) = *(a2 - 11);
          *v16 = v22;
          *(a2 - 11) = *&v141[13];
          *v9 = *v141;
          if (v16[1] > v12[1])
          {
            *&v142[16] = *(v12 + 2);
            *v142 = *v12;
            v23 = *v16;
            *(v12 + 13) = *(v16 + 13);
            *v12 = v23;
            *(v16 + 13) = *&v142[13];
            *v16 = *v142;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          *&v139[16] = *(v12 + 2);
          *v139 = *v12;
          v19 = *v9;
          *(v12 + 13) = *(a2 - 11);
          *v12 = v19;
          goto LABEL_26;
        }

        *&v145[16] = *(v12 + 2);
        *v145 = *v12;
        v26 = *v16;
        *(v12 + 13) = *(v16 + 13);
        *v12 = v26;
        *(v16 + 13) = *&v145[13];
        *v16 = *v145;
        if (*(a2 - 5) > v16[1])
        {
          *&v139[16] = *(v16 + 2);
          *v139 = *v16;
          v27 = *v9;
          *(v16 + 13) = *(a2 - 11);
          *v16 = v27;
LABEL_26:
          *(a2 - 11) = *&v139[13];
          *v9 = *v139;
        }
      }

      v28 = &v12[6 * v15];
      v29 = v28 - 6;
      v30 = *(v28 - 5);
      v31 = *(a2 - 11);
      if (v30 <= v12[7])
      {
        if (v31 > v30)
        {
          *&v147[16] = *(v29 + 2);
          *v147 = *v29;
          v34 = *v10;
          *(v29 + 13) = *(a2 - 35);
          *v29 = v34;
          *(a2 - 35) = *&v147[13];
          *v10 = *v147;
          if (v29[1] > v12[7])
          {
            *v148 = *(v12 + 6);
            *&v148[16] = *(v12 + 5);
            v35 = *(v29 + 13);
            *(v12 + 6) = *v29;
            *(v12 + 37) = v35;
            *(v29 + 13) = *&v148[13];
            *v29 = *v148;
          }
        }
      }

      else
      {
        if (v31 > v30)
        {
          v32 = *(v12 + 6);
          *&v146[12] = HIDWORD(v32);
          *&v146[16] = *(v12 + 5);
          v33 = *(a2 - 35);
          *(v12 + 6) = *v10;
          *(v12 + 37) = v33;
          goto LABEL_38;
        }

        *v150 = *(v12 + 6);
        *&v150[16] = *(v12 + 5);
        v38 = *(v29 + 13);
        *(v12 + 6) = *v29;
        *(v12 + 37) = v38;
        *(v29 + 13) = *&v150[13];
        *v29 = *v150;
        if (*(a2 - 11) > v29[1])
        {
          *&v146[16] = *(v29 + 2);
          *v146 = *v29;
          v39 = *v10;
          *(v29 + 13) = *(a2 - 35);
          *v29 = v39;
          v32 = *v146;
LABEL_38:
          *(a2 - 35) = *&v146[13];
          *v10 = v32;
        }
      }

      v40 = &v12[6 * v15];
      v41 = v40[7];
      v42 = *(a2 - 17);
      if (v41 <= v12[13])
      {
        if (v42 > v41)
        {
          *&v152[16] = *(v40 + 5);
          *v152 = *(v40 + 6);
          v45 = *v11;
          *(v40 + 37) = *(a2 - 59);
          *(v40 + 6) = v45;
          *(a2 - 59) = *&v152[13];
          *v11 = *v152;
          if (v40[7] > v12[13])
          {
            *v153 = *(v12 + 3);
            *&v153[16] = *(v12 + 8);
            v46 = *(v40 + 37);
            *(v12 + 3) = *(v40 + 6);
            *(v12 + 61) = v46;
            *(v40 + 37) = *&v153[13];
            *(v40 + 6) = *v153;
          }
        }
      }

      else
      {
        if (v42 > v41)
        {
          v43 = *(v12 + 3);
          *&v151[12] = HIDWORD(v43);
          *&v151[16] = *(v12 + 8);
          v44 = *(a2 - 59);
          *(v12 + 3) = *v11;
          *(v12 + 61) = v44;
          goto LABEL_47;
        }

        *v154 = *(v12 + 3);
        *&v154[16] = *(v12 + 8);
        v47 = *(v40 + 37);
        *(v12 + 3) = *(v40 + 6);
        *(v12 + 61) = v47;
        *(v40 + 37) = *&v154[13];
        *(v40 + 6) = *v154;
        if (*(a2 - 17) > v40[7])
        {
          *&v151[16] = *(v40 + 5);
          *v151 = *(v40 + 6);
          v48 = *v11;
          *(v40 + 37) = *(a2 - 59);
          *(v40 + 6) = v48;
          v43 = *v151;
LABEL_47:
          *(a2 - 59) = *&v151[13];
          *v11 = v43;
        }
      }

      v49 = v16[1];
      v50 = v40[7];
      if (v49 <= v29[1])
      {
        if (v50 > v49)
        {
          *&v156[16] = *(v16 + 2);
          *v156 = *v16;
          *v16 = *(v40 + 6);
          *(v16 + 13) = *(v40 + 37);
          *(v40 + 37) = *&v156[13];
          *(v40 + 6) = *v156;
          if (v16[1] > v29[1])
          {
            *&v157[16] = *(v29 + 2);
            *v157 = *v29;
            *v29 = *v16;
            *(v29 + 13) = *(v16 + 13);
            *(v16 + 13) = *&v157[13];
            *v16 = *v157;
          }
        }
      }

      else
      {
        if (v50 > v49)
        {
          *&v155[16] = *(v29 + 2);
          *v155 = *v29;
          *v29 = *(v40 + 6);
          *(v29 + 13) = *(v40 + 37);
          goto LABEL_56;
        }

        *&v158[16] = *(v29 + 2);
        *v158 = *v29;
        *v29 = *v16;
        *(v29 + 13) = *(v16 + 13);
        *(v16 + 13) = *&v158[13];
        *v16 = *v158;
        if (v40[7] > v16[1])
        {
          *&v155[16] = *(v16 + 2);
          *v155 = *v16;
          *v16 = *(v40 + 6);
          *(v16 + 13) = *(v40 + 37);
LABEL_56:
          *(v40 + 37) = *&v155[13];
          *(v40 + 6) = *v155;
        }
      }

      *&v159[16] = *(v12 + 2);
      *v159 = *v12;
      v51 = *v16;
      *(v12 + 13) = *(v16 + 13);
      *v12 = v51;
      *(v16 + 13) = *&v159[13];
      *v16 = *v159;
      goto LABEL_58;
    }

    v20 = v12[1];
    if (v20 <= v16[1])
    {
      if (v17 > v20)
      {
        *&v143[16] = *(v12 + 2);
        *v143 = *v12;
        v24 = *v9;
        *(v12 + 13) = *(a2 - 11);
        *v12 = v24;
        *(a2 - 11) = *&v143[13];
        *v9 = *v143;
        if (v12[1] > v16[1])
        {
          *&v144[16] = *(v16 + 2);
          *v144 = *v16;
          v25 = *v12;
          *(v16 + 13) = *(v12 + 13);
          *v16 = v25;
          *(v12 + 13) = *&v144[13];
          *v12 = *v144;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v20)
    {
      *&v140[16] = *(v16 + 2);
      *v140 = *v16;
      v21 = *v9;
      *(v16 + 13) = *(a2 - 11);
      *v16 = v21;
LABEL_35:
      *(a2 - 11) = *&v140[13];
      *v9 = *v140;
      goto LABEL_58;
    }

    *&v149[16] = *(v16 + 2);
    *v149 = *v16;
    v36 = *v12;
    *(v16 + 13) = *(v12 + 13);
    *v16 = v36;
    *(v12 + 13) = *&v149[13];
    *v12 = *v149;
    if (*(a2 - 5) > v12[1])
    {
      *&v140[16] = *(v12 + 2);
      *v140 = *v12;
      v37 = *v9;
      *(v12 + 13) = *(a2 - 11);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v52 = v12[1];
LABEL_61:
      v53 = *v12;
      result = *(v12 + 2);
      v136 = result;
      v54 = v12;
      do
      {
        v55 = v54;
        v54 += 6;
      }

      while (v55[7] > v52);
      v56 = a2;
      if (v55 == v12)
      {
        v59 = a2;
        while (v54 < v59)
        {
          v57 = v59 - 24;
          v60 = *(v59 - 20);
          v59 -= 24;
          if (v60 > v52)
          {
            goto LABEL_71;
          }
        }

        v57 = v59;
      }

      else
      {
        do
        {
          v57 = v56 - 24;
          v58 = *(v56 - 20);
          v56 -= 24;
        }

        while (v58 <= v52);
      }

LABEL_71:
      v12 = v54;
      if (v54 < v57)
      {
        v61 = v57;
        do
        {
          *v160 = *v12;
          result = *v12;
          *&v160[16] = *(v12 + 2);
          v62 = *(v61 + 13);
          *v12 = *v61;
          *(v12 + 13) = v62;
          *(v61 + 13) = *&v160[13];
          *v61 = result;
          do
          {
            v63 = v12[7];
            v12 += 6;
          }

          while (v63 > v52);
          do
          {
            v64 = *(v61 - 20);
            v61 -= 24;
          }

          while (v64 <= v52);
        }

        while (v12 < v61);
      }

      if (v12 - 6 != a1)
      {
        result = *(v12 - 6);
        *(a1 + 13) = *(v12 - 11);
        *a1 = result;
      }

      *(v12 - 6) = v53;
      *(v12 - 5) = v52;
      *(v12 - 11) = *(v136.n128_u64 + 5);
      *(v12 - 2) = v136.n128_u64[0];
      if (v54 < v57)
      {
        goto LABEL_82;
      }

      v65 = sub_27236EA28(a1, (v12 - 6), result);
      if (sub_27236EA28(v12, a2, v66))
      {
        a2 = v12 - 6;
        if (!v65)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v65)
      {
LABEL_82:
        result = sub_27236D760(a1, (v12 - 6), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v52 = v12[1];
      if (*(v12 - 5) > v52)
      {
        goto LABEL_61;
      }

      v67 = *v12;
      result = *(v12 + 2);
      v137 = result;
      if (v52 <= *(a2 - 5))
      {
        v70 = (v12 + 6);
        do
        {
          v12 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v71 = *(v70 + 4);
          v70 += 24;
        }

        while (v52 <= v71);
      }

      else
      {
        v68 = v12;
        do
        {
          v12 = v68 + 6;
          v69 = v68[7];
          v68 += 6;
        }

        while (v52 <= v69);
      }

      v72 = a2;
      if (v12 < a2)
      {
        v73 = a2;
        do
        {
          v72 = v73 - 24;
          v74 = *(v73 - 20);
          v73 -= 24;
        }

        while (v52 > v74);
      }

      while (v12 < v72)
      {
        *&v161[16] = *(v12 + 2);
        *v161 = *v12;
        v75 = *v72;
        *(v12 + 13) = *(v72 + 13);
        *v12 = v75;
        result = *v161;
        *(v72 + 13) = *&v161[13];
        *v72 = *v161;
        do
        {
          v76 = v12[7];
          v12 += 6;
        }

        while (v52 <= v76);
        do
        {
          v77 = *(v72 - 20);
          v72 -= 24;
        }

        while (v52 > v77);
      }

      if (v12 - 6 != a1)
      {
        result = *(v12 - 6);
        *(a1 + 13) = *(v12 - 11);
        *a1 = result;
      }

      a4 = 0;
      *(v12 - 6) = v67;
      *(v12 - 5) = v52;
      *(v12 - 11) = *(v137.n128_u64 + 5);
      *(v12 - 2) = v137.n128_u64[0];
    }
  }

  v78 = v12[7];
  v79 = *(a2 - 5);
  if (v78 <= v12[1])
  {
    if (v79 <= v78)
    {
      return result;
    }

    *v167 = *(v12 + 6);
    result = *v167;
    *&v167[16] = *(v12 + 5);
    v128 = *(a2 - 11);
    *(v12 + 6) = *v9;
    *(v12 + 37) = v128;
    *(a2 - 11) = *&v167[13];
    *v9 = *v167;
    goto LABEL_193;
  }

  if (v79 > v78)
  {
    goto LABEL_110;
  }

  *&v171[16] = *(v12 + 2);
  *v171 = *v12;
  *v12 = *(v12 + 6);
  *(v12 + 13) = *(v12 + 37);
  result = *v171;
  *(v12 + 6) = *v171;
  *(v12 + 37) = *&v171[13];
  if (*(a2 - 5) > v12[7])
  {
    result = *(v12 + 6);
    *&v162[12] = result.n128_u32[3];
    *&v162[16] = *(v12 + 5);
    v134 = *(a2 - 11);
    *(v12 + 6) = *v9;
    *(v12 + 37) = v134;
    goto LABEL_111;
  }

  return result;
}

__n128 sub_27236E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 4);
  v7 = *(a3 + 4);
  if (v6 <= *(a1 + 4))
  {
    if (v7 > v6)
    {
      *v21 = *a2;
      result = *a2;
      *&v21[16] = *(a2 + 16);
      v9 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v9;
      *a3 = result;
      *(a3 + 13) = *&v21[13];
      if (*(a2 + 4) > *(a1 + 4))
      {
        *v22 = *a1;
        result = *a1;
        *&v22[16] = *(a1 + 16);
        v10 = *(a2 + 13);
        *a1 = *a2;
        *(a1 + 13) = v10;
        *a2 = result;
        *(a2 + 13) = *&v22[13];
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *v20 = *a1;
      *&v20[16] = *(a1 + 16);
      v8 = *(a3 + 13);
      *a1 = *a3;
      *(a1 + 13) = v8;
LABEL_9:
      *a3 = result;
      *(a3 + 13) = *&v20[13];
      goto LABEL_10;
    }

    *v23 = *a1;
    result = *a1;
    *&v23[16] = *(a1 + 16);
    v11 = *(a2 + 13);
    *a1 = *a2;
    *(a1 + 13) = v11;
    *a2 = result;
    *(a2 + 13) = *&v23[13];
    if (*(a3 + 4) > *(a2 + 4))
    {
      result = *a2;
      *v20 = *a2;
      *&v20[16] = *(a2 + 16);
      v12 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 4) > *(a3 + 4))
  {
    *v24 = *a3;
    result = *a3;
    *&v24[16] = *(a3 + 16);
    v13 = *(a4 + 13);
    *a3 = *a4;
    *(a3 + 13) = v13;
    *a4 = result;
    *(a4 + 13) = *&v24[13];
    if (*(a3 + 4) > *(a2 + 4))
    {
      *v25 = *a2;
      result = *a2;
      *&v25[16] = *(a2 + 16);
      v14 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v14;
      *a3 = result;
      *(a3 + 13) = *&v25[13];
      if (*(a2 + 4) > *(a1 + 4))
      {
        *v26 = *a1;
        result = *a1;
        *&v26[16] = *(a1 + 16);
        v15 = *(a2 + 13);
        *a1 = *a2;
        *(a1 + 13) = v15;
        *a2 = result;
        *(a2 + 13) = *&v26[13];
      }
    }
  }

  if (*(a5 + 4) > *(a4 + 4))
  {
    *v27 = *a4;
    result = *a4;
    *&v27[16] = *(a4 + 16);
    v16 = *(a5 + 13);
    *a4 = *a5;
    *(a4 + 13) = v16;
    *a5 = result;
    *(a5 + 13) = *&v27[13];
    if (*(a4 + 4) > *(a3 + 4))
    {
      *v28 = *a3;
      result = *a3;
      *&v28[16] = *(a3 + 16);
      v17 = *(a4 + 13);
      *a3 = *a4;
      *(a3 + 13) = v17;
      *a4 = result;
      *(a4 + 13) = *&v28[13];
      if (*(a3 + 4) > *(a2 + 4))
      {
        *v29 = *a2;
        result = *a2;
        *&v29[16] = *(a2 + 16);
        v18 = *(a3 + 13);
        *a2 = *a3;
        *(a2 + 13) = v18;
        *a3 = result;
        *(a3 + 13) = *&v29[13];
        if (*(a2 + 4) > *(a1 + 4))
        {
          *v30 = *a1;
          result = *a1;
          *&v30[16] = *(a1 + 16);
          v19 = *(a2 + 13);
          *a1 = *a2;
          *(a1 + 13) = v19;
          *a2 = result;
          *(a2 + 13) = *&v30[13];
        }
      }
    }
  }

  return result;
}

BOOL sub_27236EA28(__int128 *a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a2 - 24);
      v7 = *(a1 + 7);
      v8 = *(a2 - 5);
      if (v7 > *(a1 + 1))
      {
        if (v8 <= v7)
        {
          *v48 = *a1;
          v23 = *a1;
          *&v48[16] = *(a1 + 2);
          *a1 = *(a1 + 24);
          *(a1 + 13) = *(a1 + 37);
          *(a1 + 24) = v23;
          *(a1 + 37) = *&v48[13];
          if (*(a2 - 5) <= *(a1 + 7))
          {
            return 1;
          }

          v9 = *(a1 + 24);
          *&v40[12] = HIDWORD(v9);
          *&v40[16] = *(a1 + 5);
          v24 = *(a2 - 11);
          *(a1 + 24) = *v6;
          *(a1 + 37) = v24;
        }

        else
        {
          v9 = *a1;
          *v40 = *a1;
          *&v40[16] = *(a1 + 2);
          v10 = *(a2 - 11);
          *a1 = *v6;
          *(a1 + 13) = v10;
        }

        *v6 = v9;
        *(a2 - 11) = *&v40[13];
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      *v43 = *(a1 + 24);
      *&v43[16] = *(a1 + 5);
      v20 = *(a2 - 11);
      *(a1 + 24) = *v6;
      *(a1 + 37) = v20;
      *v6 = *v43;
      *(a2 - 11) = *&v43[13];
LABEL_50:
      if (*(a1 + 7) > *(a1 + 1))
      {
        *v54 = *a1;
        v37 = *a1;
        *&v54[16] = *(a1 + 2);
        *a1 = *(a1 + 24);
        *(a1 + 13) = *(a1 + 37);
        *(a1 + 24) = v37;
        *(a1 + 37) = *&v54[13];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_27236E75C(a1, a1 + 24, (a1 + 3), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v16 = *(a1 + 7);
    v17 = *(a1 + 1);
    v18 = *(a1 + 13);
    if (v16 <= v17)
    {
      if (v18 > v16)
      {
        *v46 = *(a1 + 24);
        *&v46[16] = *(a1 + 5);
        *(a1 + 24) = a1[3];
        *(a1 + 37) = *(a1 + 61);
        a1[3] = *v46;
        *(a1 + 61) = *&v46[13];
        if (*(a1 + 7) > v17)
        {
          *v47 = *a1;
          v22 = *a1;
          *&v47[16] = *(a1 + 2);
          *a1 = *(a1 + 24);
          *(a1 + 13) = *(a1 + 37);
          *(a1 + 24) = v22;
          *(a1 + 37) = *&v47[13];
        }
      }

      goto LABEL_47;
    }

    if (v18 <= v16)
    {
      *v51 = *a1;
      v34 = *a1;
      *&v51[16] = *(a1 + 2);
      *a1 = *(a1 + 24);
      *(a1 + 13) = *(a1 + 37);
      *(a1 + 24) = v34;
      *(a1 + 37) = *&v51[13];
      if (v18 <= *(a1 + 7))
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 24);
      *&v42[12] = HIDWORD(v19);
      *&v42[16] = *(a1 + 5);
      *(a1 + 24) = a1[3];
      *(a1 + 37) = *(a1 + 61);
    }

    else
    {
      v19 = *a1;
      *v42 = *a1;
      *&v42[16] = *(a1 + 2);
      *a1 = a1[3];
      *(a1 + 13) = *(a1 + 61);
    }

    a1[3] = v19;
    *(a1 + 61) = *&v42[13];
LABEL_47:
    if (*(a2 - 5) <= *(a1 + 13))
    {
      return 1;
    }

    v35 = a2 - 24;
    *v52 = a1[3];
    *&v52[16] = *(a1 + 8);
    v36 = *(a2 - 11);
    a1[3] = *(a2 - 24);
    *(a1 + 61) = v36;
    *v35 = *v52;
    *(v35 + 13) = *&v52[13];
    if (*(a1 + 13) <= *(a1 + 7))
    {
      return 1;
    }

    *v53 = *(a1 + 24);
    *&v53[16] = *(a1 + 5);
    *(a1 + 24) = a1[3];
    *(a1 + 37) = *(a1 + 61);
    a1[3] = *v53;
    *(a1 + 61) = *&v53[13];
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 5) > *(a1 + 1))
    {
      *v39 = *a1;
      v4 = *a1;
      *&v39[16] = *(a1 + 2);
      v5 = *(a2 - 11);
      *a1 = *(a2 - 24);
      *(a1 + 13) = v5;
      *(a2 - 24) = v4;
      *(a2 - 11) = *&v39[13];
    }

    return 1;
  }

LABEL_13:
  v11 = (a1 + 3);
  v12 = *(a1 + 7);
  v13 = *(a1 + 1);
  v14 = *(a1 + 13);
  if (v12 <= v13)
  {
    if (v14 > v12)
    {
      *v44 = *(a1 + 24);
      *&v44[16] = *(a1 + 5);
      *(a1 + 24) = *v11;
      *(a1 + 37) = *(a1 + 61);
      *v11 = *v44;
      *(a1 + 61) = *&v44[13];
      if (*(a1 + 7) > v13)
      {
        *v45 = *a1;
        v21 = *a1;
        *&v45[16] = *(a1 + 2);
        *a1 = *(a1 + 24);
        *(a1 + 13) = *(a1 + 37);
        *(a1 + 24) = v21;
        *(a1 + 37) = *&v45[13];
      }
    }
  }

  else
  {
    if (v14 <= v12)
    {
      *v49 = *a1;
      v25 = *a1;
      *&v49[16] = *(a1 + 2);
      *a1 = *(a1 + 24);
      *(a1 + 13) = *(a1 + 37);
      *(a1 + 24) = v25;
      *(a1 + 37) = *&v49[13];
      if (v14 <= *(a1 + 7))
      {
        goto LABEL_33;
      }

      v15 = *(a1 + 24);
      *&v41[12] = HIDWORD(v15);
      *&v41[16] = *(a1 + 5);
      *(a1 + 24) = *v11;
      *(a1 + 37) = *(a1 + 61);
    }

    else
    {
      v15 = *a1;
      *v41 = *a1;
      *&v41[16] = *(a1 + 2);
      *a1 = *v11;
      *(a1 + 13) = *(a1 + 61);
    }

    *v11 = v15;
    *(a1 + 61) = *&v41[13];
  }

LABEL_33:
  v26 = a1 + 18;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = v26[1];
    if (v29 > v11[1])
    {
      v30 = *v26;
      v50 = *(v26 + 2);
      v31 = v27;
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 72) = *(a1 + v31 + 48);
        *(v32 + 85) = *(a1 + v31 + 61);
        if (v31 == -48)
        {
          break;
        }

        v31 -= 24;
        if (v29 <= *(v32 + 28))
        {
          v33 = a1 + v31 + 72;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v30;
      *(v33 + 4) = v29;
      *(v33 + 8) = v50;
      *(v33 + 13) = *(&v50 + 5);
      if (++v28 == 8)
      {
        return v26 + 6 == a2;
      }
    }

    v11 = v26;
    v27 += 24;
    v26 += 6;
    if (v26 == a2)
    {
      return 1;
    }
  }
}

void *sub_27236EF68(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_272369BE4(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_27236F3C4(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_27236F420(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_272367460();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_27236F624(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_27236F680(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_27236F808(a2);
  }

  sub_27236F7F0();
}

char *sub_27236F6D0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_27236F790(v9);
  return v4;
}

uint64_t sub_27236F790(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_27236F808(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_272367460();
}

uint64_t sub_27236F860(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *voiceactions::StringJoin@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    v6 = result;
    v7 = 0;
    v8 = result->__r_.__value_.__r.__words[0];
    do
    {
      v9 = *(v8 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      v7 += v9;
      v8 += 24;
    }

    while (v8 != size);
    if (*(a2 + 23) >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    std::string::reserve(a3, v10 * (0xAAAAAAAAAAAAAAABLL * ((size - result->__r_.__value_.__r.__words[0]) >> 3) - 1) + v7);
    v11 = v6->__r_.__value_.__r.__words[0];
    v12 = *(v6->__r_.__value_.__r.__words[0] + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = *v11;
      v12 = *(v11 + 8);
    }

    else
    {
      v13 = v6->__r_.__value_.__r.__words[0];
    }

    result = std::string::append(a3, v13, v12);
    for (i = v11 + 24; i != v6->__r_.__value_.__l.__size_; i += 24)
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      std::string::append(a3, v15, v10);
      v16 = *(i + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *i;
        v16 = *(i + 8);
      }

      else
      {
        v17 = i;
      }

      result = std::string::append(a3, v17, v16);
    }
  }

  return result;
}

void sub_27236F9F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringSplit(std::string *__str@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v10 = a2[23];
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 1);
  }

  if (size)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_25:
    *a3 = 0;
    *(a3 + 8) = 0;
    v17 = -1;
    *(a3 + 16) = 0;
  }

  else
  {
    v13 = v8 + size;
    v14 = v8;
LABEL_17:
    v15 = v10;
    v16 = v11;
    while (v14->__r_.__value_.__s.__data_[0] != *v16)
    {
      ++v16;
      if (!--v15)
      {
        v14 = (v14 + 1);
        if (v14 != v13)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }
    }

    if (v14 == v13)
    {
      goto LABEL_25;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v17 = v14 - v8;
    if (v14 == v8)
    {
      goto LABEL_30;
    }
  }

  std::string::basic_string(&__p, __str, 0, v17, &v30);
  sub_27236B26C(a3, &__p);
LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while (v17 != -1)
  {
LABEL_30:
    v18 = v17 + 1;
    v19 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x80u) == 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v19 & 0x80u) != 0)
    {
      v19 = __str->__r_.__value_.__l.__size_;
    }

    v21 = a2[23];
    if ((v21 & 0x80u) == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a2 + 1);
    }

    if (v19 <= v18 || v21 == 0)
    {
      v17 = -1;
    }

    else
    {
      v24 = v20 + v19;
      v25 = v20 + v18;
LABEL_46:
      v26 = v21;
      v27 = v22;
      while (*v25 != *v27)
      {
        ++v27;
        if (!--v26)
        {
          if (++v25 != v24)
          {
            goto LABEL_46;
          }

          v25 = v24;
          break;
        }
      }

      v28 = v25 - v20;
      if (v25 == v24)
      {
        v17 = -1;
      }

      else
      {
        v17 = v28;
      }
    }

    if (v17 != v18)
    {
      std::string::basic_string(&__p, __str, v18, v17 - v18, &v30);
      sub_27236B26C(a3, &__p);
      goto LABEL_27;
    }
  }
}

void *sub_27236FC1C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2743C5B10](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_27236FD80(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x27236FD40);
  }

  __cxa_rethrow();
}

void *sub_27236FE10(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743C5B00](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2743C5C00](a1 + 53);
  return a1;
}

void sub_27236FEDC(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_27236FF28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_27236A0F4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27236FF88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27236FFF0(uint64_t a1)
{
  sub_27236FEDC(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_27237002C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_272370078(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27236CFB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2723700CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_272370198(uint64_t a1)
{
  sub_2723701D0(a1);

  JUMPOUT(0x2743C5C30);
}

uint64_t sub_2723701D0(uint64_t a1)
{
  *a1 = &unk_2881906E8;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  sub_27236FFF0(a1 + 440);
  sub_27236FF28(a1 + 400);
  sub_27236FF88(a1 + 360);
  sub_27236FFF0(a1 + 320);
  sub_27236FFF0(a1 + 280);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  sub_27236FF88(a1 + 144);
  sub_27237002C(a1 + 104);
  v4 = (a1 + 80);
  sub_272370078(&v4);
  sub_2723700CC(a1 + 8);
  return a1;
}

intptr_t sub_272370840(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 24) keywordSpotterDidStop];
  }

  v2 = [*(a1 + 32) configuration];
  v3 = [v2 runtime];
  v4 = [v3 batchDecode];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    memset(v63, 0, 24);
    v6 = 0uLL;
    v7 = *(v5 + 160);
    if (v7)
    {
      do
      {
        sub_272368BD4(__p, (v7 + 2));
        sub_2723692DC(v63, &__p[1]);
        if (SBYTE7(v66) < 0)
        {
          operator delete(__p[1]);
        }

        v7 = *v7;
      }

      while (v7);
      v6 = v63[0];
    }

    v8 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((*(&v6 + 1) - v6) >> 3));
    if (*(&v6 + 1) == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_272370FCC(v6, *(&v6 + 1), v9, 1);
    v10 = *(&v63[0] + 1);
    v11 = 0x8E38E38E38E38E39 * ((*(&v63[0] + 1) - *&v63[0]) >> 3);
    v12 = v11;
    v13 = v11 >= v11;
    v14 = v11 - v11;
    if (v14 != 0 && v13)
    {
      if (0x8E38E38E38E38E39 * ((*&v63[1] - *(&v63[0] + 1)) >> 3) < v14)
      {
        if (v12 <= 0x38E38E38E38E38ELL)
        {
          *(&v66 + 1) = v63;
          v15 = 0x1C71C71C71C71C72 * ((*&v63[1] - *&v63[0]) >> 3);
          if (v15 <= v12)
          {
            v15 = v12;
          }

          if (0x8E38E38E38E38E39 * ((*&v63[1] - *&v63[0]) >> 3) >= 0x1C71C71C71C71C7)
          {
            v16 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v16 = v15;
          }

          sub_272369220(v16);
        }

        sub_27236F7F0();
      }

      v34 = *(&v63[0] + 1) + 72 * v14;
      v36 = voiceactions::kLogZero;
      v37 = voiceactions::kNoTime;
      do
      {
        *(v10 + 32) = 0uLL;
        *(v10 + 48) = 0uLL;
        *(v10 + 64) = 0;
        *v10 = 0uLL;
        *(v10 + 16) = 0uLL;
        *(v10 + 24) = v36;
        *(v10 + 28) = v36;
        *(v10 + 32) = v37;
        *(v10 + 36) = v37;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        *(v10 + 60) = v36;
        v10 += 72;
      }

      while (v10 != v34);
    }

    else
    {
      if (v13)
      {
        v34 = *(&v63[0] + 1);
        goto LABEL_39;
      }

      v34 = *&v63[0] + 72 * v12;
      while (v10 != v34)
      {
        v35 = *(v10 - 49);
        v10 -= 72;
        if (v35 < 0)
        {
          operator delete(*v10);
        }
      }
    }

    *(&v63[0] + 1) = v34;
LABEL_39:
    v38 = *&v63[0];
    if (*&v63[0] != v34)
    {
      v39 = 1;
      v40 = MEMORY[0x277D85DF8];
      do
      {
        if (*(v38 + 23) < 0)
        {
          sub_272369088(__p, *v38, *(v38 + 1));
        }

        else
        {
          v41 = *v38;
          v65 = *(v38 + 2);
          *__p = v41;
        }

        v42 = *(v38 + 24);
        v43 = *(v38 + 40);
        *&v67[9] = *(v38 + 49);
        *v67 = v43;
        v66 = v42;
        if (v65 >= 0)
        {
          v44 = __p;
        }

        else
        {
          v44 = __p[0];
        }

        fprintf(*v40, "Final Result %d %s %f %d %d %d\n", v39, v44, *&v66, DWORD2(v66), HIDWORD(v66), *&v67[12]);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        v38 = (v38 + 72);
        ++v39;
      }

      while (v38 != v34);
    }

    if (objc_opt_respondsToSelector())
    {
      v62 = *(*(a1 + 32) + 24);
      v45 = objc_opt_new();
      v47 = *(&v63[0] + 1);
      for (i = *&v63[0]; i != v47; i = (i + 72))
      {
        if (*(i + 23) < 0)
        {
          sub_272369088(__p, *i, *(i + 1));
        }

        else
        {
          v48 = *i;
          v65 = *(i + 2);
          *__p = v48;
        }

        v49 = *(i + 24);
        v50 = *(i + 40);
        *&v67[9] = *(i + 49);
        *v67 = v50;
        v66 = v49;
        v51 = MEMORY[0x277CCACA8];
        v52 = SHIBYTE(v65);
        v53 = __p[0];
        v54 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
        if (v52 >= 0)
        {
          v55 = __p;
        }

        else
        {
          v55 = v53;
        }

        v56 = [v51 stringWithCString:v55 encoding:v54];
        v57 = [VATKeywordSpotterResult alloc];
        LODWORD(v58) = v66;
        LODWORD(v59) = *&v67[16];
        v60 = [(VATKeywordSpotterResult *)v57 initWithKeyword:v56 cost:DWORD2(v66) threshold:HIDWORD(v66) start:*&v67[12] end:v58 duration:v59];
        [(VATKeywordSpotterResult *)v60 set_isNbestEntry:1];
        [v45 addObject:v60];

        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }
      }

      [v62 keywordSpotted:0 nbestResults:v45 filePath:*(*(a1 + 32) + 96) fileByteCount:*(*(a1 + 32) + 120) fileDuration:*(*(a1 + 32) + 104)];
    }

    __p[0] = v63;
    sub_272363E94(__p);
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  v17 = [*(a1 + 32) configuration];
  v18 = [v17 runtime];
  if ([v18 postKeywordSilence])
  {
    v19 = *(a1 + 32);
    v21 = *(v19 + 136);
    v20 = *(v19 + 144);

    if (v20 != v21)
    {
      LODWORD(__p[0]) = -1;
      LODWORD(v63[0]) = 0;
      v22 = *(a1 + 32);
      v23 = v22[5];
      v24 = *(v22[17] + 36);
      v25 = [v22 configuration];
      v26 = [v25 decoder];
      v27 = [v26 postKeywordSilence];
      [v27 silenceProbability];
      v29 = v28;
      v30 = [*(a1 + 32) configuration];
      v31 = [v30 decoder];
      v32 = [v31 postKeywordSilence];
      LODWORD(v23) = sub_27236638C(v23, v24, 0, 0, 8, [v32 minSilenceFrameCountAtEndOfKeyword], __p, v63, v29);

      if (v23)
      {
        *(*(*(a1 + 32) + 136) + 36) = __p[0];
      }

      v33 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2721E4000, v33, OS_LOG_TYPE_INFO, "Audio ended before we could get enough silence for keyword, triggering cached keyword", buf, 2u);
      }

      [*(a1 + 32) _handleValidResult:*(a1 + 32) + 136];
    }
  }

  else
  {
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_272370FCC(unint64_t a1, float *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v155 = a2 - 36;
    v157 = a2 - 18;
    v154 = a2 - 54;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x8E38E38E38E38E39 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v75 = *(a1 + 132);
                v76 = *(a2 - 3);
                if (v75 >= *(a1 + 60))
                {
                  if (v76 >= v75)
                  {
                    return;
                  }

                  v73 = (a1 + 72);
                  v74 = v157;
                  goto LABEL_205;
                }

                if (v76 < v75)
                {
                  goto LABEL_123;
                }

                sub_2723694C0(a1, a1 + 72);
                if (*(a2 - 3) >= *(a1 + 132))
                {
                  return;
                }

                v77 = (a1 + 72);
LABEL_124:
                v78 = v157;
LABEL_125:

                sub_2723694C0(v77, v78);
                return;
              case 4:

                sub_272371F34(a1, a1 + 72, a1 + 144, v157);
                return;
              case 5:
                sub_272371F34(a1, a1 + 72, a1 + 144, a1 + 216);
                if (*(a2 - 3) >= *(a1 + 276))
                {
                  return;
                }

                sub_2723694C0((a1 + 216), v157);
                if (*(a1 + 276) >= *(a1 + 204))
                {
                  return;
                }

                sub_2723694C0((a1 + 144), a1 + 216);
                if (*(a1 + 204) >= *(a1 + 132))
                {
                  return;
                }

                v73 = (a1 + 72);
                v74 = a1 + 144;
LABEL_205:
                sub_2723694C0(v73, v74);
                if (*(a1 + 132) >= *(a1 + 60))
                {
                  return;
                }

                v78 = a1 + 72;
                v77 = a1;
                goto LABEL_125;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 3) >= *(a1 + 60))
              {
                return;
              }

LABEL_123:
              v77 = a1;
              goto LABEL_124;
            }
          }

          if (v8 <= 1727)
          {
            v79 = (a1 + 72);
            v81 = a1 == a2 || v79 == a2;
            if (a4)
            {
              if (!v81)
              {
                v82 = 0;
                v83 = a1;
                do
                {
                  v84 = v79;
                  if (*(v83 + 132) < *(v83 + 60))
                  {
                    v85 = a2;
                    v86 = *v79;
                    *v181 = *(v83 + 80);
                    *&v181[7] = *(v83 + 87);
                    v87 = *(v83 + 95);
                    *(v79 + 1) = 0;
                    *(v79 + 2) = 0;
                    *v79 = 0;
                    v163 = *(v83 + 96);
                    v169 = *(v83 + 112);
                    v175 = *(v83 + 128);
                    v88 = *(v83 + 132);
                    v89 = *(v83 + 136);
                    v90 = v82;
                    while (1)
                    {
                      v91 = a1 + v90;
                      if (*(a1 + v90 + 95) < 0)
                      {
                        operator delete(*(v91 + 72));
                      }

                      *(v91 + 72) = *v91;
                      *(v91 + 88) = *(v91 + 16);
                      *(v91 + 23) = 0;
                      *v91 = 0;
                      v92 = *(v91 + 40);
                      *(v91 + 96) = *(v91 + 24);
                      *(v91 + 112) = v92;
                      *(v91 + 121) = *(v91 + 49);
                      if (!v90)
                      {
                        break;
                      }

                      v93 = a1 + v90;
                      v94 = *(a1 + v90 - 12);
                      v90 -= 72;
                      if (v88 >= v94)
                      {
                        v95 = a1 + v90 + 72;
                        v96 = v93 + 24;
                        goto LABEL_148;
                      }
                    }

                    v96 = a1 + 24;
                    v95 = a1;
LABEL_148:
                    if (*(v95 + 23) < 0)
                    {
                      operator delete(*v95);
                    }

                    *v95 = v86;
                    *(v95 + 15) = *&v181[7];
                    *(v95 + 8) = *v181;
                    *(v95 + 23) = v87;
                    *(v96 + 32) = v175;
                    *v96 = v163;
                    *(v96 + 16) = v169;
                    *(v95 + 60) = v88;
                    *(v95 + 64) = v89;
                    a2 = v85;
                  }

                  v79 = v84 + 18;
                  v82 += 72;
                  v83 = v84;
                }

                while (v84 + 18 != a2);
              }
            }

            else if (!v81)
            {
              do
              {
                v143 = v79;
                if (*(a1 + 132) < *(a1 + 60))
                {
                  v144 = a2;
                  v145 = *v79;
                  *v184 = *(a1 + 80);
                  *&v184[7] = *(a1 + 87);
                  v146 = *(a1 + 95);
                  *(v79 + 1) = 0;
                  *(v79 + 2) = 0;
                  *v79 = 0;
                  v166 = *(a1 + 96);
                  v172 = *(a1 + 112);
                  v177 = *(a1 + 128);
                  v147 = *(a1 + 132);
                  v148 = *(a1 + 136);
                  v149 = v79;
                  do
                  {
                    v150 = v149;
                    if (*(v149 + 23) < 0)
                    {
                      operator delete(*v149);
                    }

                    *v149 = *(v149 - 18);
                    v151 = *(v149 - 2);
                    *(v149 + 6) = *(v149 - 3);
                    *(v149 + 2) = *(v149 - 7);
                    *(v149 - 72) = 0;
                    v149 -= 18;
                    *(v150 - 49) = 0;
                    *(v150 + 10) = v151;
                    v152 = *(v150 - 21);
                    *(v150 + 49) = *(v150 - 23);
                  }

                  while (v147 < v152);
                  if (*(v150 - 49) < 0)
                  {
                    operator delete(*v149);
                  }

                  v153 = v150 - 12;
                  *v149 = v145;
                  *(v150 - 57) = *&v184[7];
                  *(v150 - 8) = *v184;
                  *(v150 - 49) = v146;
                  *(v153 + 8) = v177;
                  *v153 = v166;
                  *(v153 + 1) = v172;
                  *(v150 - 3) = v147;
                  *(v150 - 8) = v148;
                  a2 = v144;
                }

                v79 = (v143 + 72);
                a1 = v143;
              }

              while ((v143 + 72) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v156 = a2;
              v97 = v10 >> 1;
              v98 = v10 >> 1;
              do
              {
                v99 = v98;
                if (v97 >= v98)
                {
                  v100 = (2 * v98) | 1;
                  v101 = a1 + 72 * v100;
                  if (2 * v99 + 2 < v9 && *(v101 + 60) < *(v101 + 132))
                  {
                    v101 += 72;
                    v100 = 2 * v99 + 2;
                  }

                  v102 = a1 + 72 * v99;
                  v103 = *(v102 + 60);
                  if (*(v101 + 60) >= v103)
                  {
                    v160 = *v102;
                    *&v182[7] = *(v102 + 15);
                    *v182 = *(v102 + 8);
                    v158 = *(v102 + 23);
                    *v102 = 0;
                    *(v102 + 8) = 0;
                    *(v102 + 16) = 0;
                    v176 = *(v102 + 56);
                    v164 = *(v102 + 24);
                    v170 = *(v102 + 40);
                    v104 = *(v102 + 64);
                    do
                    {
                      v105 = v102;
                      v102 = v101;
                      if (*(v105 + 23) < 0)
                      {
                        operator delete(*v105);
                      }

                      v106 = *v102;
                      *(v105 + 16) = *(v102 + 16);
                      *v105 = v106;
                      *(v102 + 23) = 0;
                      *v102 = 0;
                      v107 = *(v102 + 24);
                      v108 = *(v102 + 40);
                      *(v105 + 49) = *(v102 + 49);
                      *(v105 + 40) = v108;
                      *(v105 + 24) = v107;
                      if (v97 < v100)
                      {
                        break;
                      }

                      v109 = 2 * v100;
                      v100 = (2 * v100) | 1;
                      v101 = a1 + 72 * v100;
                      v110 = v109 + 2;
                      if (v110 < v9 && *(v101 + 60) < *(v101 + 132))
                      {
                        v101 += 72;
                        v100 = v110;
                      }
                    }

                    while (*(v101 + 60) >= v103);
                    if (*(v102 + 23) < 0)
                    {
                      operator delete(*v102);
                    }

                    *v102 = v160;
                    *(v102 + 15) = *&v182[7];
                    *(v102 + 8) = *v182;
                    *(v102 + 23) = v158;
                    *(v102 + 24) = v164;
                    *(v102 + 40) = v170;
                    *(v102 + 56) = v176;
                    *(v102 + 60) = v103;
                    *(v102 + 64) = v104;
                  }
                }

                v98 = v99 - 1;
              }

              while (v99);
              v111 = 0x8E38E38E38E38E39 * (v8 >> 3);
              v112 = v156;
              do
              {
                if (v111 >= 2)
                {
                  v113 = 0;
                  v114 = *a1;
                  *v178 = *(a1 + 8);
                  *&v178[7] = *(a1 + 15);
                  v115 = *(a1 + 23);
                  *(a1 + 8) = 0;
                  *(a1 + 16) = 0;
                  *a1 = 0;
                  v165 = *(a1 + 24);
                  *v171 = *(a1 + 40);
                  *&v171[9] = *(a1 + 49);
                  v116 = a1;
                  do
                  {
                    v117 = v116 + 72 * v113;
                    v118 = v117 + 72;
                    if (2 * v113 + 2 >= v111)
                    {
                      v113 = (2 * v113) | 1;
                    }

                    else
                    {
                      v119 = *(v117 + 132);
                      v120 = *(v117 + 204);
                      v121 = v117 + 144;
                      if (v119 >= v120)
                      {
                        v113 = (2 * v113) | 1;
                      }

                      else
                      {
                        v118 = v121;
                        v113 = 2 * v113 + 2;
                      }
                    }

                    if (*(v116 + 23) < 0)
                    {
                      operator delete(*v116);
                    }

                    v122 = *v118;
                    *(v116 + 16) = *(v118 + 16);
                    *v116 = v122;
                    *(v118 + 23) = 0;
                    *v118 = 0;
                    v123 = *(v118 + 24);
                    v124 = *(v118 + 40);
                    *(v116 + 49) = *(v118 + 49);
                    *(v116 + 40) = v124;
                    *(v116 + 24) = v123;
                    v116 = v118;
                  }

                  while (v113 <= ((v111 - 2) >> 1));
                  v125 = (v112 - 18);
                  v126 = *(v118 + 23);
                  if (v118 == v112 - 18)
                  {
                    if (v126 < 0)
                    {
                      operator delete(*v118);
                    }

                    *v118 = v114;
                    *(v118 + 15) = *&v178[7];
                    *(v118 + 8) = *v178;
                    *(v118 + 23) = v115;
                    *(v118 + 24) = v165;
                    *(v118 + 40) = *v171;
                    *(v118 + 49) = *&v171[9];
                  }

                  else
                  {
                    if (v126 < 0)
                    {
                      operator delete(*v118);
                    }

                    v127 = *v125;
                    *(v118 + 16) = *(v112 - 7);
                    *v118 = v127;
                    *(v112 - 49) = 0;
                    *(v112 - 72) = 0;
                    v128 = *(v112 - 3);
                    v129 = *(v112 - 2);
                    *(v118 + 49) = *(v112 - 23);
                    *(v118 + 40) = v129;
                    *(v118 + 24) = v128;
                    if (*(v112 - 49) < 0)
                    {
                      operator delete(*v125);
                    }

                    v130 = v112 - 12;
                    *(v112 - 9) = v114;
                    *(v112 - 57) = *&v178[7];
                    *(v112 - 8) = *v178;
                    *(v112 - 49) = v115;
                    *(v130 + 25) = *&v171[9];
                    *v130 = v165;
                    *(v130 + 1) = *v171;
                    v131 = v118 + 72 - a1;
                    if (v131 >= 73)
                    {
                      v132 = (-2 - 0x71C71C71C71C71C7 * (v131 >> 3)) >> 1;
                      v133 = a1 + 72 * v132;
                      v134 = *(v118 + 60);
                      if (*(v133 + 60) < v134)
                      {
                        v135 = *v118;
                        *v187 = *(v118 + 8);
                        *&v187[7] = *(v118 + 15);
                        v136 = *(v118 + 23);
                        *(v118 + 8) = 0;
                        *(v118 + 16) = 0;
                        *v118 = 0;
                        v186 = *(v118 + 56);
                        v183 = *(v118 + 24);
                        v185 = *(v118 + 40);
                        v137 = *(v118 + 64);
                        do
                        {
                          v138 = v133;
                          if (*(v118 + 23) < 0)
                          {
                            operator delete(*v118);
                          }

                          v139 = *v138;
                          *(v118 + 16) = *(v138 + 16);
                          *v118 = v139;
                          *(v138 + 23) = 0;
                          *v138 = 0;
                          v140 = *(v138 + 24);
                          v141 = *(v138 + 40);
                          *(v118 + 49) = *(v138 + 49);
                          *(v118 + 40) = v141;
                          *(v118 + 24) = v140;
                          if (!v132)
                          {
                            break;
                          }

                          v132 = (v132 - 1) >> 1;
                          v133 = a1 + 72 * v132;
                          v118 = v138;
                        }

                        while (*(v133 + 60) < v134);
                        if (*(v138 + 23) < 0)
                        {
                          operator delete(*v138);
                        }

                        *v138 = v135;
                        *(v138 + 15) = *&v187[7];
                        *(v138 + 8) = *v187;
                        *(v138 + 23) = v136;
                        *(v138 + 24) = v183;
                        *(v138 + 40) = v185;
                        *(v138 + 56) = v186;
                        *(v138 + 60) = v134;
                        *(v138 + 64) = v137;
                      }
                    }
                  }
                }

                v112 -= 18;
              }

              while (v111-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 72 * (v9 >> 1);
          v13 = *(a2 - 3);
          if (v8 >= 0x2401)
          {
            v14 = *(v12 + 60);
            if (v14 >= *(a1 + 60))
            {
              if (v13 >= v14 || (sub_2723694C0(v12, v157), *(v12 + 60) >= *(a1 + 60)))
              {
LABEL_26:
                v20 = a1 + 72 * v11;
                v21 = v20 - 72;
                v22 = *(v20 - 12);
                v23 = *(a2 - 21);
                if (v22 >= *(a1 + 132))
                {
                  if (v23 >= v22 || (sub_2723694C0((v20 - 72), v155), *(v21 + 60) >= *(a1 + 132)))
                  {
LABEL_39:
                    v26 = a1 + 72 * v11;
                    v27 = v26 + 72;
                    v28 = *(v26 + 132);
                    v29 = *(a2 - 39);
                    if (v28 >= *(a1 + 204))
                    {
                      if (v29 >= v28 || (sub_2723694C0((v26 + 72), v154), *(v27 + 60) >= *(a1 + 204)))
                      {
LABEL_48:
                        v32 = *(v12 + 60);
                        v33 = *(v27 + 60);
                        if (v32 >= *(v21 + 60))
                        {
                          if (v33 >= v32)
                          {
                            goto LABEL_57;
                          }

                          sub_2723694C0(v12, v27);
                          if (*(v12 + 60) >= *(v21 + 60))
                          {
                            goto LABEL_57;
                          }

                          v34 = v21;
                          v35 = v12;
                        }

                        else
                        {
                          v34 = v21;
                          if (v33 >= v32)
                          {
                            sub_2723694C0(v21, v12);
                            if (*(v27 + 60) >= *(v12 + 60))
                            {
LABEL_57:
                              sub_2723694C0(a1, v12);
                              goto LABEL_58;
                            }

                            v34 = v12;
                          }

                          v35 = v27;
                        }

                        sub_2723694C0(v34, v35);
                        goto LABEL_57;
                      }

                      v30 = (a1 + 144);
                      v31 = v27;
                    }

                    else
                    {
                      v30 = (a1 + 144);
                      if (v29 >= v28)
                      {
                        sub_2723694C0(v30, v26 + 72);
                        if (*(a2 - 39) >= *(v27 + 60))
                        {
                          goto LABEL_48;
                        }

                        v30 = v27;
                      }

                      v31 = v154;
                    }

                    sub_2723694C0(v30, v31);
                    goto LABEL_48;
                  }

                  v24 = (a1 + 72);
                  v25 = v21;
                }

                else
                {
                  v24 = (a1 + 72);
                  if (v23 >= v22)
                  {
                    sub_2723694C0(v24, v20 - 72);
                    if (*(a2 - 21) >= *(v21 + 60))
                    {
                      goto LABEL_39;
                    }

                    v24 = v21;
                  }

                  v25 = v155;
                }

                sub_2723694C0(v24, v25);
                goto LABEL_39;
              }

              v15 = a1;
              v16 = v12;
            }

            else
            {
              v15 = a1;
              if (v13 >= v14)
              {
                sub_2723694C0(a1, v12);
                if (*(a2 - 3) >= *(v12 + 60))
                {
                  goto LABEL_26;
                }

                v15 = v12;
              }

              v16 = v157;
            }

            sub_2723694C0(v15, v16);
            goto LABEL_26;
          }

          v17 = *(a1 + 60);
          if (v17 < *(v12 + 60))
          {
            v18 = v12;
            if (v13 >= v17)
            {
              sub_2723694C0(v12, a1);
              if (*(a2 - 3) >= *(a1 + 60))
              {
                goto LABEL_58;
              }

              v18 = a1;
            }

            v19 = v157;
            goto LABEL_34;
          }

          if (v13 < v17)
          {
            sub_2723694C0(a1, v157);
            if (*(a1 + 60) < *(v12 + 60))
            {
              v18 = v12;
              v19 = a1;
LABEL_34:
              sub_2723694C0(v18, v19);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v36 = *(a1 + 60);
          if (*(a1 - 12) < v36)
          {
            goto LABEL_61;
          }

          v57 = *a1;
          *v180 = *(a1 + 8);
          *&v180[7] = *(a1 + 15);
          v58 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v162 = *(a1 + 24);
          v168 = *(a1 + 40);
          v174 = *(a1 + 56);
          if (v36 >= *(a2 - 3))
          {
            v61 = a1 + 72;
            do
            {
              v7 = v61;
              if (v61 >= a2)
              {
                break;
              }

              v62 = *(v61 + 60);
              v61 += 72;
            }

            while (v36 >= v62);
          }

          else
          {
            v59 = a1;
            do
            {
              v7 = v59 + 72;
              v60 = *(v59 + 132);
              v59 += 72;
            }

            while (v36 >= v60);
          }

          v63 = a2;
          if (v7 < a2)
          {
            v64 = a2;
            do
            {
              v63 = v64 - 18;
              v65 = *(v64 - 3);
              v64 -= 18;
            }

            while (v36 < v65);
          }

          v66 = *(a1 + 64);
          while (v7 < v63)
          {
            sub_2723694C0(v7, v63);
            do
            {
              v67 = *(v7 + 132);
              v7 += 72;
            }

            while (v36 >= v67);
            do
            {
              v68 = *(v63 - 3);
              v63 -= 18;
            }

            while (v36 < v68);
          }

          v69 = (v7 - 72);
          if (v7 - 72 != a1)
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v70 = *v69;
            *(a1 + 16) = *(v7 - 56);
            *a1 = v70;
            *(v7 - 49) = 0;
            *(v7 - 72) = 0;
            v71 = *(v7 - 48);
            v72 = *(v7 - 32);
            *(a1 + 49) = *(v7 - 23);
            *(a1 + 40) = v72;
            *(a1 + 24) = v71;
          }

          if (*(v7 - 49) < 0)
          {
            operator delete(*v69);
          }

          a4 = 0;
          *(v7 - 72) = v57;
          *(v7 - 57) = *&v180[7];
          *(v7 - 64) = *v180;
          *(v7 - 49) = v58;
          *(v7 - 16) = v174;
          *(v7 - 48) = v162;
          *(v7 - 32) = v168;
          *(v7 - 12) = v36;
          *(v7 - 8) = v66;
        }

        v36 = *(a1 + 60);
LABEL_61:
        v37 = *a1;
        *v179 = *(a1 + 8);
        *&v179[7] = *(a1 + 15);
        v38 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v173 = *(a1 + 56);
        v161 = *(a1 + 24);
        v167 = *(a1 + 40);
        v39 = a1;
        v40 = *(a1 + 64);
        do
        {
          v41 = v39;
          v39 += 72;
        }

        while (*(v41 + 132) < v36);
        v42 = a2;
        v43 = a2;
        if (v41 == a1)
        {
          v46 = a2;
          while (v39 < v46)
          {
            v44 = v46 - 18;
            v47 = *(v46 - 3);
            v46 -= 18;
            if (v47 < v36)
            {
              goto LABEL_71;
            }
          }

          v44 = v46;
        }

        else
        {
          do
          {
            v44 = v43 - 18;
            v45 = *(v43 - 3);
            v43 -= 18;
          }

          while (v45 >= v36);
        }

LABEL_71:
        if (v39 >= v44)
        {
          v7 = v39;
        }

        else
        {
          v48 = v44;
          v7 = v39;
          do
          {
            sub_2723694C0(v7, v48);
            do
            {
              v49 = *(v7 + 132);
              v7 += 72;
            }

            while (v49 < v36);
            do
            {
              v50 = *(v48 - 12);
              v48 -= 72;
            }

            while (v50 >= v36);
          }

          while (v7 < v48);
        }

        v51 = (v7 - 72);
        if (v7 - 72 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v52 = *v51;
          *(a1 + 16) = *(v7 - 56);
          *a1 = v52;
          *(v7 - 49) = 0;
          *(v7 - 72) = 0;
          v53 = *(v7 - 48);
          v54 = *(v7 - 32);
          *(a1 + 49) = *(v7 - 23);
          *(a1 + 40) = v54;
          *(a1 + 24) = v53;
        }

        if (*(v7 - 49) < 0)
        {
          operator delete(*v51);
        }

        *(v7 - 72) = v37;
        *(v7 - 57) = *&v179[7];
        *(v7 - 64) = *v179;
        *(v7 - 49) = v38;
        *(v7 - 16) = v173;
        *(v7 - 48) = v161;
        *(v7 - 32) = v167;
        *(v7 - 12) = v36;
        *(v7 - 8) = v40;
        v55 = v39 >= v44;
        a2 = v42;
        if (v55)
        {
          break;
        }

LABEL_89:
        sub_272370FCC(a1, (v7 - 72), a3, a4 & 1);
        a4 = 0;
      }

      v56 = sub_27237204C(a1, v7 - 72);
      if (sub_27237204C(v7, v42))
      {
        break;
      }

      if (!v56)
      {
        goto LABEL_89;
      }
    }

    a2 = (v7 - 72);
    if (!v56)
    {
      continue;
    }

    break;
  }
}

double sub_272371F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 60);
  v9 = *(a3 + 60);
  if (v8 >= *(a1 + 60))
  {
    if (v9 < v8)
    {
      v10 = sub_2723694C0(a2, a3);
      if (*(a2 + 60) < *(v7 + 60))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      v10 = sub_2723694C0(a1, v11);
      goto LABEL_10;
    }

    v10 = sub_2723694C0(a1, a2);
    if (*(a3 + 60) < *(a2 + 60))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v10.n128_u32[0] = *(a4 + 60);
  if (v10.n128_f32[0] < *(a3 + 60))
  {
    v10 = sub_2723694C0(a3, a4);
    v10.n128_u32[0] = *(a3 + 60);
    if (v10.n128_f32[0] < *(a2 + 60))
    {
      v10 = sub_2723694C0(a2, a3);
      v10.n128_u32[0] = *(a2 + 60);
      if (v10.n128_f32[0] < *(v7 + 60))
      {

        v10.n128_u64[0] = sub_2723694C0(v7, a2).n128_u64[0];
      }
    }
  }

  return v10.n128_f64[0];
}

BOOL sub_27237204C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 132);
        v9 = *(a2 - 12);
        if (v8 < *(a1 + 60))
        {
          if (v9 >= v8)
          {
            sub_2723694C0(a1, a1 + 72);
            if (*(a2 - 12) >= *(v3 + 132))
            {
              return 1;
            }

            a1 = v3 + 72;
          }

          v5 = a2 - 72;
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 72);
        v7 = a2 - 72;
        break;
      case 4:
        sub_272371F34(a1, a1 + 72, a1 + 144, a2 - 72);
        return 1;
      case 5:
        sub_272371F34(a1, a1 + 72, a1 + 144, a1 + 216);
        if (*(a2 - 12) >= *(v3 + 276))
        {
          return 1;
        }

        sub_2723694C0((v3 + 216), a2 - 72);
        if (*(v3 + 276) >= *(v3 + 204))
        {
          return 1;
        }

        sub_2723694C0((v3 + 144), v3 + 216);
        if (*(v3 + 204) >= *(v3 + 132))
        {
          return 1;
        }

        v6 = (v3 + 72);
        v7 = v3 + 144;
        break;
      default:
        goto LABEL_16;
    }

    sub_2723694C0(v6, v7);
    if (*(v3 + 132) < *(v3 + 60))
    {
      v5 = v3 + 72;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 12) < *(a1 + 60))
    {
      v5 = a2 - 72;
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_2723694C0(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 144;
  v11 = *(a1 + 132);
  v12 = *(a1 + 204);
  if (v11 < *(a1 + 60))
  {
    if (v12 >= v11)
    {
      sub_2723694C0(a1, a1 + 72);
      if (*(v3 + 204) >= *(v3 + 132))
      {
        goto LABEL_36;
      }

      a1 = v3 + 72;
    }

    v13 = v3 + 144;
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    sub_2723694C0((a1 + 72), a1 + 144);
    if (*(v3 + 132) < *(v3 + 60))
    {
      v13 = v3 + 72;
      a1 = v3;
LABEL_35:
      sub_2723694C0(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 216;
  if (v3 + 216 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 60);
    if (v17 < *(v10 + 60))
    {
      v18 = *v14;
      *v32 = *(v14 + 8);
      *&v32[7] = *(v14 + 15);
      v19 = *(v14 + 23);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v29 = *(v14 + 24);
      v30 = *(v14 + 40);
      v31 = *(v14 + 56);
      v20 = v15;
      v21 = *(v14 + 64);
      while (1)
      {
        v22 = v3 + v20;
        if (*(v3 + v20 + 239) < 0)
        {
          operator delete(*(v22 + 216));
        }

        *(v22 + 216) = *(v22 + 144);
        *(v22 + 232) = *(v22 + 160);
        *(v22 + 167) = 0;
        *(v22 + 144) = 0;
        v23 = *(v22 + 184);
        *(v22 + 240) = *(v22 + 168);
        *(v22 + 256) = v23;
        *(v22 + 265) = *(v22 + 193);
        if (v20 == -144)
        {
          break;
        }

        v24 = v3 + v20;
        v25 = *(v3 + v20 + 132);
        v20 -= 72;
        if (v17 >= v25)
        {
          v26 = v3 + v20 + 216;
          v27 = v24 + 168;
          goto LABEL_46;
        }
      }

      v27 = v3 + 24;
      v26 = v3;
LABEL_46:
      if (*(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v18;
      *(v26 + 8) = *v32;
      *(v26 + 15) = *&v32[7];
      *(v26 + 23) = v19;
      *v27 = v29;
      *(v27 + 16) = v30;
      *(v27 + 32) = v31;
      *(v26 + 60) = v17;
      ++v16;
      *(v26 + 64) = v21;
      if (v16 == 8)
      {
        return v14 + 72 == a2;
      }
    }

    v10 = v14;
    v15 += 72;
    v14 += 72;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_2723728D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_272372928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2721E4000, v9, OS_LOG_TYPE_FAULT, "Checking keyword failure in VATKeywordSpotter", buf, 2u);
    }

    exit(-1);
  }

  [WeakRetained _acousticCallback:v10 rows:a3 cols:a4];
}

void sub_272372E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __p = &a10;
  sub_27236A158(&__p);
  __p = &a32;
  sub_27236A158(&__p);

  _Unwind_Resume(a1);
}

void sub_2723732A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VATKeywordSpotter;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t voiceactions::GetResultSize(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = *a1;
    do
    {
      v5 = *(v4 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v4 + 8);
      }

      LODWORD(v3) = v3 + v5;
      v4 += 24;
    }

    while (v4 != v2);
    v3 = v3;
  }

  return v3 + (0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3) - 1) * a2;
}

void voiceactions::StringJoin(std::string *a1@<X0>, unsigned __int8 a2@<W1>, std::string *a3@<X8>)
{
  v4 = 1;
  LOWORD(__p) = a2;
  voiceactions::StringJoin(a1, &__p, a3);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_2723735F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringSplit(std::string *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v3[23] = 1;
  v3[0] = a2;
  v3[1] = 0;
  voiceactions::StringSplit(a1, v3, a3);
}

id _VATLoggingFacility(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2723738D8;
  block[3] = &unk_279E407A8;
  block[4] = a1;
  if (qword_2808938E8 != -1)
  {
    dispatch_once(&qword_2808938E8, block);
  }

  v1 = qword_2808938E0;

  return v1;
}

uint64_t sub_2723738D8(uint64_t a1)
{
  qword_2808938E0 = os_log_create("com.apple.voiceactions", *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

id sub_272373A4C(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 stringByDeletingLastPathComponent];
  v8 = [v7 stringByAppendingPathComponent:@"ncs"];
  v9 = [v8 stringByAppendingPathComponent:@"en_US_napg.json"];
  v10 = [v8 stringByAppendingPathComponent:@"vocdelta.voc"];
  v11 = [v8 stringByAppendingPathComponent:@"pg.voc"];
  v12 = [v8 stringByAppendingPathComponent:@"mrec.psh"];
  LOBYTE(v15) = a3;
  v13 = [objc_alloc(MEMORY[0x277D07298]) initWithConfiguration:v6 language:v5 overrides:0 textNormalizationModelRoot:0 sdapiOverrides:v9 emptyVoc:v10 pgVoc:v11 paramsetHolder:v12 isJit:v15];

  return v13;
}

id sub_272374688()
{
  if (qword_2808938F8 != -1)
  {
    dispatch_once(&qword_2808938F8, &unk_288190708);
  }

  v1 = qword_2808938F0;

  return v1;
}

void sub_2723746DC(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v4 = a3;
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v43 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v43)
  {
    v41 = *v60;
    do
    {
      v5 = 0;
      do
      {
        if (*v60 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v5;
        v6 = *(*(&v59 + 1) + 8 * v5);
        v49 = [MEMORY[0x277CBEB18] array];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v50 = v6;
        v7 = [v50 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v7)
        {
          v8 = v7;
          v52 = *v56;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v56 != v52)
              {
                objc_enumerationMutation(v50);
              }

              v10 = *(*(&v55 + 1) + 8 * i);
              v11 = [v10 objectForKeyedSubscript:@"orthography"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v37 = sub_272374688();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v38 = [v10 description];
                  v39 = [v38 UTF8String];
                  *buf = 136315138;
                  v64 = v39;
                  _os_log_error_impl(&dword_2721E4000, v37, OS_LOG_TYPE_ERROR, "Missing orthograpy for entry: %s\n", buf, 0xCu);
                }

                exit(1);
              }

              v12 = [v10 objectForKeyedSubscript:@"pronunciations"];
              v13 = sub_27237511C(v11, *(a1 + 32), v12);
              v14 = [v10 objectForKeyedSubscript:@"frequency"];
              v15 = v14;
              v16 = &unk_28819E788;
              if (v14)
              {
                v16 = v14;
              }

              v17 = v16;

              v18 = [v10 objectForKeyedSubscript:@"tag"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v18;
                v20 = @"string";
              }

              else
              {
                v19 = v10;
                v20 = @"tag";
              }

              v21 = [v19 objectForKeyedSubscript:v20];
              if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v21 length])
              {
                if (*(a1 + 40) != 1)
                {
                  v22 = sub_272374688();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [v10 description];
                    v24 = [v23 UTF8String];
                    *buf = 136315138;
                    v64 = v24;
                    _os_log_error_impl(&dword_2721E4000, v22, OS_LOG_TYPE_ERROR, "Skipping entry without word tag: %s\n", buf, 0xCu);
                  }

                  goto LABEL_26;
                }

                v21 = @"\\contact-first";
              }

              if ([(__CFString *)v21 rangeOfString:@"phonetic"]== 0x7FFFFFFFFFFFFFFFLL)
              {
                v22 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v11 pronunciations:v13 tagName:v21 frequency:{objc_msgSend(v17, "integerValue")}];
                [v49 addObject:v22];
LABEL_26:

                goto LABEL_28;
              }

              [v48 setObject:v11 forKeyedSubscript:v21];
LABEL_28:
            }

            v8 = [v50 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v8);
        }

        v25 = 0x277D07000uLL;
        v26 = v49;
        if ([v48 count] && objc_msgSend(v49, "count"))
        {
          v27 = 0;
          do
          {
            v28 = [v26 objectAtIndexedSubscript:v27];
            v29 = [v28 tagName];
            v47 = [v29 stringByAppendingString:@"-phonetic"];

            v46 = objc_alloc(*(v25 + 680));
            v53 = [v26 objectAtIndexedSubscript:v27];
            v45 = [v53 orthography];
            v51 = [v26 objectAtIndexedSubscript:v27];
            v30 = [v51 pronunciations];
            v31 = [v26 objectAtIndexedSubscript:v27];
            v32 = [v31 tagName];
            v33 = [v26 objectAtIndexedSubscript:v27];
            v34 = [v33 frequency];
            v35 = [v48 objectForKeyedSubscript:v47];
            v36 = [v46 initWithOrthography:v45 pronunciations:v30 tagName:v32 frequency:v34 phoneticOrthography:v35];
            [v49 setObject:v36 atIndexedSubscript:v27];

            v26 = v49;
            v25 = 0x277D07000;

            ++v27;
          }

          while ([v49 count] > v27);
        }

        [*(a1 + 32) addWordWithParts:v26 templateName:v42];

        v5 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v43);
  }
}

void sub_272374D38(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = a3;
  v28 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v28)
  {
    v26 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v31 = [MEMORY[0x277CBEB18] array];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v30 = v5;
        v6 = [v30 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v34;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v34 != v8)
              {
                objc_enumerationMutation(v30);
              }

              v10 = *(*(&v33 + 1) + 8 * i);
              v11 = [v10 objectForKeyedSubscript:@"orth"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v22 = sub_272374688();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v23 = [v10 description];
                  v24 = [v23 UTF8String];
                  *buf = 136315138;
                  v42 = v24;
                  _os_log_error_impl(&dword_2721E4000, v22, OS_LOG_TYPE_ERROR, "Missing orthograpy for entry: %s\n", buf, 0xCu);
                }

                exit(1);
              }

              v12 = [v10 objectForKeyedSubscript:@"prons"];
              v13 = sub_27237511C(v11, *(a1 + 32), v12);
              v14 = [v10 objectForKeyedSubscript:@"freq"];
              v15 = v14;
              v16 = &unk_28819E788;
              if (v14)
              {
                v16 = v14;
              }

              v17 = v16;

              v18 = [v10 objectForKeyedSubscript:@"tag"];
              if ([v18 length])
              {
                v19 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v11 pronunciations:v13 tagName:v18 frequency:{objc_msgSend(v17, "integerValue")}];
                [v31 addObject:v19];
              }

              else
              {
                v19 = sub_272374688();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v20 = [v10 description];
                  v21 = [v20 UTF8String];
                  *buf = 136315138;
                  v42 = v21;
                  _os_log_error_impl(&dword_2721E4000, v19, OS_LOG_TYPE_ERROR, "Skipping entry without word tag: %s\n", buf, 0xCu);
                }
              }
            }

            v7 = [v30 countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v7);
        }

        [*(a1 + 32) addWordWithParts:v31 templateName:v27];
        v4 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v28);
  }
}

id sub_27237511C(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = sub_272374688();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = [v13 description];
              v18 = [v17 UTF8String];
              *buf = 136315138;
              v24 = v18;
              _os_log_error_impl(&dword_2721E4000, v16, OS_LOG_TYPE_ERROR, "Invalid pron for entry: %s\n", buf, 0xCu);
            }

            exit(1);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CBEB98] setWithArray:{v8, v19}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_272375308()
{
  qword_2808938F0 = os_log_create("com.apple.mind.mi.namex", "VoiceActions");

  return MEMORY[0x2821F96F8]();
}

void sub_272375B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D072A8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = qword_280893910;
  v11 = v5;
  v16 = v11;
  if (v10 == -1)
  {
    v12 = v11;
  }

  else
  {
    dispatch_once(&qword_280893910, &unk_288190728);
    v12 = v16;
  }

  v13 = [qword_280893908 objectForKeyedSubscript:v12];

  v14 = [v13 integerValue];
  v15 = [v8 initWithOrthography:v7 pronunciations:v9 tag:v14];

  [*(a1 + 32) addObject:v15];
}

void sub_272375C34()
{
  v0 = qword_280893908;
  qword_280893908 = &unk_28819E848;
}

id sub_272375E10(void *a1, void *a2)
{
  v3 = a1;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 stringByAppendingPathComponent:@"/AttentionDetection"];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a2];

    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v11 = [v6 stringByAppendingPathComponent:@"SpeechProfile"];
      v12 = [v11 stringByAppendingString:@"_"];
      v13 = [v12 stringByAppendingString:v10];

      v3 = v10;
    }
  }

  else if (a2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_2723765A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL sub_2723765BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained != 0;

  return v2;
}

void sub_2723765F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2723766A8;
  block[3] = &unk_279E40848;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_2723766A8(uint64_t a1)
{
  if (qword_280893900 && [qword_280893900 isEqual:*(a1 + 32)])
  {
    return printf("Skipping profile update for %s because user data has not actually changed", [*(*(a1 + 40) + 24) UTF8String]);
  }

  objc_storeStrong(&qword_280893900, *(a1 + 32));
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 systemUptime];
  v5 = v4;

  [*(a1 + 40) adaptUserProfileWithUserData:*(a1 + 32)];
  v6 = [MEMORY[0x277CCAC38] processInfo];
  [v6 systemUptime];
  v8 = v7 - v5;

  printf("Contacts added to profile in %.2fms\n", v8 * 1000.0);
  v9 = *(*(a1 + 48) + 16);

  return v9();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}